----------------------------------------------
-- infMonk
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "MONK" then return end

local infMonk = CreateFrame("Frame", "infMonk")
infMonk:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infMonk:RegisterEvent("ADDON_LOADED")

local karmaWasUp
local oldCharges
local monkSpells = {}

local _G = _G
local pairs = pairs
local GetTime = GetTime
local IsShown = IsShown
local UnitBuff = UnitBuff
local GetTexture = GetTexture
local GetSpellCharges = GetSpellCharges
local CooldownFrame_SetTimer = CooldownFrame_SetTimer
local GetRaidBuffTrayAuraInfo = GetRaidBuffTrayAuraInfo
local ActionButton_ShowOverlayGlow = ActionButton_ShowOverlayGlow
local ActionButton_HideOverlayGlow = ActionButton_HideOverlayGlow

function infMonk:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterUnitEvent("UNIT_AURA", "player")
	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infMonk:FrameCreation()
	local size = 40	
	local backdrop = {
		bgFile = nil, 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	}

	infMonk_frame = CreateFrame("Frame", nil, UIParent)
	infMonk_frame:SetPoint("CENTER", 0, -96)
	infMonk_frame:SetSize(size, size)

	-- infMonk_farleft
	infMonk_farleft = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_farleft:SetSize(size, size)
	infMonk_farleft:SetPoint("CENTER", -102, 0)
	infMonk_farleft:Hide()

	infMonk_farleft.icon = infMonk_farleft:CreateTexture(nil, "BACKGROUND")
	infMonk_farleft.icon:SetAllPoints(true)

	infMonk_farleft.cdtexture = CreateFrame("Cooldown", nil, infMonk_farleft, "CooldownFrameTemplate")
	infMonk_farleft.cdtexture:SetReverse(true)
	infMonk_farleft.cdtexture:SetAllPoints(true)
	infMonk_farleft.cdtexture.noCooldownCount = true
	infMonk_farleft.cdtexture:SetFrameLevel(2)

	infMonk_farleft.overlay = CreateFrame("Frame", nil, infMonk_farleft)
	infMonk_farleft.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_farleft.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_farleft.border = CreateFrame("Frame", nil, infMonk_farleft)
	infMonk_farleft.border:SetAllPoints(true)
	infMonk_farleft.border:SetBackdrop(backdrop)

	infMonk_farleft.text = infMonk_farleft:CreateFontString(nil, "OVERLAY")
	infMonk_farleft.text:SetAllPoints(true)
	infMonk_farleft.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infMonk_farleft.text:SetShadowColor(0, 0, 0, 0.8)
	infMonk_farleft.text:SetShadowOffset(2, -2)
	infMonk_farleft.text:SetTextColor(1, 1, 0)

	-- infMonk_left
	infMonk_left = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_left:SetSize(size, size)
	infMonk_left:SetPoint("CENTER", -51, 0)
	infMonk_left:Hide()

	infMonk_left.icon = infMonk_left:CreateTexture(nil, "BACKGROUND")
	infMonk_left.icon:SetAllPoints(true)

	infMonk_left.cdtexture = CreateFrame("Cooldown", nil, infMonk_left, "CooldownFrameTemplate")
	infMonk_left.cdtexture:SetReverse(true)
	infMonk_left.cdtexture:SetAllPoints(true)
	infMonk_left.cdtexture.noCooldownCount = true
	infMonk_left.cdtexture:SetFrameLevel(2)

	infMonk_left.overlay = CreateFrame("Frame", nil, infMonk_left)
	infMonk_left.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_left.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_left.border = CreateFrame("Frame", nil, infMonk_left)
	infMonk_left.border:SetAllPoints(true)
	infMonk_left.border:SetBackdrop(backdrop)

	infMonk_left.text = infMonk_left:CreateFontString(nil, "OVERLAY")
	infMonk_left.text:SetAllPoints(true)
	infMonk_left.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infMonk_left.text:SetShadowColor(0, 0, 0, 0.8)
	infMonk_left.text:SetShadowOffset(2, -2)
	infMonk_left.text:SetTextColor(1, 1, 0)

	-- infMonk_center
	infMonk_center = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_center:SetSize(size, size)
	infMonk_center:SetPoint("CENTER", 0, 0)
	infMonk_center:Hide()

	infMonk_center.icon = infMonk_center:CreateTexture(nil, "BACKGROUND")
	infMonk_center.icon:SetAllPoints(true)

	infMonk_center.cdtexture = CreateFrame("Cooldown", nil, infMonk_center, "CooldownFrameTemplate")
	infMonk_center.cdtexture:SetReverse(true)
	infMonk_center.cdtexture:SetAllPoints(true)
	infMonk_center.cdtexture.noCooldownCount = true
	infMonk_center.cdtexture:SetFrameLevel(2)

	infMonk_center.overlay = CreateFrame("Frame", nil, infMonk_center)
	infMonk_center.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_center.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_center.border = CreateFrame("Frame", nil, infMonk_center)
	infMonk_center.border:SetAllPoints(true)
	infMonk_center.border:SetBackdrop(backdrop)

	infMonk_center.text = infMonk_center:CreateFontString(nil, "OVERLAY")
	infMonk_center.text:SetAllPoints(true)
	infMonk_center.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infMonk_center.text:SetShadowColor(0, 0, 0, 0.8)
	infMonk_center.text:SetShadowOffset(2, -2)
	infMonk_center.text:SetTextColor(1, 1, 0)

	-- infMonk_right
	infMonk_right = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_right:SetSize(size, size)
	infMonk_right:SetPoint("CENTER", 51, 0)
	infMonk_right:Hide()

	infMonk_right.icon = infMonk_right:CreateTexture(nil, "BACKGROUND")
	infMonk_right.icon:SetAllPoints(true)

	infMonk_right.cdtexture = CreateFrame("Cooldown", nil, infMonk_right, "CooldownFrameTemplate")
	infMonk_right.cdtexture:SetReverse(true)
	infMonk_right.cdtexture:SetAllPoints(true)
	infMonk_right.cdtexture.noCooldownCount = true
	infMonk_right.cdtexture:SetFrameLevel(2)

	infMonk_right.overlay = CreateFrame("Frame", nil, infMonk_right)
	infMonk_right.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_right.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_right.border = CreateFrame("Frame", nil, infMonk_right)
	infMonk_right.border:SetAllPoints(true)
	infMonk_right.border:SetBackdrop(backdrop)

	infMonk_right.text = infMonk_right:CreateFontString(nil, "OVERLAY")
	infMonk_right.text:SetAllPoints(true)
	infMonk_right.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infMonk_right.text:SetShadowColor(0, 0, 0, 0.8)
	infMonk_right.text:SetShadowOffset(2, -2)
	infMonk_right.text:SetTextColor(1, 1, 0)

	-- infMonk_farright
	infMonk_farright = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_farright:SetSize(size, size)
	infMonk_farright:SetPoint("CENTER", 102, 0)
	infMonk_farright:Hide()

	infMonk_farright.icon = infMonk_farright:CreateTexture(nil, "BACKGROUND")
	infMonk_farright.icon:SetAllPoints(true)

	infMonk_farright.cdtexture = CreateFrame("Cooldown", nil, infMonk_farright, "CooldownFrameTemplate")
	infMonk_farright.cdtexture:SetReverse(true)
	infMonk_farright.cdtexture:SetAllPoints(true)
	infMonk_farright.cdtexture.noCooldownCount = true
	infMonk_farright.cdtexture:SetFrameLevel(2)

	infMonk_farright.overlay = CreateFrame("Frame", nil, infMonk_farright)
	infMonk_farright.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_farright.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_farright.border = CreateFrame("Frame", nil, infMonk_farright)
	infMonk_farright.border:SetAllPoints(true)
	infMonk_farright.border:SetBackdrop(backdrop)

	infMonk_farright.text = infMonk_farright:CreateFontString(nil, "OVERLAY")
	infMonk_farright.text:SetAllPoints(true)
	infMonk_farright.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infMonk_farright.text:SetShadowColor(0, 0, 0, 0.8)
	infMonk_farright.text:SetShadowOffset(2, -2)
	infMonk_farright.text:SetTextColor(1, 1, 0)

	-- infMonk_reminder_farleft
	infMonk_reminder_farleft = CreateFrame("Frame", nil, infMonk_frame)
	infMonk_reminder_farleft:SetSize(size, size)
	infMonk_reminder_farleft:SetPoint("CENTER", -275, -69)
	infMonk_reminder_farleft:Hide()

	infMonk_reminder_farleft.icon = infMonk_reminder_farleft:CreateTexture(nil, "BACKGROUND")
	infMonk_reminder_farleft.icon:SetAllPoints(true)
	infMonk_reminder_farleft.icon:SetTexture("Interface\\Icons\\Ability_Monk_PrideoftheTiger")

	infMonk_reminder_farleft.overlay = CreateFrame("Frame", nil, infMonk_reminder_farleft)
	infMonk_reminder_farleft.overlay:SetPoint("TOPLEFT", -3, 3)
	infMonk_reminder_farleft.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infMonk_reminder_farleft.border = CreateFrame("Frame", nil, infMonk_reminder_farleft)
	infMonk_reminder_farleft.border:SetAllPoints(true)
	infMonk_reminder_farleft.border:SetBackdrop(backdrop)
