----------------------------------------------
-- infResolve
----------------------------------------------

local infResolve = CreateFrame("Frame", "infResolve")
infResolve:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infResolve:RegisterEvent("ADDON_LOADED")

local db
local UnitBuff = UnitBuff

local resolve
local resolveId = GetSpellInfo(158300)

local defaults = {
	moveable = true,
	xpos = 0,
	ypos = -61,
	height = 24,
	width = 140,
	scale = 1,
	icon = true
}

local function Short(value)
	local fmt
	if value >= 10000 then
		fmt = "%.0fk"
		value = value / 1000	
	elseif value >= 1000 then
		fmt = "%.1fk"
		value = value / 1000
	else
		fmt = "%d"
	end
	return fmt:format(value)
end

function infResolve:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	infResolveDB = infResolveDB or defaults
	db = infResolveDB
	for k, v in pairs(defaults) do 
		if db[k] == nil then 
			db[k] = defaults[k] 
		end
	end

	SlashCmdList["infResolve"] = function(msg) 
		self:ChatCommand(msg) 
	end
	SLASH_infResolve1 = "/infresolve"
	
	self:FrameCreation()

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infResolve:FrameCreation()
	--Resolve
	resolve_frame = CreateFrame("Frame", nil, UIParent)
	resolve_frame:SetSize(db.width, db.height)
	resolve_frame:SetPoint("CENTER", db.xpos, db.ypos)
	resolve_frame:SetScale(db.scale)
    resolve_frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8", 
		edgeFile = "Interface\\AddOns\\infResolve\\Border\\Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	})
	resolve_frame:SetBackdropColor(0, 0, 0, 0.6)
	resolve_frame:Hide()

	resolve_frame.icon = resolve_frame:CreateTexture("Icon", "OVERLAY")
	resolve_frame.icon:SetWidth(db.height)
	resolve_frame.icon:SetPoint("TOPRIGHT", resolve_frame, "TOPLEFT", 0, 0)
	resolve_frame.icon:SetPoint("BOTTOMRIGHT", resolve_frame, "BOTTOMLEFT", 0, 0)
	resolve_frame.icon:SetTexture("Interface\\Icons\\Spell_Shadow_Charm")
	resolve_frame.icon:SetTexCoord(0.07, 0.9, 0.07, 0.90)
	if db.icon == false then
		resolve_frame.icon:Hide()
	end

	--Percent
	resolve_frame.perc = resolve_frame:CreateFontString(nil, "OVERLAY")
	resolve_frame.perc:SetPoint("LEFT", resolve_frame, "LEFT", 6, 0)
	resolve_frame.perc:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	resolve_frame.perc:SetJustifyH("LEFT")
	resolve_frame.perc:SetSize(db.width/2, db.height)
	resolve_frame.perc:SetText("0%")

	--Damage last 10
	resolve_frame.last = resolve_frame:CreateFontString(nil, "OVERLAY")
	resolve_frame.last:SetPoint("RIGHT", resolve_frame, "RIGHT", -4, 0)
	resolve_frame.last:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	resolve_frame.last:SetJustifyH("RIGHT")
	resolve_frame.last:SetSize(db.width/2, db.height)
	resolve_frame.last:SetText("0")

	if db.moveable == true then
		resolve_frame:SetMovable(true)
		resolve_frame:EnableMouse(true)	
		resolve_frame:RegisterForDrag("LeftButton")
		resolve_frame:SetScript("OnDragStart", function(self, button) 
			self:StartMoving() 
		end)
		resolve_frame:SetScript("OnDragStop", function(self)
			self:StopMovingOrSizing()
			local scale = self:GetEffectiveScale() / UIParent:GetEffectiveScale()
			local x, y = self:GetCenter()
			x, y = x * scale, y * scale
			x = x - _G.GetScreenWidth() / 2
			y = y - _G.GetScreenHeight() / 2
			x = x / self:GetScale()
			y = y / self:GetScale()
			db.xpos, db.ypos = x, y
			self:SetUserPlaced(false)
		end)
	end
end

local function IsTank()
	local _, playerclass = UnitClass("player")
	local masteryIndex 
	local tank = false
	if playerclass == "DEATHKNIGHT" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 1 then
			tank = true
		end
	elseif playerclass == "DRUID" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 3 then
			tank = true
		end
	elseif playerclass == "MONK" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 1 then
			tank = true
		end
	elseif playerclass == "PALADIN" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 2 then
			tank = true
		end
	elseif playerclass == "WARRIOR" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 3 then
			tank = true
		end
	end
	return tank
end

