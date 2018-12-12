----------------------------------------------
-- infMarker
----------------------------------------------

local infMarker = CreateFrame("Frame", "infMarker")
infMarker:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infMarker:RegisterEvent("PLAYER_LOGIN")

local GetTime = GetTime
local UnitClass = UnitClass
local SetRaidTarget = SetRaidTarget
local SendChatMessage = SendChatMessage
local UnitIsGroupLeader = UnitIsGroupLeader
local GetNumGroupMembers = GetNumGroupMembers
local GetRaidTargetIndex = GetRaidTargetIndex

local icons = {
	ROGUE = {1, 8, 4, 2, 3, 5, 6, 7},
	DRUID = {2, 1, 4, 5, 3, 6, 7, 8},
	PALADIN = {3, 1, 5, 2, 4, 6, 7, 8},
	WARLOCK = {3, 8, 7, 5, 1, 2, 4, 6},
	MONK = {4, 1, 5, 8, 2, 3, 6, 7},
	HUNTER = {4, 8, 7, 1, 2, 3, 5, 6},
	WARRIOR = {5, 8, 4, 3, 1, 2, 7, 6},
	MAGE = {6, 8, 5, 7, 1, 2, 3, 4},
	SHAMAN = {6, 1, 5, 3, 2, 4, 7, 8},
	DEATHKNIGHT = {7, 8, 3, 2, 1, 4, 5, 6},
	PRIEST = {8, 5, 1, 2, 3, 4, 6, 7}
}

function infMarker:PLAYER_LOGIN()
	SlashCmdList["infMarker"] = function() 
		self:ChatCommand() 
	end
	SLASH_infMarker1 = "/infmarker"

	self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

local function IsInArena()
	local _, instanceType = IsInInstance()
	return instanceType == "arena"
end

function infMarker:PLAYER_ENTERING_WORLD()
	if IsInArena() then
		self:RegisterEvent("ARENA_OPPONENT_UPDATE")
		self:RegisterEvent("GROUP_ROSTER_UPDATE")
		self:RegisterEvent("PARTY_LEADER_CHANGED")
		self:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")			
	else
		self:UnregisterEvent("ARENA_OPPONENT_UPDATE")
		self:UnregisterEvent("GROUP_ROSTER_UPDATE")
		self:UnregisterEvent("PARTY_LEADER_CHANGED")
		self:UnregisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
	end
end

function infMarker:ChatCommand()
	self:MarkUp(nil)
	print("|cff3399FFinf|rMarker: Attempted to mark up group members.")
end

function infMarker:ARENA_OPPONENT_UPDATE(event, _, type)
	if type == "seen" then
		self:UnregisterEvent(event)
		self:UnregisterEvent("GROUP_ROSTER_UPDATE")
		self:UnregisterEvent("PARTY_LEADER_CHANGED")
		self:UnregisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")		
	end
end

function infMarker:GROUP_ROSTER_UPDATE()
	self:MarkUp(true)
end

function infMarker:PARTY_LEADER_CHANGED()
	self:MarkUp(true)
end

function infMarker:ARENA_PREP_OPPONENT_SPECIALIZATIONS()
	self:MarkUp(true)
end

do
	local last = 0
	function infMarker:MarkUp(spam)
		local current = {}
		for i = 1, GetNumGroupMembers() do
			if GetRaidTargetIndex("raid"..i) then
				current[GetRaidTargetIndex("raid"..i)] = i
			end
		end
		for i = 1, GetNumGroupMembers() do
			if not GetRaidTargetIndex("raid"..i) then
				local _, class = UnitClass("raid"..i)
				if not class then return end
				local j = 1
				while true do
					if not icons[class][j] then
						-- no more icons
						return
					end
					if not current[icons[class][j]] then
						break
					end
					j = j + 1
				end
				SetRaidTarget("raid"..i, icons[class][j])
				current[icons[class][j]] = i
			end
		end

		if spam then
			if UnitIsGroupLeader("player") then
				if not RaidFrameAllAssistCheckButton:GetChecked() then
					RaidFrameAllAssistCheckButton:Click()
				end
			else
				if not GetRaidTargetIndex("player") then
					local time = GetTime()
					if (time - last) > 5 then
						last = time
						SendChatMessage("infMarker: Mark up, or promote/leader", "PARTY")
					end
				end
			end
		end
	end
end