end

function infMonk:ChiBrewUpdate()
	local charges, _, start, duration = GetSpellCharges(115399)
	if oldCharges == charges then return end
	oldCharges = charges
	if charges > 0 and charges < 2 then
		local timeStamp = GetTime()
		local timeLeft = start + duration - timeStamp
		--infMonk_farleft.cdtexture:SetHideCountdownNumbers(true)
		if infMonk_farleft.cdtexture.noCooldownCount == false then
			infMonk_farleft.cdtexture.noCooldownCount = true
		end
		CooldownFrame_SetTimer(infMonk_farleft.cdtexture, timeStamp, timeLeft, true)
		infMonk_farleft.cdtexture:Show()
		infMonk_farleft.text:SetText(charges)
		infMonk_farleft.text:SetTextColor(1, 0.5, 0)
	elseif charges < 1 then
		local timeStamp = GetTime()
		local timeLeft = start + duration - timeStamp
		--infMonk_farleft.cdtexture:SetHideCountdownNumbers(false)
		if infMonk_farleft.cdtexture.noCooldownCount == true then
			infMonk_farleft.cdtexture.noCooldownCount = false
		end
		CooldownFrame_SetTimer(infMonk_farleft.cdtexture, timeStamp, timeLeft, true)
		infMonk_farleft.cdtexture:Show()
		infMonk_farleft.text:SetText("")
	else
		--infMonk_farleft.cdtexture:SetHideCountdownNumbers(true)
		if infMonk_farleft.cdtexture.noCooldownCount == false then
			infMonk_farleft.cdtexture.noCooldownCount = true
		end	
		infMonk_farleft.cdtexture:Hide()
		infMonk_farleft.text:SetText(charges)
		infMonk_farleft.text:SetTextColor(1, 0, 0)
	end