function infResolve:PLAYER_TALENT_UPDATE()
	if IsTank() then
		if not resolve_frame:IsShown() then
			self:RegisterUnitEvent("UNIT_AURA", "player")
			resolve_frame:SetParent(UIParent)
			resolve_frame:Show()
			print("|cff3399FFinf|rResolve: ON")
		end
	else
		if resolve_frame:IsShown() then
			self:UnregisterEvent("UNIT_AURA")
			resolve_frame:SetParent(nil)
			resolve_frame:Hide()
			print("|cff3399FFinf|rResolve: OFF")
		end
	end
end

function infResolve:UNIT_AURA(_, unit)
	local _, _, _, _, _, _, _, _, _, _, _, _, _, _, perc, last = UnitBuff(unit, resolveId)
	if resolve ~= last then
		resolve = last
		resolve_frame.perc:SetText(perc.."%")
		resolve_frame.last:SetText(Short(last))
	end
end

function infResolve:ChatCommand(input)
	local cmd, arg = string.split(" ", input, 2)
	cmd = string.lower(cmd or "")
	arg = string.lower(arg or "")

	if not input or input:trim() == "" then
		print("|cff3399FFinf|rResolve: /infresolve lock to unlock/lock.")
		print("|cff3399FFinf|rResolve: /infresolve icon to enable/disable the icon.")
		print("|cff3399FFinf|rResolve: /infresolve height <height> to change the height.")		
		print("|cff3399FFinf|rResolve: /infresolve width <width> to change the width.")
		print("|cff3399FFinf|rResolve: /infresolve scale <scale> to change the scale.")
	elseif cmd == "lock" then
		if db.moveable == true then
			resolve_frame:SetMovable(false)
			resolve_frame:EnableMouse(false)
			db.moveable = false	
			print("|cff3399FFinf|rResolve: locked.")
		elseif db.moveable == false then
			resolve_frame:SetMovable(true)
			resolve_frame:EnableMouse(true)	
			resolve_frame:RegisterForDrag("LeftButton")
			resolve_frame:SetScript("OnDragStart", function(self, button) 
				self:StartMoving() 
			end)
			resolve_frame:SetScript("OnDragStop", function(self)
				self:StopMovingOrSizing()
				local scale = self:GetEffectiveScale() / UIParent:GetEffectiveScale()
				local x, y = self:GetCenter()
				x, y = x * scale, y * scale
				x = x - _G.GetScreenWidth() / 2
				y = y - _G.GetScreenHeight() / 2
				x = x / self:GetScale()
				y = y / self:GetScale()
				db.xpos, db.ypos = x, y
				self:SetUserPlaced(false)
			end)
			db.moveable = true
			print("|cff3399FFinf|rResolve: unlocked.")
		end
	elseif cmd == "icon" then
		if db.icon == true then
			db.icon = false
			resolve_frame.icon:Hide()
			print("|cff3399FFinf|rResolve: Icon disabled.")
		else
			db.icon = true
			resolve_frame.icon:Show()
			print("|cff3399FFinf|rResolve: Icon enabled.")	
		end
	elseif cmd == "height" then
		if arg:match("^[0-9]+$") then 
			db.height = tonumber(arg)
			resolve_frame:SetHeight(arg)
			resolve_frame.icon:SetWidth(db.height)
			print("|cff3399FFinf|rResolve: Height set to ".. arg ..".")
		elseif arg == "" then
			print("|cff3399FFinf|rResolve: Missing the height.")
			print("|cff3399FFinf|rResolve: Example: /infresolve height 50")
		else
			print("|cff3399FFinf|rResolve: Invalid height.")
		end
	elseif cmd == "width" then
		if arg:match("^[0-9]+$") then 
			db.width = tonumber(arg)
			resolve_frame:SetWidth(arg)
			print("|cff3399FFinf|rResolve: Width set to ".. arg ..".")
		elseif arg == "" then
			print("|cff3399FFinf|rResolve: Missing the width.")
			print("|cff3399FFinf|rResolve: Example: /infresolve width 175")
		else
			print("|cff3399FFinf|rResolve: Invalid width.")
		end
	elseif cmd == "scale" then
		if arg:match("^[0-9].+$") or arg:match("^[0-9]+$") then 
			db.scale = tonumber(arg)
			resolve_frame:SetScale(arg)
			print("|cff3399FFinf|rResolve: Scale set to ".. arg ..".")
		elseif arg == "" then
			print("|cff3399FFinf|rResolve: Missing the scale.")
			print("|cff3399FFinf|rResolve: Example: /infresolve scale 1.1")
		else
			print("|cff3399FFinf|rResolve: Invalid scale.")
		end		
	end	
end

