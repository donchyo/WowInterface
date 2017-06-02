----------------------------------------------
-- infDruid
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "DRUID" then return end

local infDruid = CreateFrame("Frame", "infDruid")
infDruid:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infDruid:RegisterEvent("ADDON_LOADED")

local druidSpells = {}

local pairs = pairs
local UnitBuff = UnitBuff
local GetTexture = GetTexture
local GetTotemInfo = GetTotemInfo
local CooldownFrame_SetTimer = CooldownFrame_SetTimer
local GetRaidBuffTrayAuraInfo = GetRaidBuffTrayAuraInfo
local ActionButton_ShowOverlayGlow = ActionButton_ShowOverlayGlow
local ActionButton_HideOverlayGlow = ActionButton_HideOverlayGlow

function infDruid:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterUnitEvent("UNIT_AURA", "player")
	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infDruid:FrameCreation()
	local size = 40	
	local backdrop = {
		bgFile = nil, 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	}

	infDruid_frame = CreateFrame("Frame", nil, UIParent)
	infDruid_frame:SetPoint("CENTER", 0, -96)
	infDruid_frame:SetSize(size, size)

	-- infDruid_farleft
	infDruid_farleft = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_farleft:SetSize(size, size)
	infDruid_farleft:SetPoint("CENTER", -102, 0)
	infDruid_farleft:Hide()

	infDruid_farleft.icon = infDruid_farleft:CreateTexture(nil, "BACKGROUND")
	infDruid_farleft.icon:SetAllPoints(true)

	infDruid_farleft.cdtexture = CreateFrame("Cooldown", nil, infDruid_farleft, "CooldownFrameTemplate")
	infDruid_farleft.cdtexture:SetReverse(true)
	infDruid_farleft.cdtexture:SetAllPoints(true)
	infDruid_farleft.cdtexture.noCooldownCount = true
	infDruid_farleft.cdtexture:SetFrameLevel(2)

	infDruid_farleft.overlay = CreateFrame("Frame", nil, infDruid_farleft)
	infDruid_farleft.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_farleft.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_farleft.border = CreateFrame("Frame", nil, infDruid_farleft)
	infDruid_farleft.border:SetAllPoints(true)
	infDruid_farleft.border:SetBackdrop(backdrop)

	infDruid_farleft.text = infDruid_farleft:CreateFontString(nil, "OVERLAY")
	infDruid_farleft.text:SetAllPoints(true)
	infDruid_farleft.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infDruid_farleft.text:SetShadowColor(0, 0, 0, 0.8)
	infDruid_farleft.text:SetShadowOffset(2, -2)
	infDruid_farleft.text:SetTextColor(1, 1, 0)

	-- infDruid_left
	infDruid_left = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_left:SetSize(size, size)
	infDruid_left:SetPoint("CENTER", -51, 0)
	infDruid_left:Hide()

	infDruid_left.icon = infDruid_left:CreateTexture(nil, "BACKGROUND")
	infDruid_left.icon:SetAllPoints(true)

	infDruid_left.cdtexture = CreateFrame("Cooldown", nil, infDruid_left, "CooldownFrameTemplate")
	infDruid_left.cdtexture:SetReverse(true)
	infDruid_left.cdtexture:SetAllPoints(true)
	infDruid_left.cdtexture.noCooldownCount = true
	infDruid_left.cdtexture:SetFrameLevel(2)

	infDruid_left.overlay = CreateFrame("Frame", nil, infDruid_left)
	infDruid_left.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_left.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_left.border = CreateFrame("Frame", nil, infDruid_left)
	infDruid_left.border:SetAllPoints(true)
	infDruid_left.border:SetBackdrop(backdrop)

	infDruid_left.text = infDruid_left:CreateFontString(nil, "OVERLAY")
	infDruid_left.text:SetAllPoints(true)
	infDruid_left.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infDruid_left.text:SetShadowColor(0, 0, 0, 0.8)
	infDruid_left.text:SetShadowOffset(2, -2)
	infDruid_left.text:SetTextColor(1, 1, 0)

	-- infDruid_center
	infDruid_center = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_center:SetSize(size, size)
	infDruid_center:SetPoint("CENTER", 0, 0)
	infDruid_center:Hide()

	infDruid_center.icon = infDruid_center:CreateTexture(nil, "BACKGROUND")
	infDruid_center.icon:SetAllPoints(true)

	infDruid_center.cdtexture = CreateFrame("Cooldown", nil, infDruid_center, "CooldownFrameTemplate")
	infDruid_center.cdtexture:SetReverse(true)
	infDruid_center.cdtexture:SetAllPoints(true)
	infDruid_center.cdtexture.noCooldownCount = true
	infDruid_center.cdtexture:SetFrameLevel(2)

	infDruid_center.overlay = CreateFrame("Frame", nil, infDruid_center)
	infDruid_center.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_center.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_center.border = CreateFrame("Frame", nil, infDruid_center)
	infDruid_center.border:SetAllPoints(true)
	infDruid_center.border:SetBackdrop(backdrop)

	infDruid_center.text = infDruid_center:CreateFontString(nil, "OVERLAY")
	infDruid_center.text:SetAllPoints(true)
	infDruid_center.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infDruid_center.text:SetShadowColor(0, 0, 0, 0.8)
	infDruid_center.text:SetShadowOffset(2, -2)
	infDruid_center.text:SetTextColor(1, 1, 0)

	-- infDruid_right
	infDruid_right = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_right:SetSize(size, size)
	infDruid_right:SetPoint("CENTER", 51, 0)
	infDruid_right:Hide()

	infDruid_right.icon = infDruid_right:CreateTexture(nil, "BACKGROUND")
	infDruid_right.icon:SetAllPoints(true)

	infDruid_right.cdtexture = CreateFrame("Cooldown", nil, infDruid_right, "CooldownFrameTemplate")
	infDruid_right.cdtexture:SetReverse(true)
	infDruid_right.cdtexture:SetAllPoints(true)
	infDruid_right.cdtexture.noCooldownCount = true
	infDruid_right.cdtexture:SetFrameLevel(2)

	infDruid_right.overlay = CreateFrame("Frame", nil, infDruid_right)
	infDruid_right.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_right.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_right.border = CreateFrame("Frame", nil, infDruid_right)
	infDruid_right.border:SetAllPoints(true)
	infDruid_right.border:SetBackdrop(backdrop)

	infDruid_right.text = infDruid_right:CreateFontString(nil, "OVERLAY")
	infDruid_right.text:SetAllPoints(true)
	infDruid_right.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infDruid_right.text:SetShadowColor(0, 0, 0, 0.8)
	infDruid_right.text:SetShadowOffset(2, -2)
	infDruid_right.text:SetTextColor(1, 1, 0)

	-- infDruid_farright
	infDruid_farright = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_farright:SetSize(size, size)
	infDruid_farright:SetPoint("CENTER", 102, 0)
	infDruid_farright:Hide()

	infDruid_farright.icon = infDruid_farright:CreateTexture(nil, "BACKGROUND")
	infDruid_farright.icon:SetAllPoints(true)

	infDruid_farright.cdtexture = CreateFrame("Cooldown", nil, infDruid_farright, "CooldownFrameTemplate")
	infDruid_farright.cdtexture:SetReverse(true)
	infDruid_farright.cdtexture:SetAllPoints(true)
	infDruid_farright.cdtexture.noCooldownCount = true
	infDruid_farright.cdtexture:SetFrameLevel(2)

	infDruid_farright.overlay = CreateFrame("Frame", nil, infDruid_farright)
	infDruid_farright.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_farright.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_farright.border = CreateFrame("Frame", nil, infDruid_farright)
	infDruid_farright.border:SetAllPoints(true)
	infDruid_farright.border:SetBackdrop(backdrop)

	infDruid_farright.text = infDruid_farright:CreateFontString(nil, "OVERLAY")
	infDruid_farright.text:SetAllPoints(true)
	infDruid_farright.text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	infDruid_farright.text:SetShadowColor(0, 0, 0, 0.8)
	infDruid_farright.text:SetShadowOffset(2, -2)
	infDruid_farright.text:SetTextColor(1, 1, 0)

	-- infDruid_reminder_farleft
	infDruid_reminder_farleft = CreateFrame("Frame", nil, infDruid_frame)
	infDruid_reminder_farleft:SetSize(size, size)
	infDruid_reminder_farleft:SetPoint("CENTER", -275, -69)
	infDruid_reminder_farleft:Hide()

	infDruid_reminder_farleft.icon = infDruid_reminder_farleft:CreateTexture(nil, "BACKGROUND")
	infDruid_reminder_farleft.icon:SetAllPoints(true)
	infDruid_reminder_farleft.icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration")

	infDruid_reminder_farleft.overlay = CreateFrame("Frame", nil, infDruid_reminder_farleft)
	infDruid_reminder_farleft.overlay:SetPoint("TOPLEFT", -3, 3)
	infDruid_reminder_farleft.overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	infDruid_reminder_farleft.border = CreateFrame("Frame", nil, infDruid_reminder_farleft)
	infDruid_reminder_farleft.border:SetAllPoints(true)
	infDruid_reminder_farleft.border:SetBackdrop(backdrop)
