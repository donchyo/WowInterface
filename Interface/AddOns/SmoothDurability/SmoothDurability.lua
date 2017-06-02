-------------------
-- Smooth Durability is based upon DuraTek and Tekability by Tekkub
-------------------

local L = LibStub("AceLocale-3.0"):GetLocale("SmoothDurability")

-- local values set when moving the frame around etc
local DURABILITY_POINT = "TOPLEFT"
local DURABILITY_RFRAME = UIParent
local DURABILITY_RPOINT = "BOTTOMLEFT"
local DURABILITY_X = nil
local DURABILITY_Y = nil
local oldPoint, oldFrame, oldRPoint, oldX, oldY = nil, nil, nil, nil, nil
local items = {
	{name = INVTYPE_HEAD, slot = "HeadSlot", texture = "DurabilityHead"},
	{name = INVTYPE_SHOULDER, slot = "ShoulderSlot", texture = "DurabilityShoulders"},
	{name = INVTYPE_CHEST, slot = "ChestSlot", texture = "DurabilityChest"},
	{name = INVTYPE_WAIST, slot = "WaistSlot", texture = "DurabilityWaist"},
	{name = INVTYPE_LEGS, slot = "LegsSlot", texture = "DurabilityLegs"},
	{name = INVTYPE_FEET, slot = "FeetSlot", texture = "DurabilityFeet"},
	{name = INVTYPE_WRIST, slot = "WristSlot", texture = "DurabilityWrists"},
	{name = INVTYPE_HAND, slot = "HandsSlot", texture = "DurabilityHands"},
	{name = INVTYPE_WEAPONMAINHAND, slot = "MainHandSlot", texture = "DurabilityWeapon", separate = true},
	{name = INVTYPE_WEAPONOFFHAND, slot = "SecondaryHandSlot", separate = true}, -- this one has no texture, because there are 2 diff ones, it's handled separetely
	-- {name = INVTYPE_RANGED, slot = "RangedSlot", texture = "DurabilityRanged", separate = true},
}
local db
local defaults = {
	profile = {
		averageThreshold = .65,
		itemThreshold = .65,
		characterThreshold = 1,
		autoRepair = true,
		locked = true,
		hideFromBlizz = false,
	}
}

local DURASTRING = string.gsub(DURABILITY_TEMPLATE, "%%[^%s]+", "(.+)")
local tooltip = CreateFrame("GameTooltip")
tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")

local characterDurability = {}

local function ColorGradient(perc, ...)
	if perc >= 1 then
		local r, g, b = select(select('#', ...) - 2, ...)
		return r, g, b
	elseif perc <= 0 then
		local r, g, b = ...
		return r, g, b
	end

	local num = select('#', ...) / 3

	local segment, relperc = math.modf(perc*(num-1))
	local r1, g1, b1, r2, g2, b2 = select((segment*3)+1, ...)

	return r1 + (r2-r1)*relperc, g1 + (g2-g1)*relperc, b1 + (b2-b1)*relperc
end

local function rgb2hex( r, g, b )
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
end

local function CostString( cost )
	local gold = abs(cost / 10000)
	local silver = abs(mod(cost / 100, 100))
	local copper = abs(mod(cost, 100))
	
	if cost >= 10000 then
		return string.format( "|cffffffff%d|r|cffffd700g|r |cffffffff%d|r|cffc7c7cfs|r |cffffffff%d|r|cffeda55fc|r", gold, silver, copper)
	elseif cost >= 100 then
		return string.format( "|cffffffff%d|r|cffc7c7cfs|r |cffffffff%d|r|cffeda55fc|r", silver, copper)	
	else 
		return string.format("|cffffffff%d|r|cffeda55fc|r", copper )
	end
end

local DurabilityFrame = DurabilityFrame

------------
-- actual addon
------------

local Durability = LibStub("AceAddon-3.0"):NewAddon( "SmoothDurability", "AceHook-3.0", "AceConsole-3.0", "AceEvent-3.0", "AceBucket-3.0" )

