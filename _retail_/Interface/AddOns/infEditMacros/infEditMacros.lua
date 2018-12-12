----------------------------------------------
-- infEditMacros
----------------------------------------------

local infEditMacros = CreateFrame("Frame", "infEditMacros")
infEditMacros:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infEditMacros:RegisterEvent("PLAYER_ENTERING_WORLD")

local _, enClass = UnitClass("player")

local GetTalentInfo = GetTalentInfo
local GetSpecialization = GetSpecialization

local function IsInPve()
	local _, instanceType = IsInInstance()
	local pve = false
	if instanceType and (instanceType == "party" or instanceType == "raid") then
		pve = true
	end
	return pve
end

local function IsInArena()
	local _, instanceType = IsInInstance()
	return instanceType == "arena"
end

function infEditMacros:PLAYER_ENTERING_WORLD()
	local unholy
	if enClass and enClass == "DEATHKNIGHT" then
		self:RegisterEvent("PLAYER_TALENT_UPDATE")
		if GetSpecialization() == 3 then
			unholy = true
		end
	elseif enClass and enClass == "MONK" then
		self:UpdatePortMacro()
	end
	self:UpdateFocusMacros(unholy)
end

function infEditMacros:PLAYER_TALENT_UPDATE()
	local spec = GetActiveSpecGroup()
	for c=1, 3 do
		local _, name, _, selected = GetTalentInfo(6, c, spec)
		if selected then
			EditMacro("focus_1", nil, "INV_Misc_QuestionMark", "#showtooltip "..name.."\n/cast [@focus] Death Grip")
		end
	end
end

function infEditMacros:UpdateFocusMacros(unholy)
	if unholy then
		if IsInPve() then
			EditMacro("FLEAP", nil, "INV_Misc_QuestionMark", "#showtooltip Leap\n/cast [nomod, @focus] !Leap\n/targetexact [mod:alt] Farseer Wolf Rider\n/targetexact [mod:alt] Dragonmaw Tidal Shaman\n/targetexact [mod:alt] He Softfoot\n/targetexact [mod:alt] Wavebinder Kardris\n/focus [mod:alt]\n/targetlasttarget [mod:alt]")
			EditMacro("LEAP", nil, "INV_Misc_QuestionMark", "#showtooltip Leap\n/cast [nomod, @target] !Leap\n/targetexact [mod:alt] Dragonmaw Bonecrusher\n/focus [mod:alt]\n/targetlasttarget [mod:alt]")
		else
			EditMacro("FLEAP", nil, "INV_Misc_QuestionMark", "#showtooltip Leap\n/cast [nomod, @focus] !Leap\n/focus [mod:alt, @arena2]")
			EditMacro("LEAP", nil, "INV_Misc_QuestionMark", "#showtooltip Leap\n/cast [nomod, @target] !Leap\n/focus [mod:alt, @arena1]")
		end
	else
		if IsInPve() then
			EditMacro("focus1", nil, "ABILITY_SEAL", "/target [nomod, @player]\n/targetexact [mod:alt] Farseer Wolf Rider\n/targetexact [mod:alt] Dragonmaw Tidal Shaman\n/targetexact [mod:alt] He Softfoot\n/targetexact [mod:alt] Wavebinder Kardris\n/focus [mod:alt]\n/targetlasttarget [mod:alt]")
			EditMacro("focus2", nil, "ABILITY_SEAL", "/target [nomod] Keili\n/target [nomod] Ryâ\n/target [nomod] Marais\n/target [nomod] Zeh\n/target [nomod] Emy\n/targetexact [mod:alt] Dragonmaw Bonecrusher\n/focus [mod:alt]\n/targetlasttarget [mod:alt]")
		else
			EditMacro("focus1", nil, "ABILITY_SEAL", "/target [nomod, @player]\n/focus [mod:alt, @arena2]")
			EditMacro("focus2", nil, "ABILITY_SEAL", "/targetexact [nomod] Keili\n/targetexact [nomod] Ryâ\n/targetexact [nomod] Mirissa\n/targetexact [nomod] Marais\n/targetexact [nomod] Zèh\n/targetexact [nomod] Emy\n/focus [mod:alt, @arena1]")
		end
	end
end

function infEditMacros:UpdatePortMacro()
	if IsInArena() then
		EditMacro("PORT", nil, "INV_Misc_QuestionMark", "#showtooltip Transcendence\n/wm 2\n/cast Transcendence")
	else
		EditMacro("PORT", nil, "INV_Misc_QuestionMark", "#showtooltip\n/cast Transcendence")
	end
end

