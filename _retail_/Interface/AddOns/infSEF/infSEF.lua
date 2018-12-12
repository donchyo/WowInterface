----------------------------------------------
-- infSEF
----------------------------------------------

local _, enClass = UnitClass("player")
if enClass ~= "MONK" then return end

infSEF = LibStub("AceAddon-3.0"):NewAddon("infSEF", "AceEvent-3.0", "AceTimer-3.0")

local GetTime = GetTime
local UnitGUID = UnitGUID
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local GetTotemInfo = GetTotemInfo
local PlaySoundFile = PlaySoundFile

local infSEF1_guid
local infSEF2_guid
local playerGUID
local spirits = {}
local activeSpirits = {}
local spiritsByTargetGUID = {}
local lastCastTarget
local lastCastTargetGUID
local lastSummonedSpirit
local lastWarnedTargetGUID
local spiritSpellIds = {
	[138121] = true,
	[138122] = true,
	[138123] = true
}

function infSEF:OnInitialize()
	self:FrameCreation()

	self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function infSEF:FrameCreation()
	--Main
	infSEF_frame = CreateFrame("Frame", nil, UIParent)
	infSEF_frame:SetSize(20, 88)
	infSEF_frame:SetPoint("CENTER", UIParent, "CENTER", 416, -368) --position, it grows downwards
	infSEF_frame:SetParent(nil)
	infSEF_frame:Hide()

	--[1]
	infSEF1_frame = CreateFrame("Frame", nil, infSEF_frame)
	infSEF1_frame:SetSize(130, 40)
	infSEF1_frame:SetPoint("TOP", infSEF_frame, "TOP")
	infSEF1_frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12
	})
	infSEF1_frame:SetBackdropColor(0, 0, 0, 0.48)
	infSEF1_frame:EnableMouse(true)
	infSEF1_frame:Hide()

	infSEF1_text = infSEF1_frame:CreateFontString(nil, "OVERLAY")
	infSEF1_text:SetPoint("CENTER", 0, 6)
	infSEF1_text:SetSize(120, 10)
	infSEF1_text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	infSEF1_text:SetTextColor(0.8, 0.3, 0.22)

	infSEF1_text.bg = infSEF1_frame:CreateTexture(nil, "BACKGROUND")
    infSEF1_text.bg:SetPoint("TOPLEFT", infSEF1_text, "TOPLEFT", -3, 6)
    infSEF1_text.bg:SetPoint("BOTTOMRIGHT", infSEF1_text, "BOTTOMRIGHT", 3, -6)
	infSEF1_text.bg:SetTexture("Interface\\Addons\\infSEF\\Textures\\Background")
	infSEF1_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
	infSEF1_text.bg:SetBlendMode("BLEND")

	infSEF1_icon = infSEF1_frame:CreateTexture(nil, "BACKGROUND")
	infSEF1_icon:SetSize(31, 31)
	infSEF1_icon:SetPoint("TOPRIGHT", infSEF1_frame, "TOPLEFT", -3, -3)
	infSEF1_icon:SetTexture("Interface\\Icons\\Ability_Monk_TigerPalm")
	infSEF1_icon:SetTexCoord(0.07, 0.9, 0.07, 0.9)	
	infSEF1_icon:Hide()

	infSEF1_icon.cdtexture = CreateFrame("Cooldown", nil, infSEF1_frame)
	infSEF1_icon.cdtexture:SetReverse(true)
	infSEF1_icon.cdtexture:SetAllPoints(infSEF1_icon)

	infSEF1_icon.border = CreateFrame("Frame", nil, infSEF1_frame)
	infSEF1_icon.border:SetAllPoints(infSEF1_icon)
	infSEF1_icon.border:SetFrameLevel(infSEF1_icon.cdtexture:GetFrameLevel()+1)
	infSEF1_icon.border:SetBackdrop({
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 10
	})
	infSEF1_icon.border:Hide()

	infSEF1_statusbar = CreateFrame("StatusBar", nil, infSEF1_frame)
	infSEF1_statusbar:SetWidth(123)
	infSEF1_statusbar:SetHeight(12)
	infSEF1_statusbar:SetPoint("BOTTOM", 0, 3)
	infSEF1_statusbar:SetStatusBarTexture("Interface\\Addons\\infSEF\\Textures\\Statusbar")
	infSEF1_statusbar:SetStatusBarColor(0, 1, 0)
	infSEF1_statusbar:SetBackdrop({
		bgFile = "Interface\\Addons\\infSEF\\Textures\\Statusbar",
		tile = false
	})
	infSEF1_statusbar:SetBackdropColor(0, 0.4, 0, 0.6)

	infSEF1_statusbar.text = infSEF1_statusbar:CreateFontString(nil, "OVERLAY")
	infSEF1_statusbar.text:SetPoint("CENTER", 0, 0)
	infSEF1_statusbar.text:SetSize(120, 10)
	infSEF1_statusbar.text:SetFont(STANDARD_TEXT_FONT, 9, "OUTLINE")
	infSEF1_statusbar.text:SetShadowColor(0, 0, 0, 0.8)
	infSEF1_statusbar.text:SetShadowOffset(1, -1)

	infSEF1_mouseover = infSEF1_frame:CreateTexture(nil, "HIGHLIGHT")
    infSEF1_mouseover:SetPoint("TOPLEFT", 3, -3)
    infSEF1_mouseover:SetPoint("BOTTOMRIGHT", -3, 3)
    infSEF1_mouseover:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
	infSEF1_mouseover:SetBlendMode("ADD")

	--[2]
	infSEF2_frame = CreateFrame("Frame", nil, infSEF_frame)
	infSEF2_frame:SetSize(130, 40)
	infSEF2_frame:SetPoint("BOTTOM", infSEF_frame, "BOTTOM")
    infSEF2_frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 12
	})
	infSEF2_frame:SetBackdropColor(0, 0, 0, 0.48)
	infSEF2_frame:EnableMouse(true)
	infSEF2_frame:Hide()

	infSEF2_text = infSEF2_frame:CreateFontString(nil, "OVERLAY")
	infSEF2_text:SetPoint("CENTER", 0, 6)
	infSEF2_text:SetSize(120, 10)
	infSEF2_text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
	infSEF2_text:SetTextColor(0.8, 0.3, 0.22)

	infSEF2_text.bg = infSEF2_frame:CreateTexture(nil, "BACKGROUND")
    infSEF2_text.bg:SetPoint("TOPLEFT", infSEF2_text, "TOPLEFT", -3, 6)
    infSEF2_text.bg:SetPoint("BOTTOMRIGHT", infSEF2_text, "BOTTOMRIGHT", 3, -6)
	infSEF2_text.bg:SetTexture("Interface\\Addons\\infSEF\\Textures\\Background")
	infSEF2_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
	infSEF2_text.bg:SetBlendMode("BLEND")

	infSEF2_icon = infSEF2_frame:CreateTexture(nil, "OVERLAY")
	infSEF2_icon:SetSize(31, 31)
	infSEF2_icon:SetPoint("TOPRIGHT", infSEF2_frame, "TOPLEFT", -3, -3)
	infSEF2_icon:SetTexture("Interface\\Icons\\Ability_Monk_TigerPalm")
	infSEF2_icon:SetTexCoord(0.07, 0.9, 0.07, 0.9)	
	infSEF2_icon:Hide()

	infSEF2_icon.cdtexture = CreateFrame("Cooldown", nil, infSEF2_frame)
	infSEF2_icon.cdtexture:SetReverse(true)
	infSEF2_icon.cdtexture:SetAllPoints(infSEF2_icon)

	infSEF2_icon.border = CreateFrame("Frame", nil, infSEF2_frame)
	infSEF2_icon.border:SetAllPoints(infSEF2_icon)
	infSEF2_icon.border:SetFrameLevel(infSEF2_icon.cdtexture:GetFrameLevel()+1)
	infSEF2_icon.border:SetBackdrop({
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 10
	})
	infSEF2_icon.border:Hide()

	infSEF2_statusbar = CreateFrame("StatusBar", nil, infSEF2_frame)
	infSEF2_statusbar:SetWidth(123)
	infSEF2_statusbar:SetHeight(12)
	infSEF2_statusbar:SetPoint("BOTTOM", 0, 3)
	infSEF2_statusbar:SetStatusBarTexture("Interface\\Addons\\infSEF\\Textures\\Statusbar")
	infSEF2_statusbar:SetStatusBarColor(0, 1, 0)
	infSEF2_statusbar:SetBackdrop({
		bgFile = "Interface\\Addons\\infSEF\\Textures\\Statusbar",
		tile = false
	})
	infSEF2_statusbar:SetBackdropColor(0, 0.4, 0, 0.6)

	infSEF2_statusbar.text = infSEF2_statusbar:CreateFontString(nil, "OVERLAY")
	infSEF2_statusbar.text:SetPoint("CENTER", 0, 0)
	infSEF2_statusbar.text:SetSize(120, 10)
	infSEF2_statusbar.text:SetFont(STANDARD_TEXT_FONT, 9, "OUTLINE")
	infSEF2_statusbar.text:SetShadowColor(0, 0, 0, 0.8)
	infSEF2_statusbar.text:SetShadowOffset(1, -1)

	infSEF2_mouseover = infSEF2_frame:CreateTexture(nil, "HIGHLIGHT")
    infSEF2_mouseover:SetPoint("TOPLEFT", 3, -3)
    infSEF2_mouseover:SetPoint("BOTTOMRIGHT", -3, 3)
    infSEF2_mouseover:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
	infSEF2_mouseover:SetBlendMode("ADD")