local function giveOptions()
	local options = {
		type = "group",
		name = L["Smooth Durability"],
		get = function( k ) return db[k.arg] end,
		set = function( k, v ) db[k.arg] = v; UIParent_ManageFramePositions(); Durability:Update(); end,
		args = {
			autoRepair = {
				order = 1,
				name = L["Automatically Repair"],
				desc = L["Automatically repair at merchants if possible. Will prefer guildbank over your own money."],
				type = "toggle",
				arg = "autoRepair",
			},
			characterThreshold = {
				order = 2,
				name = L["Paper Doll Threshold"],
				desc = L["Show durability on an item in the paper doll frame when that item is below this threshold."],
				type = "range", isPercent = true,
				min = 0, max = 1, step = 0.05,
				arg = "characterThreshold",
			},
			armoredman = {
				order = 4,
				type = "group",
				inline = true,
				name = L["Armored Man"],
				args = {
					averageThreshold = {
						order = 1,
						name = L["Average Durability Threshold"],
						desc = L["Show the armored man when your average durability is below this threshold."],
						type = "range", isPercent = true,
						min = 0, max = 1, step = 0.05,
						arg = "averageThreshold",
					},
					itemThreshold = {
						order = 2,
						name = L["Item Durability Threshold"],
						desc = L["Show the armored man when one item is below this threshold, color items below this threshold."],
						type = "range", isPercent = true,			
						min = 0, max = 1, step = 0.05,					
						arg = "itemThreshold",
					},
					divider = {
						name = "",
						order = 3,
						type = "header",
					},
					locked = {
						order = 4,
						name = L["Lock"],
						desc = L["Lock the armored man."],
						type = "toggle",
						arg = "locked",
					},
					hideFromBlizz = {
						order = 5,
						name = L["Hide from Blizzard"],
						desc = L["Keep Blizzard's UI from seeing the armored man and bumping the questtracker down when it's shown. Set this option if you move the armored man from it's original spot."],
						type = "toggle",
						arg = "hideFromBlizz",
					},					
					reset = {
						order = 6,
						name = L["Reset"],
						desc = L["Reset the armored man to its original position."],
						type = "execute",
						func = function() Durability:ReleaseDurabilityFrame(); DURABILITY_X = nil; DURABILITY_Y = nil; db.posx = nil; db.posy = nil; Durability:ClaimDurabilityFrame() end,
					},

				}
			},
		}
	}
	return options
end

function Durability:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("SmoothDurabilityDB", defaults, "Default")
	db = self.db.profile
	
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("Smooth Durability", giveOptions)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Smooth Durability", L["Smooth Durability"])
end

function Durability:OnEnable()
	self:SetupFrames()
	self:ClaimDurabilityFrame()
	self:RegisterBucketEvent({
		"PLAYER_UNGHOST",
		"PLAYER_DEAD",
		"PLAYER_REGEN_ENABLED",
		"UPDATE_INVENTORY_ALERTS",
		"MERCHANT_SHOW",
		"MERCHANT_CLOSED",
		"UNIT_INVENTORY_CHANGED",
	}, .5, "Update")
	self:RegisterEvent( "MERCHANT_SHOW", "Repair" )
end

function Durability:OnDisable()
	self:ReleaseDurabilityFrame()
end

function Durability:GetTooltipAnchor()
	local x,y = DurabilityFrame:GetCenter()
	if not x or not y then return "TOPLEFT", "BOTTOMLEFT" end
	local hhalf = (x > UIParent:GetWidth()/2) and "RIGHT" or "LEFT"
	local vhalf = (y > UIParent:GetHeight()/2) and "TOP" or "BOTTOM"
	return vhalf..hhalf, DurabilityFrame, (vhalf == "TOP" and "BOTTOM" or "TOP")..hhalf
end

function Durability:ClaimDurabilityFrame()
	if not oldPoint then
		oldPoint, oldFrame, oldRPoint, oldX, oldY = DurabilityFrame:GetPoint()
	end

	DurabilityFrame:EnableMouse(true)
	DurabilityFrame:SetClampedToScreen(true)
	DurabilityFrame:SetScript("OnLeave", function() GameTooltip:Hide() end)
	DurabilityFrame:SetScript("OnEnter", function(this)
		GameTooltip:SetOwner(this, "ANCHOR_NONE")
		GameTooltip:SetPoint(self:GetTooltipAnchor())
		GameTooltip:ClearLines()

		GameTooltip:AddLine("Durability")
		for i, item in ipairs( items ) do
			if item.hasItem and item.percent and item.percent < 1 then
				GameTooltip:AddDoubleLine( item.name, string.format( "%s |cff%s%d%%|r",  CostString( item.cost ), rgb2hex(ColorGradient(item.percent, 1,0,0, 1,1,0, 0,1,0)),item.percent *100 ) )
			end
		end
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine("Total")
		GameTooltip:AddDoubleLine( "Percent", string.format("|cff%s%d%%|r", rgb2hex(ColorGradient(self.totalPercent, 1,0,0, 1,1,0, 0,1,0)),self.totalPercent *100 ) )
		GameTooltip:AddDoubleLine( "Cost", CostString( self.totalCost ) )
		GameTooltip:Show()
	end)
	
	DurabilityFrame:RegisterForDrag("LeftButton")
	DurabilityFrame:SetMovable(true)
	DurabilityFrame:SetScript("OnDragStart", function() if not db.locked then DurabilityFrame:StartMoving() DurabilityFrame.isMoving = true end end)
	DurabilityFrame:SetScript("OnDragStop", function() if not db.locked then DurabilityFrame.isMoving = false DurabilityFrame:StopMovingOrSizing() self:SavePosition() end end)

	self:SecureHook("DurabilityFrame_SetAlerts")
	self:RawHook( DurabilityFrame, "SetPoint", "DurabilityFrame_SetPoint", true )
	self:RawHook( DurabilityFrame, "IsShown", "DurabilityFrame_IsShown", true )

	self:RestorePosition()
	self.textFrame:Show()
	self:Update()
