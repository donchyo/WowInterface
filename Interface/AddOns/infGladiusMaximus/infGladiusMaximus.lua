----------------------------------------------
-- infGladiusMaximus
----------------------------------------------

local infGladiusMaximus = CreateFrame("Frame", "infGladiusMaximus")
infGladiusMaximus:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infGladiusMaximus:RegisterEvent("PLAYER_ENTERING_WORLD")

local hasFocus = nil

local spellIds = {
	[605] = true, --dominate mind
	[5782] = true, --fear
	[19386] = true, --wyvern sting
	[20066] = true, --repentance
	[33786] = true, --cyclone
	[51514] = true, --hex
	[102051] = true, --frostjaw
	[111771] = true, --demonic gateway
	[113724] = true, --ring of frost
	--polymorphs
	[118] = true, --poly: sheep
	[28271] = true, --poly: turtle
	[28272] = true, --poly: pig
	[61305] = true, --poly: black cat
	[61721] = true, --poly: rabbit
	[61780] = true, --poly: turkey
	[126819] = true, --poly: porcupine
	[161353] = true, --poly: polar bear cub
	[161354] = true, --poly: monkey
	[161355] = true, --poly: penguin
	[161372] = true --poly: peacock
}

local teamMates = {
	["Ryâ"] = "|cff0070deEmy|r",
}

local function IsInArena()
	local _, instanceType = IsInInstance()
	return instanceType == "arena"
end

function infGladiusMaximus:PLAYER_ENTERING_WORLD()
	if IsInArena() then
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:RegisterEvent("UNIT_SPELLCAST_START")
		self:RegisterEvent("PLAYER_FOCUS_CHANGED")
		if GetCVar"nameplateShowEnemyGuardians" == "1" then
			SetCVar("nameplateShowEnemyGuardians", 0)
		end
		if GetCVar"nameplateShowEnemyPets" == "1" then
			SetCVar("nameplateShowEnemyPets", 0)
		end		
	else
		self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
		self:UnregisterEvent("UNIT_SPELLCAST_START")
		self:UnregisterEvent("PLAYER_FOCUS_CHANGED")
		if GetCVar"nameplateShowEnemyGuardians" ~= "1" then
			SetCVar("nameplateShowEnemyGuardians", 1)
		end
		if GetCVar"nameplateShowEnemyPets" ~= "1" then
			SetCVar("nameplateShowEnemyPets", 1)
		end
	end
end

--"<20.5 15:55:14> [UNIT_SPELLCAST_START] Garrosh Hellscream - ability_garrosh_hellscreams_warsong - 1.5sec [[boss1:Hellscream's Warsong::0:144821]]", -- [9473]

function infGladiusMaximus:UNIT_SPELLCAST_START(_, unit, spellName, _, _, spellId)
	if not unit:find("arena", nil, true) then return end
	local id = unit:sub(6)
	local _, enClass = UnitClass(unit)
	if spellIds[spellId] then
		self:Print(("[%d] %s"):format(id, spellName), enClass)
		self:PlaySound("bell")	
	end
end

function infGladiusMaximus:PLAYER_FOCUS_CHANGED()
	if not UnitExists("focus") then
		if hasFocus then
			hasFocus = nil
			self:Print(SET_FOCUS, "ROGUE")
			self:PlaySound("alarm")
		end
	else
		if not hasFocus then
			hasFocus = true
		end
	end
end

--"<5.5 13:11:47> [CLEU] SPELL_AURA_APPLIED#false#0xF130FF0200393D18#Void Tendril#8465#0#0xF130EA40002FC902#Ordo Marauder#68168#0#114404#Void Tendril's Grasp#32#DEBUFF", -- [12]
--"<2.9 13:49:18> [CLEU] SPELL_CAST_SUCCESS#false#0x02000000004BDF6E#Gdrbbtyrytbb#1297#0#0xF130EA400012B411#Ordo Marauder#68168#0#88625#Holy Word: Chastise#2", -- [3]
--"<1.8 12:45:33> [CLEU] SPELL_CAST_SUCCESS#false#0x0380000004972ECE#Inphe#66833#0##nil#-2147483648#-2147483648#60192#Freezing Trap#16", -- [3]

function infGladiusMaximus:COMBAT_LOG_EVENT_UNFILTERED(_, _, event, _, _, _, sourceFlags, _, destGUID, destName, _, _, _, spellName)
	if event == "SPELL_CAST_SUCCESS" then
		if bit.band(sourceFlags, COMBATLOG_OBJECT_REACTION_FRIENDLY) <= 0 then
			if (spellName == "Sap" or spellName == "Blind") then
				for name, coloredName in pairs(teamMates) do
					if name == destName then
						self:Print(("%s [%s]"):format(spellName, coloredName), "ROGUE")
						self:PlaySound("bell")
						return
					end
				end
			elseif spellName == "Devouring Plague" then
				for name, coloredName in pairs(teamMates) do
					if name == destName then
						self:Print(("%s [%s]"):format(spellName, coloredName), "PRIEST")
						self:PlaySound("bell")
						return
					end
				end
			elseif spellName == "Holy Word: Chastise" then
				for name, coloredName in pairs(teamMates) do
					if name == destName then
						self:Print(("%s [%s]"):format(spellName, coloredName), "PRIEST")
						self:PlaySound("bell")
						return
					end
				end
			elseif spellName == "Silence" then
				for name, coloredName in pairs(teamMates) do
					if name == destName then
						self:Print(("%s [%s]"):format(spellName, coloredName), "PRIEST")
						self:PlaySound("bell")
						return
					end
				end
			elseif spellName == "Freezing Trap" then
				self:Print(spellName, "MAGE")
				self:PlaySound("bell")
				return
			elseif spellName == "Lightwell" then
				self:Print(spellName, "PRIEST")
				self:PlaySound("bell")
				return
			end		
		end
	end
end

function infGladiusMaximus:Print(text, class)
	local color = RAID_CLASS_COLORS[class]
	ZoneTextString:SetTextColor(color.r, color.g, color.b)
	ZoneTextString:SetText(text)
	PVPInfoTextString:SetText("")
	ZoneTextFrame.startTime = GetTime()
	ZoneTextFrame.fadeInTime = 0
	ZoneTextFrame.holdTime = 1
	ZoneTextFrame.fadeOutTime = 2
	ZoneTextFrame:Show()
end

function infGladiusMaximus:PlaySound(sound)
	PlaySoundFile("Interface\\AddOns\\infGladiusMaximus\\Sounds\\"..sound..".ogg", "Master")
end

