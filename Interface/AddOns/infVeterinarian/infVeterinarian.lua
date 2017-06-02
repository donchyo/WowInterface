----------------------------------------------
-- infVeterinarian
----------------------------------------------

local infVeterinarian = CreateFrame("Frame", "infVeterinarian")
infVeterinarian:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infVeterinarian:RegisterEvent("ADDON_LOADED")

local hasPet
local inVehicle

function infVeterinarian:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:RegisterEvent("PLAYER_TALENT_UPDATE")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

local function IsPetClass()
	local _, playerClass = UnitClass("player")
	local masteryIndex 
	local petClass = false
	if playerClass == "DEATHKNIGHT" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 3 then
			petClass = true
		end
	elseif playerClass == "MAGE" then
		masteryIndex = GetSpecialization()
		if masteryIndex and masteryIndex == 3 then
			petClass = true
		end		
	elseif playerClass == "HUNTER" then
		petClass = true
	elseif playerClass == "WARLOCK" then
		petClass = true
	end
	return petClass
end

function infVeterinarian:PLAYER_TALENT_UPDATE()
	if IsPetClass() then
		self:RegisterUnitEvent("UNIT_PET", "player")
		self:RegisterUnitEvent("UNIT_ENTERED_VEHICLE", "player")
		self:RegisterUnitEvent("UNIT_EXITED_VEHICLE", "player")
	else
		self:UnregisterEvent("UNIT_PET")
		self:UnregisterEvent("UNIT_ENTERED_VEHICLE")
		self:UnregisterEvent("UNIT_EXITED_VEHICLE")		
	end
end

function infVeterinarian:PLAYER_ENTERING_WORLD()
	if UnitExists("pet") then
		hasPet = true
	end
end

function infVeterinarian:UNIT_ENTERED_VEHICLE()
	if not inVehicle then inVehicle = true end
end

local function UpdateVehicleExit() --wod temp
	if UnitHasVehicleUI("player") then return end
	if inVehicle then inVehicle = nil end
end

function infVeterinarian:UNIT_EXITED_VEHICLE()
	C_Timer.After(1.5, UpdateVehicleExit)
end

--[[function infVeterinarian:UpdateVehicleExit()
	if UnitHasVehicleUI("player") then return end
	if inVehicle then inVehicle = nil end
end]]

function infVeterinarian:UNIT_PET(_, unit)
	if (IsMounted() or UnitOnTaxi(unit)) then return end
	if not UnitExists("pet") then
		if hasPet and not inVehicle then
			hasPet = nil
			self:infVeterinarian_Print("Lost Pet!")
			PlaySoundFile("Interface\\AddOns\\infVeterinarian\\Sounds\\alert.ogg", "Master")
		end
	else
		if not hasPet then hasPet = true end
	end
end

function infVeterinarian:infVeterinarian_Print(text)
	ZoneTextString:SetText(text)
	PVPInfoTextString:SetText("")
	ZoneTextFrame.startTime = GetTime()
	ZoneTextFrame.fadeInTime = 0
	ZoneTextFrame.holdTime = 1
	ZoneTextFrame.fadeOutTime = 2
	ZoneTextString:SetTextColor(0, 0.85, 1)
	ZoneTextFrame:Show()
end