end

local function IsWindWalker()
	local spec = GetSpecialization()
	return spec == 3
end

function infSEF:PLAYER_ENTERING_WORLD()
	playerGUID = UnitGUID("player")
	self:Toggle(IsWindWalker())
end

function infSEF:PLAYER_SPECIALIZATION_CHANGED(_, unitId)
	if unitId ~= "player" then return end
	self:Toggle(IsWindWalker())
end

function infSEF:Toggle(flag)
	if flag then
		if not infSEF_frame:IsShown() then
			self:RegisterEvent("PLAYER_TOTEM_UPDATE")
			self:RegisterEvent("PLAYER_TARGET_CHANGED")
			self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			infSEF_frame:SetParent(UIParent)
			infSEF_frame:Show()
		end
	else
		if infSEF_frame:IsShown() then
			self:UnregisterEvent("PLAYER_TOTEM_UPDATE")
			self:UnregisterEvent("PLAYER_TARGET_CHANGED")
			self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			wipe(spirits)
			wipe(activeSpirits)
			wipe(spiritsByTargetGUID)
			lastCastTarget = nil
			lastCastTargetGUID = nil
			lastSummonedSpirit = nil
			lastWarnedTargetGUID = nil
			infSEF1_guid = nil
			infSEF2_guid = nil
			infSEF_frame:SetParent(nil)
			infSEF_frame:Hide()
		end
	end
