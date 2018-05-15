
local PitBull4 = _G.PitBull4
local L = PitBull4.L

local EXAMPLE_VALUE = 0.6
local PowerBarColor = _G.PowerBarColor

local PitBull4_PowerBar = PitBull4:NewModule("PowerBar", "AceEvent-3.0")

PitBull4_PowerBar:SetModuleType("bar")
PitBull4_PowerBar:SetName(L["Power bar"])
PitBull4_PowerBar:SetDescription(L["Show a bar for your primary resource."])
PitBull4_PowerBar.allow_animations = true
PitBull4_PowerBar:SetDefaults({
	position = 2,
	hide_no_mana = false,
	hide_no_power = false,
	use_atlas = false,
})

local guids_to_update = {}
local type_to_token = {
	"MANA", "RAGE", "FOCUS", "ENERGY", "CHI",
	"RUNES", "RUNIC_POWER", "SOUL_SHARDS", "LUNAR_POWER",
	"HOLY_POWER", "MAELSTROM", "INSANITY", "FURY", "PAIN"
}
local power_bar_atlas = {}
for power_token, info in next, PowerBarColor do
	if info.atlas then
		power_bar_atlas[power_token] = info.atlas
	end
end

local timerFrame = CreateFrame("Frame")
timerFrame:Hide()

function PitBull4_PowerBar:OnEnable()
	self:RegisterEvent("UNIT_POWER_FREQUENT")
	self:RegisterEvent("UNIT_MAXPOWER", "UNIT_POWER_FREQUENT")
	self:RegisterEvent("UNIT_DISPLAYPOWER")
	self:RegisterEvent("UNIT_POWER_BAR_SHOW", "UNIT_DISPLAYPOWER")
	self:RegisterEvent("UNIT_POWER_BAR_HIDE", "UNIT_DISPLAYPOWER")

	timerFrame:Show()
end

function PitBull4_PowerBar:OnDisable()
	timerFrame:Hide()
end

timerFrame:SetScript("OnUpdate", function()
	if next(guids_to_update) then
		for frame in PitBull4:IterateFrames() do
			if guids_to_update[frame.guid] then
				PitBull4_PowerBar:Update(frame)
			end
		end
		wipe(guids_to_update)
	end
end)

function PitBull4_PowerBar:GetValue(frame)
	local unit = frame.unit
	local layout_db = self:GetLayoutDB(frame)
	local max = UnitPowerMax(unit)

	if layout_db.hide_no_mana and UnitPowerType(unit) ~= 0 then
		return nil
	elseif layout_db.hide_no_power and max <= 0 then
		return nil
	end

	if max == 0 then
		return 0
	end

	return UnitPower(unit) / max
end

function PitBull4_PowerBar:GetExampleValue(frame)
	return EXAMPLE_VALUE
end

function PitBull4_PowerBar:GetColor(frame, value)
	local unit = frame.unit
	local power_type, power_token, r, g, b = UnitPowerType(unit)
	local color = PitBull4.PowerColors[power_token]

	if not color then
		if not r then
			color = PitBull4.PowerColors[type_to_token[power_type]] or PitBull4.PowerColors.MANA
			r, g, b = color[1], color[2], color[3]
		end
	else
		r, g, b = color[1], color[2], color[3]
	end

	return r, g, b, nil, nil, self:GetLayoutDB(frame).use_atlas and power_bar_atlas[power_token]
end
function PitBull4_PowerBar:GetExampleColor(frame)
	return unpack(PitBull4.PowerColors.MANA)
end

function PitBull4_PowerBar:UNIT_POWER_FREQUENT(event, unit, power_type)
	if not unit then return end
	local _, power_token = UnitPowerType(unit)
	-- fix units that have a special power type but update as ENERGY
	if not PowerBarColor[power_token] then
		power_token = "ENERGY"
	end
	if power_token == power_type then
		local guid = UnitGUID(unit)
		if guid then
			guids_to_update[guid] = true
		end
	end
end

function PitBull4_PowerBar:UNIT_DISPLAYPOWER(event, unit)
	local guid = unit and UnitGUID(unit)
	if guid then
		guids_to_update[guid] = true
	end
end

PitBull4_PowerBar:SetLayoutOptionsFunction(function(self)
	local function get(info)
		return PitBull4.Options.GetLayoutDB(self)[info[#info]]
	end
	local function set(info, value)
		PitBull4.Options.GetLayoutDB(self)[info[#info]] = value
		PitBull4.Options.UpdateFrames()
	end

	return 'hide_no_mana', {
		name = L["Hide non-mana"],
		desc = L["Hides the power bar if the unit's current power is not mana."],
		type = "toggle",
		get = get,
		set = set,
	}, 'hide_no_power', {
		name = L["Hide non-power"],
		desc = L["Hides the power bar if the unit has no power."],
		type = "toggle",
		get = get,
		set = set,
	}, 'use_atlas', {
		name = L["Use power texture"],
		desc = L["Use the provided power-specific texture if available instead of the set texture."],
		type = "toggle",
		get = get,
		set = set,
	}
end)
