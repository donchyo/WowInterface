----------------------------------------------
-- infAuras
----------------------------------------------

local _ = _
local max = max
local floor = floor
local GetTime = GetTime
local LibStub = LibStub
local UIParent = UIParent
local UnitAura = UnitAura
local UnitName = UnitName
local UnitClass = UnitClass
local UnitIsPlayer = UnitIsPlayer
local UnitInVehicle = UnitInVehicle
local BuffFrame = BuffFrame
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local collectgarbage = collectgarbage
local ConsolidatedBuffs = ConsolidatedBuffs
local GetWeaponEnchantInfo = GetWeaponEnchantInfo
local GetInventorySlotInfo = GetInventorySlotInfo
local GetInventoryItemTexture = GetInventoryItemTexture
local TemporaryEnchantFrame = TemporaryEnchantFrame

local infAuras = CreateFrame("FRAME", nil, UIParent)
infAuras:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infAuras:RegisterEvent("ADDON_LOADED")

local Masque = LibStub("Masque", true)
local MasqueGroup = {}

-- init secure aura headers
local buffHeader = CreateFrame("Frame", "infAuras_Buffs", UIParent, "SecureAuraHeaderTemplate")
local debuffHeader = CreateFrame("Frame", "infAuras_Debuffs", UIParent, "SecureAuraHeaderTemplate")
local infAurasSecStateHandler = CreateFrame("Frame", nil, nil, "SecureHandlerStateTemplate")
infAurasSecStateHandler:SetAttribute("_onstate-aurastate", [[
local buffs = self:GetFrameRef("infAuras_Buffs")
local debuffs = self:GetFrameRef("infAuras_Debuffs")
local state = newstate == "invehicle" and "vehicle" or "player"
buffs:SetAttribute("unit", state)
debuffs:SetAttribute("unit", state)
]])

infAurasSecStateHandler:SetFrameRef("infAuras_Buffs", buffHeader)
infAurasSecStateHandler:SetFrameRef("infAuras_Debuffs", debuffHeader)
RegisterStateDriver(infAurasSecStateHandler, "aurastate", "[vehicleui] invehicle; notinvehicle")

do
	local child
	local function btn_iterator(self, i)
		i = i + 1
		child = self:GetAttribute("child" .. i)
		if child and child:IsShown() then return i, child, child:GetAttribute("index") end
	end
	function buffHeader:ActiveButtons() return btn_iterator, self, 0 end
	function debuffHeader:ActiveButtons() return btn_iterator, self, 0 end
end

function infAuras:createAuraButton(btn, filter)
	local ic, tx, bd, vf, dr, st

	-- subframe for icon and border
	ic = CreateFrame("Button", nil, btn)
	ic:SetAllPoints(btn)
	ic:SetFrameLevel(1)
	ic:EnableMouse(false)
	btn.icon = ic

	-- icon texture
	tx = ic:CreateTexture(nil, "ARTWORK")
	tx:SetPoint("TOPLEFT", 3, -3)
	tx:SetPoint("BOTTOMRIGHT", -3, 3)
	btn.icon.tex = tx

	-- buttonfacade border
	bd = ic:CreateTexture(nil, "OVERLAY")
	bd:SetAllPoints(btn)
	bd:SetVertexColor(0, 0, 0, 1)
	btn.MSQborder = bd

	-- subframe for value texts
	vf = CreateFrame("Frame", nil, btn)
	vf:SetAllPoints(btn)
	vf:SetFrameLevel(20)
	btn.vFrame = vf

	-- duration text
	dr = vf:CreateFontString(nil, "OVERLAY")
	dr:SetPoint("TOP", ic, "BOTTOM", 0,  2)
	dr:SetTextColor(1, 0.82, 0)
	dr:SetFont(STANDARD_TEXT_FONT, 7.5, "OUTLINE")
	btn.text = dr

	-- stack count
	st = vf:CreateFontString(nil, "OVERLAY")
	st:SetPoint("BOTTOMRIGHT", ic, "BOTTOMRIGHT", -5, 4)
	st:SetTextColor(1, 1, 1)
	st:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
	btn.stacks = st

	-- buttonfacade
	MasqueGroup:AddButton(btn.icon, {Icon = btn.icon.tex, Border = btn.MSQborder})

	btn.lastUpdate = 0
	btn.filter = filter
	btn.created = true
	--btn.cAlpha = 1
end

