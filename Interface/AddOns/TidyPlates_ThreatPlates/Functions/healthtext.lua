local ADDON_NAME, NAMESPACE = ...
local ThreatPlates = NAMESPACE.ThreatPlates

---------------------------------------------------------------------------------------------------
-- Imported functions and constants
---------------------------------------------------------------------------------------------------
local RGB = ThreatPlates.RGB
local RGB_P = ThreatPlates.RGB_P
local GetColorByHealthDeficit = ThreatPlates.GetColorByHealthDeficit

---------------------------------------------------------------------------------------------------
-- Functions for subtext from TidyPlates
---------------------------------------------------------------------------------------------------

local COLOR_ROLE = RGB(255, 255, 255, .7)
local COLOR_GUILD = RGB(178, 178, 229, .7)

local UnitSubtitles = {}
local ScannerName = "ThreatPlates_Tooltip_Subtext"
local TooltipScanner = CreateFrame( "GameTooltip", ScannerName , nil, "GameTooltipTemplate" ); -- Tooltip name cannot be nil
TooltipScanner:SetOwner( WorldFrame, "ANCHOR_NONE" );

local function GetUnitSubtitle(unit)
	local unitid = unit.unitid

	-- Bypass caching while in an instance
	--if inInstance or (not UnitExists(unitid)) then return end
	if ( UnitIsPlayer(unitid) or UnitPlayerControlled(unitid) or (not UnitExists(unitid))) then return end

	--local guid = UnitGUID(unitid)
	local name = unit.name
	local subTitle = UnitSubtitles[name]

	if not subTitle then
		TooltipScanner:ClearLines()
		TooltipScanner:SetUnit(unitid)

		local TooltipTextLeft1 = _G[ScannerName.."TextLeft1"]
		local TooltipTextLeft2 = _G[ScannerName.."TextLeft2"]
		local TooltipTextLeft3 = _G[ScannerName.."TextLeft3"]
		local TooltipTextLeft4 = _G[ScannerName.."TextLeft4"]

		name = TooltipTextLeft1:GetText()

		if name then name = gsub( gsub( (name), "|c........", "" ), "|r", "" ) else return end	-- Strip color escape sequences: "|c"
		if name ~= UnitName(unitid) then return end	-- Avoid caching information for the wrong unit


		-- Tooltip Format Priority:  Faction, Description, Level
		local toolTipText = TooltipTextLeft2:GetText() or "UNKNOWN"

		if string.match(toolTipText, UNIT_LEVEL_TEMPLATE) then
			subTitle = ""
		else
			subTitle = toolTipText
		end

		UnitSubtitles[name] = subTitle
	end

	-- Maintaining a cache allows us to avoid the hit
	if subTitle == "" then
		return nil
	else
		return subTitle
	end
end

local function GetLevelDescription(unit)
	local classification = UnitClassification(unit.unitid)
	local description

	if classification == "worldboss" then
		description = "World Boss"
	else
		if unit.level > 0 then
      description = "Level " .. unit.level
    else
      description = "Level ??"
    end

		if unit.isRare then
			if unit.isElite then
				description = description .. " (Rare Elite)"
			else
				description = description .. " (Rare)"
			end
		elseif unit.isElite then
			description = description .. " (Elite)"
		end
	end

	return description, RGB_P(unit.levelcolorRed, unit.levelcolorGreen, unit.levelcolorBlue, .70)
end

local function DummyFunction() return nil, COLOR_ROLE end

local function TextHealthPercentColored(unit)
	return ceil(100 * (unit.health / unit.healthmax)) .. "%", GetColorByHealthDeficit(unit)
end

-- Role, Guild or Level
local function TextRoleGuildLevel(unit)
  local color = COLOR_ROLE
  local description

	if unit.type == "NPC" then
		description = GetUnitSubtitle(unit)

		if not description then --  and unit.reaction ~= "FRIENDLY" then
			description, color =  GetLevelDescription(unit)
      -- color = COLOR_ROLE
      -- color = RGB_P(unit.levelcolorRed, unit.levelcolorGreen, unit.levelcolorBlue, .70)
		end

	elseif unit.type == "PLAYER" then
		description = GetGuildInfo(unit.unitid)
    color = COLOR_GUILD
	end

	return description, color
