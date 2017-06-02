----------------------------------------------
-- infComboPoints
----------------------------------------------

local _, enClass = UnitClass("player")
if not (enClass == "DRUID" or enClass == "ROGUE") then return end

local infComboPoints = CreateFrame("Frame", "infComboPoints")
infComboPoints:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infComboPoints:RegisterEvent("ADDON_LOADED")

local r = 1.00
local g = 0.49
local b = 0.03
local comboframes = {}
local cat = nil

local GetComboPoints = GetComboPoints

function infComboPoints:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterEvent("UNIT_COMBO_POINTS")
	if enClass == "DRUID" then
		self:RegisterEvent("PLAYER_TALENT_UPDATE")
	end
end

function infComboPoints:UpdateCP(unit)
	local power = GetComboPoints(unit)

	local i = 1
	while i <= power do
		comboframes[i]:SetBackdropColor(r, g, b, 1)
		i = 1 + i
	end
	while i <= MAX_COMBO_POINTS do
		comboframes[i]:SetBackdropColor(r, g, b, 0.1)
		i = 1 + i
	end
end

function infComboPoints:FrameCreation()
	for i = 1, MAX_COMBO_POINTS do
		comboframes[i] = CreateFrame("Frame", "infComboPointsFrame"..i, i == 1 and UIParent or comboframes[i-1])
		comboframes[i]:SetSize(22, 22)
		comboframes[i]:SetBackdrop({
			bgFile = "Interface\\ChatFrame\\ChatFrameBackground", 
			edgeFile = "Interface\\AddOns\\infComboPoints\\Textures\\Border",
			edgeSize = 4,
			tile = false,
			insets = {left = 0.5, right = 0.5, top = 0.5, bottom = 0.5}
		})
		comboframes[i]:SetBackdropColor(r, g, b, 0.1)
		comboframes[i]:SetBackdropBorderColor(0, 0, 0, 1)

		if i == 1 then
			comboframes[i]:SetPoint("CENTER", -47, -150)
		else
			comboframes[i]:SetPoint("RIGHT", 23, 0)
		end
		comboframes[i]:Show()
	end
end

function infComboPoints:UNIT_COMBO_POINTS(_, unit)
	if unit ~= "player" then return end
	self:UpdateCP(unit)
end

function infComboPoints:UPDATE_SHAPESHIFT_FORM()
	local form = GetShapeshiftForm()
	if (form == 2 and not cat) then
		cat = true
		for i = 1, MAX_COMBO_POINTS do
			comboframes[i]:Show()
		end
	elseif (form ~= 2 and cat) then
		cat = nil
		for i = 1, MAX_COMBO_POINTS do
			comboframes[i]:Hide()
		end
	end
end

function infComboPoints:Toggle(flag)
	if flag then
		self:UnregisterEvent("UPDATE_SHAPESHIFT_FORM")
		for i = 1, MAX_COMBO_POINTS do
			comboframes[i]:Show()
		end
	else
		self:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
		for i = 1, MAX_COMBO_POINTS do
			comboframes[i]:Hide()
		end
	end
end

local function IsFeral()
	local spec = GetSpecialization()
	return spec == 2
end

function infComboPoints:PLAYER_TALENT_UPDATE()
	self:Toggle(IsFeral())
end

