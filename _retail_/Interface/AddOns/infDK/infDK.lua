----------------------------------------------
-- infDK
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "DEATHKNIGHT" then return end

local infDK = CreateFrame("Frame", "infDK")
infDK:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infDK:RegisterEvent("PLAYER_LOGIN")

local pairs = pairs
local IsShown = IsShown
local UnitBuff = UnitBuff
local GetTexture = GetTexture
local CooldownFrame_SetTimer = CooldownFrame_SetTimer
local ActionButton_ShowOverlayGlow = ActionButton_ShowOverlayGlow
local ActionButton_HideOverlayGlow = ActionButton_HideOverlayGlow

local player_buffs = {
	["Blood Charge"] = false, --114851
	["Dark Simulacrum"] = false, --77606
	["Conversion"] = false, --119975
	["Killing Machine"] = false --51124
}

local pet_buffs = {
	["Shadow Infusion"] = false, --91342
	["Dark Transformation"] = false --63560
}

function infDK:PLAYER_LOGIN()
	self:FrameCreation()

	self:RegisterUnitEvent("UNIT_AURA", "player", "pet")
	self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	self:RegisterEvent("UNIT_PET")
end

function infDK:FrameCreation()
	local size = 44.2
	local backdrop = {
		bgFile = nil, 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	}

	--Blood Tap
	tap_icon = CreateFrame("Frame", nil, UIParent)
	tap_icon:SetSize(size, size)
	tap_icon:SetPoint("CENTER", 0, -113.4)
	tap_icon.cdtexture = CreateFrame("Cooldown", nil, tap_icon, "CooldownFrameTemplate")
	tap_icon.cdtexture:SetReverse(true)
	tap_icon.cdtexture:SetAllPoints(true)
	tap_icon.cdtexture.noCooldownCount = true
	tap_icon.cdtexture:SetFrameLevel(1)
	tap_icon:Hide()

	tap_texture = tap_icon:CreateTexture(nil, "BACKGROUND")
	tap_texture:SetAllPoints(true)
	tap_texture:SetTexture("Interface\\Icons\\Spell_Deathknight_Bloodtap")
	--tap_texture:SetDesaturated(1) --greyscale
	--tap_texture:SetTexCoord(.07, .9, .07, .90) --zoomed

	tap_border = CreateFrame("Frame", nil, tap_icon)
	tap_border:SetAllPoints(true)
    tap_border:SetBackdrop(backdrop)

	tap_text = tap_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	tap_text:SetAllPoints(true)
	tap_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	tap_text:SetShadowColor(0, 0, 0, 0.8)
	tap_text:SetShadowOffset(2, -2)
	tap_text:SetTextColor(1,1,0)
	tap_text:SetText("")	

	--Shadow Infusion
	pet_icon = CreateFrame("Frame", nil, UIParent)
	pet_icon:SetSize(size, size)
	pet_icon:SetPoint("CENTER", -102, -96)
	pet_icon.cdtexture = CreateFrame("Cooldown", nil, pet_icon, "CooldownFrameTemplate")
	pet_icon.cdtexture:SetReverse(true)
	pet_icon.cdtexture:SetAllPoints(true)
	pet_icon.cdtexture.noCooldownCount = false
	pet_icon.cdtexture:SetFrameLevel(1)
	pet_icon:Hide()

	pet_texture = pet_icon:CreateTexture(nil, "BACKGROUND")
	pet_texture:SetAllPoints(true)

	pet_overlay = CreateFrame("Frame", nil, pet_icon)
	pet_overlay:ClearAllPoints()
	pet_overlay:SetPoint("TOPLEFT", -3, 3)
	pet_overlay:SetPoint("BOTTOMRIGHT", 3, -3)

	pet_border = CreateFrame("Frame", nil, pet_icon)
	pet_border:SetAllPoints(true)
    pet_border:SetBackdrop(backdrop)

	pet_text = pet_icon.cdtexture:CreateFontString(nil, "OVERLAY")
	pet_text:SetAllPoints(true)
	pet_text:SetFont(STANDARD_TEXT_FONT, 27, "OUTLINE")
	pet_text:SetShadowColor(0, 0, 0, 0.8)
	pet_text:SetShadowOffset(2, -2)
	pet_text:SetTextColor(1,1,0)
	pet_text:SetText("")

	--Dark Simulacrum
	dsc_icon = CreateFrame("Frame", nil, UIParent)
	dsc_icon:SetSize(size, size)
	dsc_icon:SetPoint("CENTER", 102, -96)
	dsc_icon.cdtexture = CreateFrame("Cooldown", nil, dsc_icon, "CooldownFrameTemplate")
	dsc_icon.cdtexture:SetReverse(true)
	dsc_icon.cdtexture:SetAllPoints(true)
	dsc_icon.cdtexture:SetFrameLevel(1)
	dsc_icon:Hide()

	dsc_texture = dsc_icon:CreateTexture(nil, "BACKGROUND")
	dsc_texture:SetAllPoints(true)

	dsc_border = CreateFrame("Frame", nil, dsc_icon)
	dsc_border:SetAllPoints(true)
    dsc_border:SetBackdrop(backdrop)

	--Conversion
	con_icon = CreateFrame("Frame", nil, UIParent)
	con_icon:SetSize(size, size)
	con_icon:SetPoint("CENTER", 51, -96)
	con_icon:Hide()

	con_texture = con_icon:CreateTexture(nil, "BACKGROUND")
	con_texture:SetAllPoints(true)

	con_border = CreateFrame("Frame", nil, con_icon)
	con_border:SetAllPoints(true)
    con_border:SetBackdrop(backdrop)