end

local function TextRoleGuild(unit)
	local color = COLOR_ROLE
	local description

	if unit.type == "NPC" then
		description = GetUnitSubtitle(unit)
	elseif unit.type == "PLAYER" then
		description = GetGuildInfo(unit.unitid)
    color = COLOR_GUILD
	end

	return description, color
end

-- NPC Role
local function TextNPCRole(unit)
  local color = COLOR_ROLE
  local description

	if unit.type == "NPC" then
    description = GetUnitSubtitle(unit)
  end

  return description, color
end

-- Level
local function TextLevelColored(unit)
	return GetLevelDescription(unit)
end

-- Guild, Role, Level, Health
local function TextAll(unit)
	if unit.health < unit.healthmax then
		return TextHealthPercentColored(unit)
	else
		return TextRoleGuildLevel(unit)
	end
end

local SUBTEXT_FUNCTIONS =
{
	NONE = DummyFunction,
	HEALTH = TextHealthPercentColored,
	ROLE = TextNPCRole,
	ROLE_GUILD = TextRoleGuild,
	ROLE_GUILD_LEVEL = TextRoleGuildLevel,
	LEVEL = TextLevelColored,
	ALL = TextAll,
}

---------------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------------

local function Truncate(value)
	if TidyPlatesThreat.db.profile.text.truncate then
		if value >= 1e6 then
			return format('%.1fm', value / 1e6)
		elseif value >= 1e4 then
			return format('%.1fk', value / 1e3)
		else
			return value
		end
	else
		return value
	end
end

local function SetCustomText(unit)
	local S = TidyPlatesThreat.SetStyle(unit)

	-- Headline View (alpha feature) uses TidyPlatesHub config and functionality
	local db = TidyPlatesThreat.db.profile.HeadlineView
	if db.ON and (S == "NameOnly") then
		local func
		if unit.reaction == "FRIENDLY" then
			func = SUBTEXT_FUNCTIONS[db.FriendlySubtext]
		else
			func = SUBTEXT_FUNCTIONS[db.EnemySubtext]
		end

		local subtext, color = func(unit)

		if db.SubtextColorUseHeadline then
			color = RGB_P(TidyPlatesThreat.SetNameColor(unit))
		elseif not db.SubtextColorUseSpecific then
			color = db.SubtextColor
		end

		return subtext, color.r, color.g, color.b, color.a
	end

	db = TidyPlatesThreat.db.profile.text
	if (not db.full and unit.health == unit.healthmax) then
		return ""
	end
	local HpPct = ""
	local HpAmt = ""
	local HpMax = ""

	if db.amount then

		if db.deficit and unit.health ~= unit.healthmax then
			HpAmt = "-"..Truncate(unit.healthmax - unit.health)
		else
			HpAmt = Truncate(unit.health)
		end

		if db.max then
			if HpAmt ~= "" then
				HpMax = " / "..Truncate(unit.healthmax)
			else
				HpMax = Truncate(unit.healthmax)
			end
		end
	end

	if db.percent then
		-- Blizzard calculation:
		-- local perc = math.ceil(100 * (UnitHealth(frame.displayedUnit)/UnitHealthMax(frame.displayedUnit)));

		local perc = ceil(100 * (unit.health / unit.healthmax))
		-- old: floor(100*(unit.health / unit.healthmax))

		if HpMax ~= "" or HpAmt ~= "" then
			HpPct = " - "..perc.."%"
		else
			HpPct = perc.."%"
		end
	end

	return HpAmt..HpMax..HpPct, color_r, color_g, color_b, color_a
end

TidyPlatesThreat.SetCustomText = SetCustomText