end

function Durability:ReleaseDurabilityFrame()
	DurabilityFrame:EnableMouse(false)
	DurabilityFrame:RegisterForDrag(nil)
	DurabilityFrame:SetMovable(false)
	DurabilityFrame:SetScript("OnDragStart", nil)
	DurabilityFrame:SetScript("OnDragStop", nil)
	self:Unhook("DurabilityFrame_SetAlerts")
	self:Unhook(DurabilityFrame, "SetPoint")
	self:Unhook(DurabilityFrame, "IsShown")
	self.textFrame:Hide()
	DurabilityFrame:ClearAllPoints()
	DurabilityFrame:SetPoint( oldPoint, oldFrame, oldRPoint, oldX, oldY )
end

function Durability:SetupFrames()
	if self.textFrame then return end
	
	local face, size, outline = NumberFontNormal:GetFont()
	
	-- one text frame below the DurabilityFrame
	self.textFrame = DurabilityFrame:CreateFontString(nil, "OVERLAY")
	self.textFrame:SetParent( DurabilityFrame )
	self.textFrame:SetPoint( "BOTTOMRIGHT", DurabilityFrame, "BOTTOMLEFT", 10, -6 )
	self.textFrame:SetJustifyH( "RIGHT" )
	self.textFrame:SetFont( face, size, outline )

	-- one text frame for % in paperdoll
	self.pdPercFrame = PaperDollFrame:CreateFontString(nil, "OVERLAY")
	self.pdPercFrame:SetParent( PaperDollFrame )
	self.pdPercFrame:SetPoint( "TOPLEFT", CharacterWristSlot, "BOTTOMLEFT", 0, -4 )
	self.pdPercFrame:SetJustifyH( "LEFT" )
	self.pdPercFrame:SetFont( face, size-1, outline )	

	-- one text frame for cost in paperdoll
	self.pdCostFrame = PaperDollFrame:CreateFontString(nil, "OVERLAY")
	self.pdCostFrame:SetParent( PaperDollFrame )
	self.pdCostFrame:SetPoint( "TOPLEFT", self.pdPercFrame, "BOTTOMLEFT", 0, 0 )
	self.pdCostFrame:SetJustifyH( "LEFT" )
	self.pdCostFrame:SetFont( face, size-1, outline )		
	
	-- setup fontstrings per slot for the durability text on the characterscreen, copied from tekAbility by Tekkub
	local gslot
	for i, item in ipairs( items ) do
		gslot = _G["Character"..item.slot]
		if gslot then
			local fstr = gslot:CreateFontString("Character"..item.slot.."Durability", "OVERLAY")
			fstr:SetFont(face, size, outline)
			fstr:SetPoint("CENTER", gslot, "BOTTOM", 0, 8)
			characterDurability[item.slot] = fstr
		end
	end
end

function Durability:Repair()
	if CanMerchantRepair() and db.autoRepair then
		local cost = GetRepairAllCost()
		if cost > 0 then
			if CanGuildBankRepair() and cost <= GetGuildBankMoney() and (cost <= GetGuildBankWithdrawMoney() or GetGuildBankWithdrawMoney() == -1) then
				RepairAllItems(1)
				self:Print( string.format(L["Autorepaired for %s."], CostString( cost )), "("..GUILD..")" )
			elseif cost <= GetMoney() then
				RepairAllItems()
				self:Print( string.format(L["Autorepaired for %s."], CostString( cost )) )
			else
				self:Print( string.format(L["Autorepair failed, you need %s more."], CostString( cost - money )) )
			end
		end
	end
end

function Durability:Update()
	local t1, t2, tcost = 0, 0, 0
	for i, item in ipairs(items) do
		local v1, v2, cost = self:UpdateItem(item)
		t1, t2, tcost = t1 + v1, t2 + v2, tcost + cost
	end

	local perc = (t2 == 0) and 1 or t1/t2
	
	self.totalCost = tcost
	self.totalPercent = perc
	
	self.textFrame:SetText( string.format( "%d%%", perc*100 ) )
	self.textFrame:SetTextColor(ColorGradient(perc, 1,0,0, 1,1,0, 0,1,0))

	self.pdPercFrame:SetText( string.format( L["|cffffffffAverage:|r %d%%"], perc*100 ) )
	self.pdPercFrame:SetTextColor(ColorGradient(perc, 1,0,0, 1,1,0, 0,1,0))	

	self.pdCostFrame:SetText( string.format( L["|cffffffffCost:|r %s"], CostString( tcost ) ) )	
	
	self:DurabilityFrame_SetAlerts()
