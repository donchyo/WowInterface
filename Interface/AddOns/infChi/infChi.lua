----------------------------------------------
-- infChi
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "MONK" then return end

local infChi = CreateFrame("Frame", "infChi")
infChi:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infChi:RegisterEvent("ADDON_LOADED")

local r = 0.97
local g = 0.67
local b = 0.15
local max_chi = 0
local chiframes = {}

local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax

function infChi:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:FrameCreation()

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
	self:RegisterUnitEvent("UNIT_MAXPOWER", "player")
	self:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
end

function infChi:UpdateChi()
	local chi = UnitPower("player", 12)

	local i = 1
	while i <= chi do
		chiframes[i]:SetBackdropColor(r, g, b, 1)
		i = 1 + i
	end
	while i <= max_chi do
		chiframes[i]:SetBackdropColor(r, g, b, 0.1)
		i = 1 + i
	end
end

function infChi:FrameCreation()
	max_chi = UnitPowerMax("player", 12)
	for i = 1, 6 do
		chiframes[i] = CreateFrame("Frame", "infChiFrame"..i, i == 1 and UIParent or chiframes[i-1])
		chiframes[i]:SetSize(22, 22)
		chiframes[i]:SetBackdrop({
			bgFile = "Interface\\ChatFrame\\ChatFrameBackground", 
			edgeFile = "Interface\\AddOns\\infChi\\Textures\\Border",
			edgeSize = 4,
			tile = false,
			insets = {left = 0.5, right = 0.5, top = 0.5, bottom = 0.5}
		})
		chiframes[i]:SetBackdropColor(r, g, b, 0.1)
		chiframes[i]:SetBackdropBorderColor(0, 0, 0, 1)
		if i == 1 then
			if max_chi == 6 then
				chiframes[i]:SetPoint("CENTER", -58, -150)
			elseif max_chi == 5 then
				chiframes[i]:SetPoint("CENTER", -47, -150)
			else
				chiframes[i]:SetPoint("CENTER", -36, -150)
			end
		else
			chiframes[i]:SetPoint("RIGHT", 23, 0)
		end
		chiframes[i]:Show()		
	end

	if max_chi == 5 then
		chiframes[6]:Hide()
	elseif max_chi < 5 then
		chiframes[5]:Hide()
	end
	
	MonkHarmonyBar:Hide()
	MonkHarmonyBar.Show = function() end	
end

function infChi:UpdateNumBoxes()
	max_chi = UnitPowerMax("player", 12)
	if max_chi == 6 then
		chiframes[1]:SetPoint("CENTER", -58, -150)
		chiframes[6]:Show()
		chiframes[5]:Show()
	elseif max_chi == 5 then
		chiframes[1]:SetPoint("CENTER", -47, -150)
		chiframes[6]:Hide()
		chiframes[5]:Show()
	else
		chiframes[1]:SetPoint("CENTER", -36, -150)
		chiframes[6]:Hide()
		chiframes[5]:Hide()
	end
	self:UpdateChi()
end

function infChi:UNIT_POWER_FREQUENT(_, _, powerType)
	if (powerType ~= "CHI") then return end
	self:UpdateChi()
end

function infChi:UNIT_MAXPOWER()
	self:UpdateNumBoxes()
end

function infChi:PLAYER_TALENT_UPDATE()
	self:UpdateNumBoxes()
end