local formatTimeRemaining
do
	formatTimeRemaining = function(timeLeft)
		local hours, minutes, seconds = floor((timeLeft % 86400) / 3600), floor((timeLeft % 3600) / 60), timeLeft % 60
		if hours ~= 0 then
			return ("%d:%.2d:%.2d"):format(hours, minutes, seconds)
		else
			return ("%d:%.2d"):format(minutes, seconds)
		end
	end
end

--[[local formatTimeRemaining
do
	formatTimeRemaining = function(timeLeft)
		local days, hours, minutes, seconds = floor(timeLeft / 86400), floor((timeLeft % 86400) / 3600), floor((timeLeft % 3600) / 60), timeLeft % 60
		if days ~= 0 then
			return ("%d:%.2d:%.2d:%.2d"):format(days, hours, minutes, seconds)
		elseif hours ~= 0 then
			return ("%d:%.2d:%.2d"):format(hours, minutes, seconds)
		elseif minutes ~= 0 then
			return ("%d:%.2d"):format(minutes, seconds)
		else
			return ("%d"):format(seconds)
		end
	end
end]]

--[[local function updateBlink(btn)
	if btn.cAlpha >= 1 then btn.increasing = false elseif btn.cAlpha <= 0.15 then btn.increasing = true end
	btn.cAlpha = btn.cAlpha + (btn.increasing and 0.05 or -0.05)
	btn:SetAlpha(btn.cAlpha)
end]]

local UpdateAuraButtonCD
do
	local name, duration, eTime, msecs

	UpdateAuraButtonCD = function(btn, elapsed)
		if btn.lastUpdate < btn.freq then btn.lastUpdate = btn.lastUpdate + elapsed; return end
		btn.lastUpdate = 0

		name, _, _, _, _, duration, eTime = UnitAura(UnitInVehicle("player") and "vehicle" or "player", btn:GetID(), btn.filter)
		if name and duration > 0 then
			msecs = max(eTime - GetTime(), 0)
			btn.text:SetText(formatTimeRemaining(msecs))

			btn.rTime = msecs
			--if btn.rTime < 12 then btn.freq = .05 end
			--if btn.rTime <= 10.9 then updateBlink(btn) end
		end
	end
end

local UpdateWeaponEnchantButtonCD
do
	local mh, oh, rTime

	UpdateWeaponEnchantButtonCD = function(btn, elapsed)
		if btn.lastUpdate < btn.freq then btn.lastUpdate = btn.lastUpdate + elapsed; return end
		btn.lastUpdate = 0

		_, mh, _, _, oh = GetWeaponEnchantInfo()
		rTime = (btn.slotID == 16) and mh or oh

		btn.rTime = rTime / 1000
		btn.text:SetText(formatTimeRemaining(btn.rTime))
		
		--if btn.rTime < 12 then btn.freq = .05 end
		--if btn.rTime <= 10.9 then updateBlink(btn) end
	end
end

local updateAuraButtonStyle
do
	local name, icon, count, duration, eTime

	updateAuraButtonStyle = function(btn, filter)
		if not btn.created then infAuras:createAuraButton(btn, filter) end
		name, _, icon, count, _, duration, eTime = UnitAura(UnitInVehicle("player") and "vehicle" or "player", btn:GetID(), filter)
		if name then
			btn.icon.tex:SetTexture(icon)
			if duration > 0 then
				btn.rTime = eTime - GetTime()
				btn.freq = 1
				--btn.cAlpha = 1
				btn:SetScript("OnUpdate", UpdateAuraButtonCD)
				UpdateAuraButtonCD(btn, 5)
			else
				btn.text:SetText("")
				btn:SetScript("OnUpdate", nil)
			end
			--btn:SetAlpha(1)
			btn.stacks:SetText((count > 1) and count or "")
		else
			btn.text:SetText("")
			btn.stacks:SetText("")
			btn:SetScript("OnUpdate", nil)
		end
	end
end

local updateWeaponEnchantButtonStyle
do
	local icon

	updateWeaponEnchantButtonStyle = function(btn, slot, hasEnchant, rTime)
		if not btn.created then infAuras:createAuraButton(btn) end
		if hasEnchant then
			btn.slotID = GetInventorySlotInfo(slot)
			icon = GetInventoryItemTexture("player", btn.slotID)
			btn.icon.tex:SetTexture(icon)
			btn.rTime = rTime / 1000
			btn.freq = 1
			--btn.cAlpha = 1
			btn.duration = 1800
			--btn:SetAlpha(1)
			btn:SetScript("OnUpdate", UpdateWeaponEnchantButtonCD)
			UpdateWeaponEnchantButtonCD(btn, 5)
		else
			btn.text:SetText("")
			btn:SetScript("OnUpdate", nil)
		end
	end