end

function infSEF:PLAYER_TOTEM_UPDATE()
	self:UpdateSpirits()
end

function infSEF:PLAYER_TARGET_CHANGED()
	self:CheckTarget()
end

do
	local function resetSwitch()
		lastSummonedSpirit = nil
		lastCastTarget = nil
		lastCastTargetGUID = nil
	end
	function infSEF:COMBAT_LOG_EVENT_UNFILTERED(_, _, event, _, _, _, sourceFlags, _, destGUID, destName, _, _, spellId)
		if bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) <= 0 then return end
		--"<1.2 01:32:42> [CLEU] SPELL_SUMMON#false#0x02000000004AD426#Baguettie#1297#0#0xF13110A0009E3E38#Earth Spirit#2600#0#138121#Storm, Earth and Fire#1", -- [66]
		if event == "SPELL_SUMMON" then
			if spiritSpellIds[spellId] then
				local t = spirits[destName]
				if t and t.alive then
					self:KillSpirit(t)
					wipe(t)
				else
					t = {}
				end
				spirits[destName] = t
				t.name = destName
				t.guid = destGUID
				if lastCastTarget then
					t.target = lastCastTarget
					t.targetGUID = lastCastTargetGUID
					lastCastTarget = nil
					self:UpdateSpirits()
				else
					lastSummonedSpirit = t
					self:ScheduleTimer(resetSwitch, 0.5)
				end
			end
		--"<1.2 01:32:42> [CLEU] SPELL_CAST_SUCCESS#false#0x02000000004AD426#Baguettie#1297#0#0xF13079AA000024BF#Raider's Training Dummy#2600#0#137639#Storm, Earth, and Fire#8", -- [69]
		elseif event == "SPELL_CAST_SUCCESS" then
			if spellId == 137639 then
				if lastSummonedSpirit then
					lastSummonedSpirit.target = destName
					lastSummonedSpirit.targetGUID = destGUID
					lastSummonedSpirit = nil
					self:UpdateSpirits()
				else
					lastCastTarget = destName
					lastCastTargetGUID = destGUID
					self:ScheduleTimer(resetSwitch, 0.5)
				end
			end
		--"<1.3 01:24:47> [CLEU] SPELL_AURA_APPLIED#false#0xF13110A0009E1D8C#Baguettie#8465#0#0xF13110A0009E1D8C#Baguettie#8465#0#125359#Tiger Power#1#BUFF", -- [36]
		elseif event == "SPELL_AURA_APPLIED" then
			if spellId == 125359 then
				if destGUID == playerGUID then return end
				self:AddBuff(destGUID)
			end
		--"<7.3 13:31:53> [CLEU] SPELL_AURA_REFRESH#false#0xF13110A000A9762B#Baguettie#8465#0#0xF13110A000A9762B#Baguettie#8465#0#125359#Tiger Power#1#BUFF", -- [187]
		elseif event == "SPELL_AURA_REFRESH" then
			if spellId == 125359 then
				if destGUID == playerGUID then return end
				self:AddBuff(destGUID)
			end
		--"<21.3 01:25:07> [CLEU] SPELL_AURA_REMOVED#false#0xF13110A0009E1D8C#Baguettie#74001#0#0xF13110A0009E1D8C#Baguettie#74001#0#125359#Tiger Power#1#BUFF", -- [535]
		elseif event == "SPELL_AURA_REMOVED" then
			if spellId == 125359 then
				if destGUID == playerGUID then return end
				self:ClearBuff(destGUID)
			end
		end
	end
