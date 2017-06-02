--[[--------------------------------------------------------------------
	Grid
	Compact party and raid unit frames.
	Copyright (c) 2006-2013 Kyle Smith (Pastamancer), A. Kinley (Phanx)
	All rights reserved.
	See the accompanying README and LICENSE files for more information.
	http://www.wowinterface.com/downloads/info5747-Grid.html
	http://www.wowace.com/addons/grid/
	http://www.curse.com/addons/wow/grid
------------------------------------------------------------------------
	GridStatusName.lua
	GridStatus module for tracking unit names. 
----------------------------------------------------------------------]]
GridCustomNamesDB = {				
}


local GridRoster = Grid:GetModule("GridRoster")

local GridStatusCustomNames = Grid:NewStatusModule("GridStatusCustomNames")
GridStatusCustomNames.menuName = "Custom Unit Names"
GridStatusCustomNames.options = false

GridStatusCustomNames.defaultDB = {
	custom_unit_name = {
		text = "Custom Unit Name",
		enable = true,
		color = { r = 1, g = 1, b = 1, a = 1 },
		priority = 1,
		class = true,
		range = false,
	},
}

local CustomNameOptions = {
	class = {
		name = "Use class color",
		desc = "Color by class",
		type = "toggle", width = "double",
		get = function() return GridStatusCustomNames.db.profile.custom_unit_name.class end,
		set = function()
			GridStatusCustomNames.db.profile.custom_unit_name.class = not GridStatusCustomNames.db.profile.custom_unit_name.class
			GridStatusCustomNames:UpdateAllUnits()
		end,
	},
	range = false,
}

local classIconCoords = {}
for class, t in pairs(CLASS_BUTTONS) do
	local offset, left, right, bottom, top = 0.025, unpack(t)
	classIconCoords[class] = {
		left = (left + offset) * 256,
		right = (right - offset) * 256,
		bottom = (bottom + offset) * 256,
		top = (top - offset) * 256,
	}
end

function GridStatusCustomNames:PostInitialize()
	self:RegisterStatus("custom_unit_name", "Custom Unit Name", CustomNameOptions, true)
end

function GridStatusCustomNames:OnStatusEnable(status)
	if status ~= "custom_unit_name" then return end

	self:RegisterEvent("UNIT_NAME_UPDATE", "UpdateUnit")
	self:RegisterEvent("UNIT_PORTRAIT_UPDATE", "UpdateUnit")
	self:RegisterEvent("UNIT_ENTERED_VEHICLE", "UpdateVehicle")
	self:RegisterEvent("UNIT_EXITED_VEHICLE", "UpdateVehicle")
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "UpdateAllUnits")

	self:RegisterMessage("Grid_UnitJoined", "UpdateGUID")
	self:RegisterMessage("Grid_UnitChanged", "UpdateGUID")
	self:RegisterMessage("Grid_UnitLeft", "UpdateGUID")

	self:RegisterMessage("Grid_ColorsChanged", "UpdateAllUnits")

	self:UpdateAllUnits()
end

function GridStatusCustomNames:OnStatusDisable(status)
	if status ~= "custom_unit_name" then return end

	self:UnregisterEvent("UNIT_NAME_UPDATE")
	self:UnregisterEvent("UNIT_PORTRAIT_UPDATE")
	self:UnregisterEvent("UNIT_ENTERED_VEHICLE")
	self:UnregisterEvent("UNIT_EXITED_VEHICLE")
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")

	self:UnregisterMessage("Grid_UnitJoined")
	self:UnregisterMessage("Grid_UnitChanged")
	self:UnregisterMessage("Grid_UnitLeft")
	self:UnregisterMessage("Grid_ColorsChanged")

	self.core:SendStatusLostAllUnits("custom_unit_name")
end

function GridStatusCustomNames:PostReset()
	self:UpdateAllUnits()
end

function GridStatusCustomNames:UpdateVehicle(event, unitid)
	self:UpdateUnit(event, unitid)
	local pet_unit = unitid .. "pet"
	if UnitExists(pet_unit) then
		self:UpdateUnit(event, pet_unit)
	end
end

function GridStatusCustomNames:UpdateUnit(event, unitid)
	local guid = unitid and UnitGUID(unitid)
    if guid then
        self:UpdateGUID(event, guid)
    end
end

function GridStatusCustomNames:UpdateGUID(event, guid)
	local settings = self.db.profile.custom_unit_name

	local name = GridRoster:GetNameByGUID(guid)

	if not name or not settings.enable then return end
	local text
	-- set text
	if GridCustomNamesDB[name] then
		text = GridCustomNamesDB[name]
	else
		text = name
	end
	--local text = name
	local unitid = GridRoster:GetUnitidByGUID(guid)
	local _, class = UnitClass(unitid)
	
--[[	if self.friendlyNames[name] then
        self.core:SendStatusGained(name, 'unit_friendlyname', priority + 1, range, color, self.friendlyNames[name], value, maxValue, texture)
    end]]
	local show_owner_name = true
	if show_owner_name then
		local owner_unitid = GridRoster:GetOwnerUnitidByUnitid(unitid)

		-- does this unit have an owner?
		-- is the owner driving a vehicle?
		if owner_unitid and UnitHasVehicleUI(owner_unitid) then
			local owner_guid = UnitGUID(owner_unitid)
			local owner_name = GridRoster:GetNameByGUID(owner_guid)

			text = owner_name
		end
	end

	-- set color
	local color = settings.class and self.core:UnitColor(guid) or settings.color

	self.core:SendStatusGained(guid, "custom_unit_name",
		settings.priority,
		nil,
		color,
		text,
		nil,
		nil,
		class and [[Interface\Glues\CharacterCreate\UI-CharacterCreate-Classes]] or nil,
		nil,
		nil,
		nil,
		class and classIconCoords[class] or nil)
end

function GridStatusCustomNames:UpdateAllUnits()
	for guid, unitid in GridRoster:IterateRoster() do
		self:UpdateGUID("UpdateAllUnits", guid)
	end
end
SLASH_GRIDCUSTOMNAMES1 = "/gcn"
SlashCmdList["GRIDCUSTOMNAMES"] = function(msg)
	if (string.find(string.lower(msg), 'add (.-) (.-)')) then
		local _, _, eka, toka = string.find(msg, 'add (.*) (.*)')
		GridCustomNamesDB[eka] = toka
		print("Added player name " .. toka .. " for character " .. eka .. ".")
	elseif (string.find(string.lower(msg), 'remove (.-)')) then
		local _, _, eka = string.find(msg, 'remove (.*)')
		GridCustomNamesDB[eka] = nil
		print("Removed custom names for " .. eka .. ".")
	elseif (string.find(string.lower(msg), 'list')) then
		for k, v in pairs(GridCustomNamesDB) do
			print("Character " .. k .. " is known as " .. v .. ".")
		end
		print("Printing ended.")
	else
		print("GCN failed.")
	end
	
	GridStatusCustomNames:UpdateAllUnits()
end