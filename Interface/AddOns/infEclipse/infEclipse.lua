----------------------------------------------
-- infEclipse
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "DRUID" then return end

local infEclipse = CreateFrame("Frame", "infEclipse")
infEclipse:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infEclipse:RegisterEvent("ADDON_LOADED")

local direction

local abs = abs
local max = max
local min = min
local floor = floor
local tostring = tostring
local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax
local GetEclipseDirection = GetEclipseDirection

function infEclipse:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
end

function infEclipse:FrameCreation()
	infEclipse_frame = CreateFrame("Frame", nil, UIParent)
	infEclipse_frame:SetPoint("CENTER", 0, -140)
	infEclipse_frame:SetWidth(140)
	infEclipse_frame:SetHeight(18)
	infEclipse_frame:Hide()

	infEclipse_frame.bg = infEclipse_frame:CreateTexture(nil, "BACKGROUND")
	infEclipse_frame.bg:SetPoint("TOPLEFT", -1, 1)
	infEclipse_frame.bg:SetPoint("BOTTOMRIGHT", 1, -1)
	infEclipse_frame.bg:SetTexture(0, 0, 0)

	infEclipse_frame.lunar = infEclipse_frame:CreateTexture("BACKGROUND")
	infEclipse_frame.lunar:SetPoint("RIGHT", infEclipse_frame, "CENTER", 0, 0)
	infEclipse_frame.lunar:SetWidth(0.1)
	infEclipse_frame.lunar:SetHeight(18)
	infEclipse_frame.lunar:SetTexture(0.13, 0.13, 0.5)
	infEclipse_frame.lunar:Hide()

	infEclipse_frame.solar = infEclipse_frame:CreateTexture("BACKGROUND")
	infEclipse_frame.solar:SetPoint("LEFT", infEclipse_frame, "CENTER", 0, 0)
	infEclipse_frame.solar:SetWidth(0.1)
	infEclipse_frame.solar:SetHeight(18)
	infEclipse_frame.solar:SetTexture(0.6, 0.35, 0)
	infEclipse_frame.solar:Hide()

	infEclipse_frame.text = infEclipse_frame:CreateFontString(nil, "OVERLAY")
	infEclipse_frame.text:SetAllPoints(true)
	infEclipse_frame.text:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
	infEclipse_frame.text:SetText("0")
end

local function IsBoomer()
	local spec = GetSpecialization()
	return spec == 1
end

function infEclipse:PLAYER_TALENT_UPDATE()
	if IsBoomer() then
		if not infEclipse_frame:IsShown() then
			self:RegisterEvent("PLAYER_ENTERING_WORLD")
			self:RegisterEvent("ECLIPSE_DIRECTION_CHANGE")
			self:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
			infEclipse_frame:SetParent(UIParent)
			infEclipse_frame:Show()
			print("|cff3399FFinf|rEclipse: ON")
		end
	else
		if infEclipse_frame:IsShown() then
			self:UnregisterEvent("PLAYER_ENTERING_WORLD")
			self:UnregisterEvent("ECLIPSE_DIRECTION_CHANGE")
			self:UnregisterEvent("UNIT_POWER_FREQUENT")
			infEclipse_frame:SetParent(nil)
			infEclipse_frame:Hide()
			print("|cff3399FFinf|rEclipse: OFF")
		end
	end
end

function infEclipse:PLAYER_ENTERING_WORLD()
	self:UpdateDirection()
end

function infEclipse:ECLIPSE_DIRECTION_CHANGE()
	self:UpdateDirection()
end

function infEclipse:UpdateDirection()
	direction = GetEclipseDirection()
end

function infEclipse:UNIT_POWER_FREQUENT(_, unit, powerType)
	if powerType ~= "ECLIPSE" then return end

	local power = UnitPower(unit, SPELL_POWER_ECLIPSE)
	local maxPower = UnitPowerMax(unit, SPELL_POWER_ECLIPSE)

	if maxPower <= 0 or power > maxPower then
		return
	end

	local powerper = 0
	if direction == "sun" then
		powerper = (power + 100) / (maxPower + 100)
	elseif direction == "moon" then
		powerper = 1 - ((power + 100) / (maxPower + 100))
	else
		powerper = 0
	end
	powerper = max(powerper, 0)
	powerper = min(powerper, 1)

	local powerPerc = abs(((powerper*2)-1) * 70)
	powerPerc = max(powerPerc, 0.1)
	powerPerc = min(powerPerc, 70)

	if direction == "sun" then
		if powerper > 0.5 then
			infEclipse_frame.solar:SetWidth(powerPerc)
			infEclipse_frame.lunar:Hide()
			infEclipse_frame.solar:Show()
		else
			infEclipse_frame.lunar:SetWidth(powerPerc)
			infEclipse_frame.lunar:Show()
			infEclipse_frame.solar:Hide()
		end
	elseif direction == "moon" then
		if powerper > 0.5 then
			infEclipse_frame.lunar:SetWidth(powerPerc)
			infEclipse_frame.lunar:Show()
			infEclipse_frame.solar:Hide()
		else
			infEclipse_frame.solar:SetWidth(powerPerc)
			infEclipse_frame.lunar:Hide()
			infEclipse_frame.solar:Show()
		end
	end

	infEclipse_frame.text:SetText(tostring(abs(power)))
end