end

function infSEF:UpdateSpirits()
    local seen = {}
	for i = 1, MAX_TOTEMS do
		local haveTotem, name = GetTotemInfo(i)
		if haveTotem and name and spirits[name] and spirits[name].target then
			seen[name] = true
			local t = spirits[name]
			if not t.alive then
				t.alive = true
				table.insert(activeSpirits, t)
				spiritsByTargetGUID[t.targetGUID] = t
				self:New(t.guid, t.target, name, t.targetGUID)
			end
		end
	end
	for name, t in pairs(spirits) do
		if not seen[name] and t.alive then
			self:KillSpirit(t)
		end
	end
	self:CheckTarget()
end

function infSEF:KillSpirit(t)
    t.alive = nil
    for i, v in ipairs(activeSpirits) do
        if t == v then
            table.remove(activeSpirits, i)
            break
        end
    end
    spiritsByTargetGUID[t.targetGUID] = nil
    if t.targetGUID == lastWarnedTargetGUID then
        lastWarnedTargetGUID = false
    end
	self:Remove(t.guid)
end

function infSEF:CheckTarget()
    local targetGUID = UnitGUID("target")
    if targetGUID then
        if targetGUID == lastWarnedTargetGUID then return end
        for name, t in pairs(spirits) do
            if t.alive then
                if t.targetGUID == targetGUID then
                    lastWarnedTargetGUID = targetGUID
					self:Conflict(t.guid)
                    return
                end
            end
        end
    end
	if lastWarnedTargetGUID then
		self:ClearConflict(lastWarnedTargetGUID)
        lastWarnedTargetGUID = nil
    end
end

function infSEF:Conflict(GUID)
	if GUID == infSEF1_guid then
		infSEF1_text.bg:SetVertexColor(1, 0.19, 0.19, 1)
	else
		infSEF1_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
	end
	if GUID == infSEF2_guid then
		infSEF2_text.bg:SetVertexColor(1, 0.19, 0.19, 1)
	else
		infSEF2_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
	end
	PlaySoundFile("Sound\\Spells\\Bonk1.Ogg", "Master")
end

function infSEF:ClearConflict(GUID)
	for _, t in pairs(spirits) do
		if t.targetGUID == GUID then
			if t.guid == infSEF1_guid then
				infSEF1_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
			else
				infSEF2_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
			end
		end
	end
end

function infSEF:AddBuff(GUID)
	local startTime = GetTime()
	if GUID == infSEF1_guid then
		infSEF1_icon.cdtexture:SetCooldown(startTime, 20)
		infSEF1_icon.cdtexture:Show()
		infSEF1_icon.border:Show()
		infSEF1_icon:Show()
	else
		infSEF2_icon.cdtexture:SetCooldown(startTime, 20)
		infSEF2_icon.cdtexture:Show()
		infSEF2_icon.border:Show()
		infSEF2_icon:Show()
	end
end

function infSEF:ClearBuff(GUID)
	if GUID == infSEF1_guid then
		infSEF1_icon.cdtexture:Hide()
		infSEF1_icon.border:Hide()
		infSEF1_icon:Hide()
	else
		infSEF2_icon.cdtexture:Hide()
		infSEF2_icon.border:Hide()
		infSEF2_icon:Hide()
	end
end

