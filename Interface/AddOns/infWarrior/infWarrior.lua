----------------------------------------------
-- infWarrior
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "WARRIOR" then return end

local infWarrior = CreateFrame("Frame", "infWarrior")
infWarrior:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infWarrior:RegisterEvent("PLAYER_LOGIN")

local pairs = pairs
local IsShown = IsShown
local UnitBuff = UnitBuff
local CooldownFrame_SetTimer = CooldownFrame_SetTimer

local player_buffs = {
	["Enrage"] = false, --12880
	["Bloodsurge"] = false, --46916
	["Taste for Blood"] = false, --60503
	["Meat Cleaver"] = false, --85739	
	["Raging Wind"] = false, --115317
	["Raging Blow!"] = false --131116
}

function infWarrior:PLAYER_LOGIN()
	self:FrameCreation()

	self:RegisterUnitEvent("UNIT_AURA", "player")
end

function infWarrior:FrameCreation()
	local size = 40
	local backdrop = {
		bgFile = nil, 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	}	

	--Enrage
	enr_icon = CreateFrame("Frame", nil, UIParent)
	enr_icon:SetSize(size, size)
	enr_icon:SetPoint("CENTER", UIParent, "CENTER", -102, -96)
	enr_icon.cdtexture = CreateFrame("Cooldown", nil, enr_icon, "CooldownFrameTemplate")
	enr_icon.cdtexture:SetReverse(true)
	enr_icon.cdtexture:SetAllPoints(true)
	enr_icon.cdtexture:SetFrameLevel(1)
	enr_icon:Hide()

	enr_texture = enr_icon:CreateTexture(nil, "BACKGROUND")
	enr_texture:SetAllPoints(true)
	enr_texture:SetTexture("Interface\\Icons\\Spell_Shadow_Unholyfrenzy")	

	enr_border = CreateFrame("Frame", nil, enr_icon)
	enr_border:SetAllPoints(true)
    enr_border:SetBackdrop(backdrop)
	
	--Bloodsurge
	sur_icon = CreateFrame("Frame", nil, UIParent)
	sur_icon:SetSize(size, size)
	sur_icon:SetPoint("CENTER", UIParent, "CENTER", 102, -96)
	sur_icon.cdtexture = CreateFrame("Cooldown", nil, sur_icon, "CooldownFrameTemplate")
	sur_icon.cdtexture:SetReverse(true)
	sur_icon.cdtexture:SetAllPoints(true)
	sur_icon.cdtexture.noCooldownCount = true
	sur_icon.cdtexture:SetFrameLevel(1)
	sur_icon:Hide()

	sur_texture = sur_icon:CreateTexture(nil, "BACKGROUND")
	sur_texture:SetAllPoints(true)
	sur_texture:SetTexture("Interface\\Icons\\Ability_Warrior_Bloodsurge")

	sur_border = CreateFrame("Frame", nil, sur_icon)
	sur_border:SetAllPoints(true)
    sur_border:SetBackdrop(backdrop)

	sur_text = sur_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	sur_text:SetAllPoints(true)
	sur_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	sur_text:SetShadowColor(0, 0, 0, 0.8)
	sur_text:SetShadowOffset(2, -2)
	sur_text:SetTextColor(1, 1, 0)

	--Taste for Blood
	tfb_icon = CreateFrame("Frame", nil, UIParent)
	tfb_icon:SetSize(size, size)
	tfb_icon:SetPoint("CENTER", UIParent, "CENTER", 0, -96)
	tfb_icon.cdtexture = CreateFrame("Cooldown", nil, tfb_icon, "CooldownFrameTemplate")
	tfb_icon.cdtexture:SetReverse(true)
	tfb_icon.cdtexture:SetAllPoints(true)
	tfb_icon.cdtexture.noCooldownCount = true
	tfb_icon.cdtexture:SetFrameLevel(1)
	tfb_icon:Hide()

	tfb_texture = tfb_icon:CreateTexture(nil, "BACKGROUND")
	tfb_texture:SetAllPoints(true)
	tfb_texture:SetTexture("Interface\\Icons\\Ability_MeleeDamage")

	tfb_border = CreateFrame("Frame", nil, tfb_icon)
	tfb_border:SetAllPoints(true)
    tfb_border:SetBackdrop(backdrop)

	tfb_text = tfb_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	tfb_text:SetAllPoints(true)
	tfb_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	tfb_text:SetShadowColor(0, 0, 0, 0.8)
	tfb_text:SetShadowOffset(2, -2)
	tfb_text:SetTextColor(1, 1, 0)

	--Meat Cleaver
	met_icon = CreateFrame("Frame", nil, UIParent)
	met_icon:SetSize(size, size)
	met_icon:SetPoint("CENTER", UIParent, "CENTER", 51, -96)
	met_icon.cdtexture = CreateFrame("Cooldown", nil, met_icon, "CooldownFrameTemplate")
	met_icon.cdtexture:SetReverse(true)
	met_icon.cdtexture:SetAllPoints(true)
	met_icon.cdtexture.noCooldownCount = true
	met_icon.cdtexture:SetFrameLevel(1)
	met_icon:Hide()

	met_texture = met_icon:CreateTexture(nil, "BACKGROUND")
	met_texture:SetAllPoints(true)
	met_texture:SetTexture("Interface\\Icons\\Warrior_Talent_Icon_Mastercleaver")

	met_border = CreateFrame("Frame", nil, met_icon)
	met_border:SetAllPoints(true)
    met_border:SetBackdrop(backdrop)

	met_text = met_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	met_text:SetAllPoints(true)
	met_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	met_text:SetShadowColor(0, 0, 0, 0.8)
	met_text:SetShadowOffset(2, -2)
	met_text:SetTextColor(1, 1, 0)

	--Raging Wind
	rgw_icon = CreateFrame("Frame", nil, UIParent)
	rgw_icon:SetSize(size, size)
	rgw_icon:SetPoint("CENTER", UIParent, "CENTER", -51, -96)
	rgw_icon.cdtexture = CreateFrame("Cooldown", nil, rgw_icon, "CooldownFrameTemplate")
	rgw_icon.cdtexture:SetReverse(true)
	rgw_icon.cdtexture:SetAllPoints(true)
	rgw_icon.cdtexture:SetFrameLevel(1)
	rgw_icon:Hide()

	rgw_texture = rgw_icon:CreateTexture(nil, "BACKGROUND")
	rgw_texture:SetAllPoints(true)
	rgw_texture:SetTexture("Interface\\Icons\\Ability_Druid_Galewinds")	

	rgw_border = CreateFrame("Frame", nil, rgw_icon)
	rgw_border:SetAllPoints(true)
    rgw_border:SetBackdrop(backdrop)

	--Raging Blow
	rag_icon = CreateFrame("Frame", nil, UIParent)
	rag_icon:SetSize(size, size)
	rag_icon:SetPoint("CENTER", UIParent, "CENTER", 0, -96)
	rag_icon.cdtexture = CreateFrame("Cooldown", nil, rag_icon, "CooldownFrameTemplate")
	rag_icon.cdtexture:SetReverse(true)
	rag_icon.cdtexture:SetAllPoints(true)
	rag_icon.cdtexture.noCooldownCount = true
	rag_icon.cdtexture:SetFrameLevel(1)
	rag_icon:Hide()

	rag_texture = rag_icon:CreateTexture(nil, "BACKGROUND")
	rag_texture:SetAllPoints(true)
	rag_texture:SetTexture("Interface\\Icons\\Warrior_Wild_Strike")

	rag_border = CreateFrame("Frame", nil, rag_icon)
	rag_border:SetAllPoints(true)
    rag_border:SetBackdrop(backdrop)

	rag_text = rag_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	rag_text:SetAllPoints(true)
	rag_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	rag_text:SetShadowColor(0, 0, 0, 0.8)
	rag_text:SetShadowOffset(2, -2)
	rag_text:SetTextColor(1, 1, 0)