end

----------
-- durability, maximum = GetInventoryItemDurability(slotid),  durability, maximum = GetContainerItemDurability(bagid, slotid)
----------

function Durability:UpdateItem( item )
	local id = GetInventorySlotInfo(item.slot)
	local hasItem,_,cost = tooltip:SetInventoryItem("player", id)

	local v1, v2 = GetInventoryItemDurability( id )
	local slotstr = characterDurability[item.slot]
	if not hasItem or not v1 or not v2 then
		slotstr:Hide()
	else
		item.percent, item.cost = v2 == 0 and 1 or v1/v2, cost
		slotstr:SetText( string.format("%d%%", item.percent*100 ))
		slotstr:SetTextColor(ColorGradient(item.percent, 1,0,0, 1,1,0, 0,1,0))
		if item.percent <= db.characterThreshold then
			slotstr:Show()
		else
			slotstr:Hide()
		end
	end
	item.hasItem = hasItem	
	return v1 or 0, v2 or 0, cost or 0 
end

-- This function mimicks the durability setalerts by blizzard, but adds better coloring and  thresholds
function Durability:DurabilityFrame_SetAlerts()
	local at = db.averageThreshold --average threshold for showing make this configurable
	local it = db.itemThreshold -- individual threshold for coloring and showing

	local texture
	local r, g, b

	local showDurability = false

	if self.totalPercent and self.totalPercent <= at then
		showDurability = true
	end

	for i, item in ipairs( items ) do
		texture = item.texture
		if not item.texture then
			-- figure out which texture
			if OffhandHasWeapon() then
				texture = "DurabilityOffWeapon"
			else
				texture = "DurabilityShield"
			end		
		end
		texture = _G[texture]
		if item.percent and item.percent <= it then
			r,g,b = ColorGradient(item.percent,1,0,0, 1,1,0, 0,1,0)
			texture:SetVertexColor( r,g,b,1)
			showDurability = true
		else
			texture:SetVertexColor( 1.0, 1.0, 1.0, 0.5)
		end
	end
	local showItem
	for i, item in ipairs( items ) do
		texture = item.texture
		if not texture then
			if OffhandHasWeapon() then
				texture = "DurabilityOffWeapon"
				_G["DurabilityShield"]:Hide()
			else
				texture = "DurabilityShield"
				_G["DurabilityOffWeapon"]:Hide()
			end
		end
		showItem = true
		if item.separate and not item.hasItem then
			showItem = false
		end
			
		if showDurability and showItem then
			_G[texture]:Show()
		else
			_G[texture]:Hide()
		end
	end
	if showDurability then
		DurabilityFrame:Show()
		self.textFrame:Show()
	else
		self.textFrame:Hide()
		DurabilityFrame:Hide()
	end
end

-- destructive hooking, something keeps moving it back and it's not only jostle
function Durability:DurabilityFrame_SetPoint(  ... )
	if DURABILITY_X and DURABILITY_Y and not DurabilityFrame.isMoving then
		self.hooks[DurabilityFrame]["SetPoint"]( DurabilityFrame, DURABILITY_POINT, DURABILITY_RFRAME, DURABILITY_RPOINT, DURABILITY_X, DURABILITY_Y)
	else
		self.hooks[DurabilityFrame]["SetPoint"]( ... )
	end
end

function Durability:DurabilityFrame_IsShown(...)
	return (not db.hideFromBlizz) and self.hooks[DurabilityFrame]["IsShown"](...) or false
end

function Durability:SavePosition()
	local f = DurabilityFrame
	local s = f:GetEffectiveScale()

	local top = f:GetTop()
	local left = f:GetLeft()
	db.posx = left * s
	db.posy = top * s
	DURABILITY_X = left
	DURABILITY_Y = top
end

function Durability:RestorePosition()
	local x = db.posx
	local y = db.posy

	if not x or not y then return end

	local f = DurabilityFrame
	local s = f:GetEffectiveScale()

	DURABILITY_X = x / s
	DURABILITY_Y = y / s
	f:ClearAllPoints()
	f:SetPoint(DURABILITY_POINT, DURABILITY_RFRAME, DURABILITY_RPOINT, DURABILITY_X, DURABILITY_Y)
end