end

function infDruid:PLAYER_TOTEM_UPDATE(_, slot)
	local haveTotem, _, startTime, duration = GetTotemInfo(slot)
	if haveTotem then
		self:DruidTracker(147349, _, _, duration, startTime)
	else
		self:Clear(147349)
	end
end

function infDruid:IsResto(flag)
	if flag then
		self:RegisterEvent("PLAYER_TOTEM_UPDATE")
	else
		self:UnregisterEvent("PLAYER_TOTEM_UPDATE")
		infDruid_farright:Hide()
	end
end

function infDruid:PLAYER_TALENT_UPDATE()
	local spec = GetSpecialization()
	self:IsResto(spec == 4)
	if spec == 4 then
		druidSpells = {
			[100977] = true, --harmony
			[114108] = true --soul of the forest
		}	
	elseif spec == 3 then
		druidSpells = {
		}
	elseif spec == 2 then
		druidSpells = {
			[69369] = true, --predatory swiftness
			[52610] = true, --savage roar
			[145152] = true, --bloodtalons
			[174544] = true --savage roar (glyphed)
		}
	else
		druidSpells = {
			[164547] = true, --lunar empowerment
			[164545] = true --solar empowerment
		}
	end
end

function infDruid:UNIT_AURA(_, unit)
	for spellId in pairs(druidSpells) do
		druidSpells[spellId] = true
	end
	local t = 1
	while true do
		local _, _, icon, count, _, duration, expirationTime, _, _, _, spellId = UnitBuff(unit, t)
		if druidSpells[spellId] then
			if spellId == 174544 then spellId = 52610 end --temp solution for savage roar having 2 spellIds
			self:DruidTracker(spellId, icon, count, duration, expirationTime)
			druidSpells[spellId] = false
		end
		t = t + 1
		if not UnitBuff(unit, t) then break end
	end
	for spellId, flag in pairs(druidSpells) do
		if flag == true then
			self:Clear(spellId)
		end
	end
	if (not GetRaidBuffTrayAuraInfo(1) or not GetRaidBuffTrayAuraInfo(9)) then --stats & versatility
		self:DruidTracker("buff")
	else
		self:Clear("buff")
	end