end

function infWarrior:UNIT_AURA(_, unit)
	for buff in pairs(player_buffs) do
		local _, _, icon, count, _, duration, expirationTime = UnitBuff(unit, buff)
		if icon then
			self:WarriorTracker(buff, count, duration, expirationTime)
			if not player_buffs[buff] then
				player_buffs[buff] = true
			end
		else
			if player_buffs[buff] then
				player_buffs[buff] = false
				self:Clear(buff)
			end
		end
	end
end

function infWarrior:WarriorTracker(buff, count, duration, expirationTime)
	if buff == "Enrage" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(enr_icon.cdtexture, startTime, duration, true)
			enr_icon:Show()
		end
	elseif buff == "Bloodsurge" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(sur_icon.cdtexture, startTime, duration, true)
			sur_icon:Show()
		end
		sur_text:SetText(count)
	elseif buff == "Taste for Blood" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(tfb_icon.cdtexture, startTime, duration, true)
			tfb_icon:Show()
		end	
		tfb_text:SetText(count)
	elseif buff == "Meat Cleaver" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(met_icon.cdtexture, startTime, duration, true)
			met_icon:Show()
		end
		met_text:SetText(count)
		if count > 2 then
			met_text:SetTextColor(1, 0, 0)
		else
			met_text:SetTextColor(1, 1 ,0)
		end
	elseif buff == "Raging Wind" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(rgw_icon.cdtexture, startTime, duration, true)
			rgw_icon:Show()
		end		
	elseif buff == "Raging Blow!" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(rag_icon.cdtexture, startTime, duration, true)
			rag_icon:Show()
		end
		rag_text:SetText(count)
		if count > 1 then
			rag_text:SetTextColor(1, 0, 0)
		else
			rag_text:SetTextColor(1, 1, 0)
		end
	end
end

function infWarrior:Clear(buff)
	if buff == "Enrage" then
		enr_icon:Hide()
	elseif buff == "Bloodsurge" then
		sur_icon:Hide()
	elseif buff == "Taste for Blood" then
		tfb_icon:Hide()
	elseif buff == "Meat Cleaver" then
		met_icon:Hide()
	elseif buff == "Raging Wind" then
		rgw_icon:Hide()		
	elseif buff == "Raging Blow!" then
		rag_icon:Hide()
	end
end