function infSEF:Remove(GUID)
	if GUID == infSEF1_guid then
		infSEF1_guid = nil
		infSEF1_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
		infSEF1_text:SetText("")
		infSEF1_statusbar.text:SetText("")
		infSEF1_statusbar:SetValue(0)
		infSEF1_icon.cdtexture:Hide()
		infSEF1_icon.border:Hide()
		infSEF1_icon:Hide()
		infSEF1_frame:Hide()
		self:CancelTimer(infSEF1_frame.scanTimer)
		infSEF1_frame.scanTimer = nil
	else
		infSEF2_guid = nil
		infSEF2_text.bg:SetVertexColor(0.19, 0.19, 0.19, 1)
		infSEF2_text:SetText("")
		infSEF2_statusbar.text:SetText("")
		infSEF2_statusbar:SetValue(0)
		infSEF2_icon.cdtexture:Hide()
		infSEF2_icon.border:Hide()
		infSEF2_icon:Hide()
		infSEF2_frame:Hide()
		self:CancelTimer(infSEF2_frame.scanTimer)
		infSEF2_frame.scanTimer = nil
	end
	PlaySoundFile("Interface\\Addons\\infSEF\\Sounds\\Death.Ogg", "Master")
end

function infSEF:New(GUID, targetName, name, targetGUID)
	if not infSEF1_guid then
		infSEF1_frame:Show()
		infSEF1_text:SetText(targetName)
		infSEF1_statusbar.text:SetText("0/0")
		infSEF1_guid = GUID
		self:UpdateFrameHealthBar(targetGUID, infSEF1_guid)
		infSEF1_frame.scanTimer = self:ScheduleRepeatingTimer("UpdateFrameHealthBar", 1, targetGUID, infSEF1_guid)
	elseif not infSEF2_guid then
		infSEF2_frame:Show()
		infSEF2_text:SetText(targetName)
		infSEF2_statusbar.text:SetText("0/0")
		infSEF2_guid = GUID
		self:UpdateFrameHealthBar(targetGUID, infSEF2_guid)
		infSEF2_frame.scanTimer = self:ScheduleRepeatingTimer("UpdateFrameHealthBar", 1, targetGUID, infSEF2_guid)
	else
		print("|cff3399FFinf|rSEF: No available frames.")
	end
end

do
	local function Short(value)
		local fmt
		if value >= 1000000 then
			fmt = "%.1fm"
			value = value / 1000000
		elseif value >= 10000 then
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
	function infSEF:UpdateFrameHealthBar(targetGUID, guid)
		local unit = self:UnitIdFromGUID(targetGUID)
		if not unit or not UnitGUID(unit) then return end
		local value, maxValue = UnitHealth(unit), UnitHealthMax(unit)
		if guid == infSEF1_guid then
			infSEF1_statusbar:SetMinMaxValues(0, maxValue)
			infSEF1_statusbar:SetValue(value)
			infSEF1_statusbar.text:SetText(Short(value).."/"..Short(maxValue))
		else
			infSEF2_statusbar:SetMinMaxValues(0, maxValue)
			infSEF2_statusbar:SetValue(value)
			infSEF2_statusbar.text:SetText(Short(value).."/"..Short(maxValue))
		end
	end
end

do
	local unitId
	local function scanUnit(guid, unit)
		local guid2 = UnitGUID(unit)
		if guid2 then
			if guid2 == guid then
				unitId = unit
			end
		end
		return unitId ~= nil
	end
	function infSEF:UnitIdFromGUID(guid)
		unitId = nil
		-- scan bosses first
		-- then mouseover, and focus
		-- then targets of friendlies
		-- then targets of friendly pets
		-- and finally arenas
		if IsInInstance() then
			for i = 1, MAX_BOSS_FRAMES do
				if scanUnit(guid, "boss"..i) then return unitId end
			end
		end
		if scanUnit(guid, "mouseover") then return unitId end
		if scanUnit(guid, "focus") then return unitId end
		if IsInRaid() then
			for i = 1, 25 do --MAX_RAID_MEMBERS goes all the way to 40, seems a bit excessive.
				if scanUnit(guid, "raid"..i.."target") then return unitId end
				if scanUnit(guid, "raidpet"..i.."target") then return unitId end
			end
		end
		if IsInGroup() then
			for i = 1, MAX_PARTY_MEMBERS do
				if scanUnit(guid, "party"..i.."target") then return unitId end
				if scanUnit(guid, "partypet"..i.."target") then return unitId end
			end
		end
		if IsActiveBattlefieldArena() then
			for i = 1, 5 do --MAX_ARENA_TEAM_MEMBERS seems probably broken
				if scanUnit(guid, "arena"..i) then return unitId end
			end
		end
	end
end