end

function infMonk:ChiBrew(flag)
	if flag then
		self:RegisterEvent("SPELL_UPDATE_CHARGES")
		infMonk_farleft.icon:SetTexture("Interface\\Icons\\Ability_Monk_ChiBrew")
		infMonk_farleft:Show()
		--[[if infMonk_farleft.cdtexture:GetReverse() == true then
			infMonk_farleft.cdtexture:SetReverse(false)
		end]]
		infMonk_farleft.text:SetTextColor(1, 0, 0)
		self:ChiBrewUpdate()
	else
		self:UnregisterEvent("SPELL_UPDATE_CHARGES")
		infMonk_farleft.text:SetTextColor(1, 1, 0)
		infMonk_farleft:Hide()
	end
end

function infMonk:SPELL_UPDATE_CHARGES()
	self:ChiBrewUpdate()
end

local function HasChiBrew()
	local s = GetActiveSpecGroup()
	local _, _, _, selected = GetTalentInfo(3, 3, s)
	return selected
end

function infMonk:PLAYER_TALENT_UPDATE()
	local spec = GetSpecialization()
	self:ChiBrew(HasChiBrew())
	if spec == 3 then
		monkSpells = {
			[125359] = true, --tiger power
			[116740] = true, --tigereye brew (damage increase)
			[125195] = true, --tigereye brew
			[137639] = true --storm, earth, and fire
		}
	elseif spec == 2 then
		monkSpells = {
			[125359] = true, --tiger power
			[118674] = true, --vital mists
			[115867] = true --mana tea
		}
		self:Clear("crit")
	else
		monkSpells = {
			[125359] = true, --tiger power
			[128939] = true --elusive brew
		}
		self:Clear("crit")
	end