end

local updateStyle
do
	local hasMHe, MHrTime, hasOHe, OHrTime, wEnch1, wEnch2

	updateStyle = function(header, event, unit)
		if event == "PET_BATTLE_CLOSE" then
			header:Show()
		elseif event == "PET_BATTLE_OPENING_DONE" then
			header:Hide()
		end
		if event == "UNIT_AURA" and unit ~= "player" and unit ~= "vehicle" then return end
		for _, btn in header:ActiveButtons() do updateAuraButtonStyle(btn, header.filter) end
		if header.filter == "HELPFUL" then
			hasMHe, MHrTime, _, hasOHe, OHrTime = GetWeaponEnchantInfo()
			wEnch1 = buffHeader:GetAttribute("tempEnchant1")
			wEnch2 = buffHeader:GetAttribute("tempEnchant2")

			if wEnch1 then updateWeaponEnchantButtonStyle(wEnch1, "MainHandSlot", hasMHe, MHrTime) end
			if wEnch2 then updateWeaponEnchantButtonStyle(wEnch2, "SecondaryHandSlot", hasOHe, OHrTime) end
		end
	end
end

local function setHeaderAttributes(header, template, isBuff)
	local s = function(...) header:SetAttribute(...) end

	s("unit", UnitInVehicle("player") and "vehicle" or "player")
	s("filter", isBuff and "HELPFUL" or "HARMFUL")
	s("template", template)
	s("separateOwn", 0)
	s("minWidth", 100)
	s("minHeight", 100)

	s("point", "TOPRIGHT")
	s("xOffset", -25.5)
	s("yOffset", 0)
	s("wrapAfter", 13)
	s("wrapXOffset", 0)
	s("wrapYOffset", -32)
	s("maxWraps", 2)

	s("sortMethod", "TIME")
	s("sortDirection", "-")

	if isBuff then
		s("includeWeapons", 1)
		s("weaponTemplate", "infBuffButtonTemplate")
	end

	header:SetScale(1.58)
	header.filter = isBuff and "HELPFUL" or "HARMFUL"

	header:RegisterEvent("PLAYER_ENTERING_WORLD")
	header:RegisterEvent("GROUP_ROSTER_UPDATE")
	header:RegisterEvent("GROUP_JOINED")
	header:RegisterEvent("PET_BATTLE_CLOSE")
	header:RegisterEvent("PET_BATTLE_OPENING_DONE")
	header:HookScript("OnEvent", updateStyle)
end

function infAuras:ADDON_LOADED(event, addon)
	if (addon ~= "infAuras") then return end

	self:UnregisterEvent(event)

	-- hide blizz auras
	BuffFrame:UnregisterEvent("UNIT_AURA")
	local h = function(f) f.Show = f.Hide; f:Hide() end
	h(BuffFrame)
	h(TemporaryEnchantFrame)
	h(ConsolidatedBuffs)

	-- buttonfacade
	MasqueGroup = Masque:Group("infAuras")

	-- init headers
	setHeaderAttributes(buffHeader, "infBuffButtonTemplate", true)
	buffHeader:SetPoint("TOPRIGHT", -120, -8.7)
	buffHeader:Show()

	setHeaderAttributes(debuffHeader, "infDebuffButtonTemplate", false)
	debuffHeader:SetPoint("TOPRIGHT", -120, -72.7)
	debuffHeader:Show()

	-- tidy up
	collectgarbage("collect") -- not sure how good of an idea this is, in case someone logs back mid combat
end

--might theoretically cause taint on CancelUnitBuff, let's keep an eye out.
hooksecurefunc(GameTooltip, "SetUnitAura", function(self, unit, index, filter)
	if (filter ~= "HELPFUL" or not UnitIsPlayer(unit)) then return end
	local _, _, _, _, _, _, _, caster = UnitAura(unit, index, filter)
	local name = caster and UnitName(caster)
	if name then
		local _, class = UnitClass(caster)
		local color = RAID_CLASS_COLORS[class]
		self:AddLine(" ")
		self:AddLine(name, color.r, color.g, color.b)
		self:Show()
	end
end)