end

function infDK:ACTIVE_TALENT_GROUP_CHANGED()
	if pet_icon:IsShown() then
		self:Clear("Shadow Infusion")
	end
end

function infDK:UNIT_PET(_, unit)
	if unit ~= "player" then return end
	if not UnitExists("pet") then
		if pet_icon:IsShown() then
			self:Clear("Shadow Infusion")
		end
	end	
end

function infDK:UNIT_AURA(_, unit)
	if unit == "player" then
		for name in pairs(player_buffs) do
			local _, _, icon, count, _, duration, expirationTime = UnitBuff(unit, name)
			if icon then
				self:DKTracker(name, icon, count, duration, expirationTime)
				if not player_buffs[name] then
					player_buffs[name] = true
				end
			else
				if player_buffs[name] then
					player_buffs[name] = false
					self:Clear(name)
				end
			end
		end
	elseif unit == "pet" then
		for name in pairs(pet_buffs) do
			local _, _, icon, count, _, duration, expirationTime = UnitBuff(unit, name)
			if icon then
				self:DKTracker(name, icon, count, duration, expirationTime)
				if not pet_buffs[name] then
					pet_buffs[name] = true
				end
			else
				if pet_buffs[name] then
					pet_buffs[name] = false
					self:Clear(name)
				end
			end
		end
	end
end

function infDK:DKTracker(name, icon, count, duration, expirationTime)
	if name == "Blood Charge" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(tap_icon.cdtexture, startTime, duration, true)
			tap_icon:Show()
		end
		tap_text:SetText(count)
		if count > 4 and count < 10 then
			tap_text:SetTextColor(1, .5, 0)
		elseif count >= 10 then
			tap_text:SetTextColor(1, 0, 0)
		else
			tap_text:SetTextColor(1, 1, 0)
		end
	elseif name == "Dark Simulacrum" then
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(dsc_icon.cdtexture, startTime, duration, true)
			dsc_icon:Show()
		end
		local texture = GetSpellTexture(name)
		if dsc_texture:GetTexture() ~= texture then
			dsc_texture:SetTexture(texture)
		end
	elseif name == "Conversion" then
		if not con_icon:IsShown() then
			con_icon:Show()
		end
		if con_texture:GetTexture() ~= icon then
			con_texture:SetTexture(icon)
		end
	elseif name == "Killing Machine" then
		if pet_icon.cdtexture.noCooldownCount == true then
			pet_icon.cdtexture.noCooldownCount = false
		end
		if pet_texture:GetTexture() ~= icon then
			pet_texture:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(pet_icon.cdtexture, startTime, duration, true)
			pet_icon:Show()
		end
		ActionButton_ShowOverlayGlow(pet_overlay)
		pet_text:SetText("")
	elseif name == "Shadow Infusion" then
		if pet_icon.cdtexture.noCooldownCount == false then
			pet_icon.cdtexture.noCooldownCount = true
			pet_texture:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(pet_icon.cdtexture, startTime, duration, true)
			pet_icon:Show()
		end
		if count == 5 then
			ActionButton_ShowOverlayGlow(pet_overlay)
		end
		pet_text:SetText(count)
	elseif name == "Dark Transformation" then
		if pet_icon.cdtexture.noCooldownCount == true then
			pet_icon.cdtexture.noCooldownCount = false
			pet_texture:SetTexture(icon)
		end
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			CooldownFrame_SetTimer(pet_icon.cdtexture, startTime, duration, true)
			pet_icon:Show()
		end
		pet_text:SetText("")
	end
end

function infDK:Clear(name)
	if name == "Blood Charge" then
		tap_icon:Hide()
	elseif name == "Dark Simulacrum" then
		dsc_icon:Hide()
	elseif name == "Conversion" then
		con_icon:Hide()
	elseif name == "Killing Machine" then
		ActionButton_HideOverlayGlow(pet_overlay)
		pet_icon:Hide()
	elseif name == "Shadow Infusion" then
		ActionButton_HideOverlayGlow(pet_overlay)
		--pet_overlay:StopAnimating()
		pet_icon:Hide()
	elseif name == "Dark Transformation" then
		pet_icon:Hide()
	end
end