end

function infMonk:UNIT_AURA(_, unit)
	local karmaUp

	for spellId in pairs(monkSpells) do
		monkSpells[spellId] = true
	end
	local t = 1
	while true do
		local _, _, icon, count, _, duration, expirationTime, _, _, _, spellId = UnitBuff(unit, t)
		if monkSpells[spellId] then
			self:MonkTracker(spellId, icon, count, duration, expirationTime)
			monkSpells[spellId] = false
		elseif spellId == 125174 then
			karmaUp = true
			karmaWasUp = true
		end
		t = t + 1
		if not UnitBuff(unit, t) then break end
	end
	for spellId, flag in pairs(monkSpells) do
		if flag == true then
			self:Clear(spellId)
		end
	end

	if (not GetRaidBuffTrayAuraInfo(1) or not GetRaidBuffTrayAuraInfo(6)) then
		self:MonkTracker("buff")
	else
		self:Clear("buff")
	end

	if (not karmaUp and karmaWasUp) then
		karmaWasUp = nil
		MikSBT.DisplayMessage("-Touch of Karma", MikSBT.DISPLAYTYPE_INCOMING, true, 127, 255, 249, 38, "Tw_Cen_MT_Bold", 2, "Interface\\Icons\\Ability_Monk_TouchofKarma")
	end
end