end

function infDruid:DruidTracker(spellId, icon, count, duration, expirationTime)
	if spellId == 69369 then --predatory swiftness
		if infDruid_farleft.cdtexture.noCooldownCount == true then
			infDruid_farleft.cdtexture.noCooldownCount = false
		end
		if infDruid_farleft.icon:GetTexture() ~= icon then
			infDruid_farleft.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_farleft.cdtexture, startTime, duration, true)
			infDruid_farleft:Show()
		end
		ActionButton_ShowOverlayGlow(infDruid_farleft.overlay)
	elseif spellId == 100977 then --harmony
		if infDruid_center.cdtexture.noCooldownCount == true then
			infDruid_center.cdtexture.noCooldownCount = false
		end
		if infDruid_center.icon:GetTexture() ~= icon then
			infDruid_center.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_center.cdtexture, startTime, duration, true)
			infDruid_center:Show()
		end
	elseif spellId == 114108 then --soul of the forest
		if infDruid_farleft.cdtexture.noCooldownCount == true then
			infDruid_farleft.cdtexture.noCooldownCount = false
		end
		if infDruid_farleft.icon:GetTexture() ~= icon then
			infDruid_farleft.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_farleft.cdtexture, startTime, duration, true)
			infDruid_farleft:Show()
		end
		ActionButton_ShowOverlayGlow(infDruid_farleft.overlay)
	elseif spellId == 52610 then --savage roar
		if infDruid_center.cdtexture.noCooldownCount == true then
			infDruid_center.cdtexture.noCooldownCount = false
		end
		if infDruid_center.icon:GetTexture() ~= icon then
			infDruid_center.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_center.cdtexture, startTime, duration, true)
			infDruid_center:Show()
		end
	elseif spellId == 145152 then --bloodtalons
		if infDruid_farright.cdtexture.noCooldownCount == false then
			infDruid_farright.cdtexture.noCooldownCount = true
		end
		if infDruid_farright.icon:GetTexture() ~= icon then
			infDruid_farright.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_farright.cdtexture, startTime, duration, true)
			infDruid_farright:Show()
		end
		infDruid_farright.text:SetText(count)
		if count > 1 then
			infDruid_farright.text:SetTextColor(1, 0, 0)
		else
			infDruid_farright.text:SetTextColor(1, 1, 0)
		end
	elseif spellId == 164547 then --lunar empowerment
		if infDruid_farleft.cdtexture.noCooldownCount == false then
			infDruid_farleft.cdtexture.noCooldownCount = true
		end
		if infDruid_farleft.icon:GetTexture() ~= icon then
			infDruid_farleft.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_farleft.cdtexture, startTime, duration, true)
			infDruid_farleft:Show()
		end
		if count > 1 then
			infDruid_farleft.text:SetTextColor(1, 0, 0)
		else
			infDruid_farleft.text:SetTextColor(1, 1, 0)
		end
		infDruid_farleft.text:SetText(count)
	elseif spellId == 164545 then --solar empowerment
		if infDruid_farright.cdtexture.noCooldownCount == false then
			infDruid_farright.cdtexture.noCooldownCount = true
		end
		if infDruid_farright.icon:GetTexture() ~= icon then
			infDruid_farright.icon:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(infDruid_farright.cdtexture, startTime, duration, true)
			infDruid_farright:Show()
		end
		if count > 2 then
			infDruid_farright.text:SetTextColor(1, 0, 0)
		else
			infDruid_farright.text:SetTextColor(1, 1, 0)
		end
		infDruid_farright.text:SetText(count)
	elseif spellId == 147349 then --wild mushroom
		if infDruid_farright.cdtexture.noCooldownCount == true then
			infDruid_farright.cdtexture.noCooldownCount = false
		end
		if infDruid_farright.icon:GetTexture() ~= "Interface\\Icons\\Druid_Ability_WildMushroom_A" then
			infDruid_farright.icon:SetTexture("Interface\\Icons\\Druid_Ability_WildMushroom_A")
		end
		CooldownFrame_SetTimer(infDruid_farright.cdtexture, expirationTime, duration, true)
		infDruid_farright:Show()
	elseif spellId == "buff" then
		infDruid_reminder_farleft:Show()
		ActionButton_ShowOverlayGlow(infDruid_reminder_farleft.overlay)	
	end
end

function infDruid:Clear(spellId)
	if spellId == 69369 then --predatory swiftness
		ActionButton_HideOverlayGlow(infDruid_farleft.overlay)
		infDruid_farleft:Hide()
	elseif spellId == 100977 then --harmony
		infDruid_center:Hide()
	elseif spellId == 114108 then --soul of the forest
		ActionButton_HideOverlayGlow(infDruid_farleft.overlay)
		infDruid_farleft:Hide()
	elseif spellId == 52610 then --savage roar
		infDruid_center:Hide()
	elseif spellId == 145152 then --bloodtalons
		infDruid_farright.text:SetText("")
		infDruid_farright:Hide()
	elseif spellId == 164547 then --lunar empowerment
		infDruid_farleft.text:SetText("")
		infDruid_farleft:Hide()
	elseif spellId == 164545 then --solar empowerment
		infDruid_farright.text:SetText("")
		infDruid_farright:Hide()
	elseif spellId == 147349 then --wild mushroom
		infDruid_farright:Hide()
	elseif spellId == "buff" then
		ActionButton_HideOverlayGlow(infDruid_reminder_farleft.overlay)
		infDruid_reminder_farleft:Hide()
	end
end

