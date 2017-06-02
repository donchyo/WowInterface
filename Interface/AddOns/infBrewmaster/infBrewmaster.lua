----------------------------------------------
-- infBrewmaster
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "MONK" then return end

local infBrewmaster = CreateFrame("Frame", "infBrewmaster")
infBrewmaster:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infBrewmaster:RegisterEvent("ADDON_LOADED")

local resolve
local playerName = UnitName("player")

local IsShown = IsShown
local UnitAura = UnitAura

local monkSpells = {
	[115307] = true, --shuffle
	[124275] = true, --light stagger
	[124274] = true, --moderate stagger
	[124273] = true, --heavy stagger
	[158300] = true --resolve
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

local function IsTank()
	local spec = GetSpecialization()
	return spec == 1
end

function infBrewmaster:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infBrewmaster:FrameCreation()
	local backdrop = {
		bgFile = nil, 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 11,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	}

	--Stagger
	stagger_frame = CreateFrame("Frame", nil, UIParent)
	stagger_frame:SetSize(140, 24)
	stagger_frame:SetPoint("CENTER", UIParent, "CENTER", 0, -61)
    stagger_frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12,
		tile = false,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	})
	stagger_frame:SetBackdropColor(0, 0, 0, 0.6)
	stagger_frame:Hide()

	stagger_text = stagger_frame:CreateFontString(nil, "OVERLAY")
	stagger_text:SetPoint("LEFT", stagger_frame, "LEFT", 6, 0)
	stagger_text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	stagger_text:SetJustifyH("LEFT")
	stagger_text:SetSize(60, 24)
	stagger_text:SetText("0")

	--Resolve
	reso_text = stagger_frame:CreateFontString(nil, "OVERLAY")
	reso_text:SetPoint("RIGHT", stagger_frame, "RIGHT", -4, 0)
	reso_text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	reso_text:SetJustifyH("RIGHT")
	reso_text:SetSize(60, 24)
	reso_text:SetText("0%")

	--Guard
	grd_text = stagger_frame:CreateFontString(nil, "OVERLAY")
	grd_text:SetPoint("CENTER", stagger_frame, "CENTER", 0, 0)
	grd_text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	grd_text:SetSize(60, 24)
	grd_text:SetText("0")

	--Shuffle
	shuf_icon = CreateFrame("Frame", nil, UIParent)
	shuf_icon:SetSize(34, 34)
	shuf_icon:SetPoint("BOTTOMLEFT", stagger_frame, "TOPLEFT", 0, 4)
	shuf_icon.cdtexture = CreateFrame("Cooldown", nil, shuf_icon)
	shuf_icon.cdtexture:SetReverse(true)
	shuf_icon.cdtexture:SetAllPoints(true)
	shuf_icon.cdtexture:SetFrameLevel(1)
	shuf_icon:Hide()

	shuf_texture = shuf_icon:CreateTexture(nil, "BACKGROUND")
	shuf_texture:SetAllPoints(true)
	shuf_texture:SetTexture("Interface\\Icons\\Ability_Monk_Shuffle")

	shuf_border = CreateFrame("Frame", nil, shuf_icon)
	shuf_border:SetAllPoints(true)
    shuf_border:SetBackdrop(backdrop)
end

function infBrewmaster:PLAYER_TALENT_UPDATE()
	if IsTank() then
		if not stagger_frame:IsShown() then
			self:RegisterUnitEvent("UNIT_AURA", "player")
			self:RegisterUnitEvent("UNIT_ABSORB_AMOUNT_CHANGED", "player")
			self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			stagger_frame:SetParent(UIParent)
			stagger_frame:Show()
			print("|cff3399FFinf|rBrewmaster: ON")
		end
	else
		if stagger_frame:IsShown() then
			self:UnregisterEvent("UNIT_AURA")
			self:UnregisterEvent("UNIT_ABSORB_AMOUNT_CHANGED")
			self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			stagger_frame:SetParent(nil)
			stagger_frame:Hide()
			print("|cff3399FFinf|rBrewmaster: OFF")
		end
	end
end

function infBrewmaster:UNIT_ABSORB_AMOUNT_CHANGED(_, unit)
	local _, _, _, _, _, _, _, _, _, _, _, _, _, _, amount = UnitAura(unit, "Guard")
	if amount then
		grd_text:SetText(Short(amount))
	else
		grd_text:SetText("0")
	end
end

function infBrewmaster:UNIT_AURA(_, unit)
	local t = 1
	while true do
		local _, _, _, _, _, duration, expirationTime, _, _, _, spellId, _, _, _, _, amount = UnitAura(unit, t, "HARMFUL")
		if monkSpells[spellId] then
			self:MonkTracker(duration, expirationTime, spellId, amount)
		end
		t = t + 1
		if not UnitAura(unit, t, "HARMFUL") then break end
	end
	local i = 1
	while true do
		local _, _, _, _, _, duration, expirationTime, _, _, _, spellId, _, _, _, amount = UnitAura(unit, i)
		if monkSpells[spellId] then
			self:MonkTracker(duration, expirationTime, spellId, amount)
		end
		i = i + 1
		if not UnitAura(unit, i) then break end
	end
end

function infBrewmaster:MonkTracker(duration, expirationTime, spellId, amount)
	if spellId == 124275 then --Light Stagger
		stagger_text:SetText(Short(amount))
	elseif spellId == 124274 then --Moderate Stagger
		stagger_text:SetText(Short(amount))
	elseif spellId == 124273 then --Heavy Stagger
		stagger_text:SetText(Short(amount))
	elseif spellId == 115307 then --Shuffle
		if expirationTime > 0 then
			local startTime = expirationTime - duration
			shuf_icon.cdtexture:SetCooldown(startTime, duration)
			shuf_icon:Show()
		end		
	elseif spellId == 158300 then --Resolve
		if amount ~= resolve then
			resolve = amount
			reso_text:SetText(amount.."%")
		end
	end
end

function infBrewmaster:COMBAT_LOG_EVENT_UNFILTERED(_, _, event, _, _, _, _, _, _, destName, _, _, spellId)
	if event == "SPELL_AURA_REMOVED" then
		if destName == playerName then
			if monkSpells[spellId] then
				self:Clear(spellId)
			end
		end
	end
end

function infBrewmaster:Clear(spellId)
	if spellId == 124275 then --Light Stagger
		stagger_text:SetText("0")
	elseif spellId == 124274 then --Moderate Stagger
		stagger_text:SetText("0")
	elseif spellId == 124273 then --Heavy Stagger
		stagger_text:SetText("0")
	elseif spellId == 115307 then --Shuffle
		shuf_icon:Hide()
	elseif spellId == 158300 then --Resolve
		reso_text:SetText("0%")
	end
end