function infMonk:MonkTracker(spellId, icon, count, duration, expirationTime)
	if spellId == 125359 then --tiger power
		--infMonk_center.cdtexture:SetHideCountdownNumbers(false)
		if infMonk_center.cdtexture.noCooldownCount == true then
			infMonk_center.cdtexture.noCooldownCount = false
		end
		if infMonk_center.icon:GetTexture() ~= icon then
			infMonk_center.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infMonk_center.cdtexture, startTime, duration, true)
			infMonk_center:Show()
		end
	elseif spellId == 116740 then --tigereye brew (damage increase)
		infMonk_farright.icon:SetDesaturated(true)
		_G["BT4Button15Icon"]:SetDesaturated(true)
	elseif spellId == 118674 then --vital mists
		--infMonk_right.cdtexture:SetHideCountdownNumbers(true)
		if infMonk_right.cdtexture.noCooldownCount == false then
			infMonk_right.cdtexture.noCooldownCount = true
		end
		if infMonk_right.icon:GetTexture() ~= icon then
			infMonk_right.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infMonk_right.cdtexture, startTime, duration, true)
			infMonk_right:Show()
		end
		if count == 5 then
			ActionButton_ShowOverlayGlow(infMonk_right.overlay)
		else
			ActionButton_HideOverlayGlow(infMonk_right.overlay)
		end
		infMonk_right.text:SetText(count)
	elseif spellId == 125195 then --tigereye brew
		if infMonk_farright.cdtexture.noCooldownCount == false then
			infMonk_farright.cdtexture.noCooldownCount = true
		end
		if infMonk_farright.icon:GetTexture() ~= "Interface\\Icons\\Ability_Monk_TigerEyeBrandy" then
			infMonk_farright.icon:SetTexture("Interface\\Icons\\Ability_Monk_TigerEyeBrandy")
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infMonk_farright.cdtexture, startTime, duration, true)
			infMonk_farright:Show()
		end
		if count >= 10 then
			ActionButton_ShowOverlayGlow(infMonk_farright.overlay)
		else
			ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		end
		infMonk_farright.text:SetText(count)
	elseif spellId == 115867 then --mana tea
		if infMonk_farright.cdtexture.noCooldownCount == false then
			infMonk_farright.cdtexture.noCooldownCount = true
		end
		if infMonk_farright.icon:GetTexture() ~= "Interface\\Icons\\Monk_Ability_CherryManaTea" then
			infMonk_farright.icon:SetTexture("Interface\\Icons\\Monk_Ability_CherryManaTea")
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infMonk_farright.cdtexture, startTime, duration, true)
			infMonk_farright:Show()
		end
		if count >= 10 then
			ActionButton_ShowOverlayGlow(infMonk_farright.overlay)
		else
			ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		end
		infMonk_farright.text:SetText(count)
	elseif spellId == 128939 then --elusive brew
		if infMonk_farright.cdtexture.noCooldownCount == false then
			infMonk_farright.cdtexture.noCooldownCount = true
		end
		if infMonk_farright.icon:GetTexture() ~= "Interface\\Icons\\Ability_Monk_ElusiveAle" then
			infMonk_farright.icon:SetTexture("Interface\\Icons\\Ability_Monk_ElusiveAle")
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infMonk_farright.cdtexture, startTime, duration, true)
			infMonk_farright:Show()
		end
		if count >= 15 then
			ActionButton_ShowOverlayGlow(infMonk_farright.overlay)
		else
			ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		end
		infMonk_farright.text:SetText(count)
	elseif spellId == 137639 then --storm, earth, and fire
		if infMonk_left.icon:GetTexture() ~= icon then
			infMonk_left.icon:SetTexture(icon)
		end
		if not infMonk_left:IsShown() then
			infMonk_left:Show()
		end	
		infMonk_left.text:SetText(count)
	elseif spellId == "buff" then
		infMonk_reminder_farleft:Show()
		ActionButton_ShowOverlayGlow(infMonk_reminder_farleft.overlay)	
	end
end

function infMonk:Clear(spellId)
	if spellId == 125359 then --tiger power
		infMonk_center:Hide()
	elseif spellId == 116740 then --tigereye brew (damage increase)
		infMonk_farright.icon:SetDesaturated(false)
		_G["BT4Button15Icon"]:SetDesaturated(false)
	elseif spellId == 118674 then --vital mists
		ActionButton_HideOverlayGlow(infMonk_right.overlay)
		infMonk_right:Hide()
	elseif spellId == 125195 then --tigereye brew
		ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		infMonk_farright:Hide()
	elseif spellId == 115867 then --mana tea
		ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		infMonk_farright:Hide()
	elseif spellId == 128939 then --elusive brew
		ActionButton_HideOverlayGlow(infMonk_farright.overlay)
		infMonk_farright:Hide()
	elseif spellId == 137639 then --storm, earth, and fire
		infMonk_left:Hide()
	elseif spellId == "buff" then
		ActionButton_HideOverlayGlow(infMonk_reminder_farleft.overlay)
		infMonk_reminder_farleft:Hide()
	end
end

