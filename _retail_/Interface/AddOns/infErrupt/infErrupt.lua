----------------------------------------------
-- infErrupt
----------------------------------------------

local infErrupt = CreateFrame("Frame", "infErrupt")
infErrupt:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infErrupt:RegisterEvent("ADDON_LOADED")

local db
local GetSpellLink = GetSpellLink

local defaults = {
	announce = false,
	channel = "SAY"
}

function infErrupt:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	infErruptDB = infErruptDB or defaults
	db = infErruptDB
	for k, v in pairs(defaults) do 
		if db[k] == nil then 
			db[k] = defaults[k] 
		end
	end

	SlashCmdList["infErrupt"] = function(msg) 
		self:ChatCommand(msg) 
	end
	SLASH_infErrupt1 = "/inferrupt"

	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end

function infErrupt:COMBAT_LOG_EVENT_UNFILTERED(_, _, event, _, _, _, sourceFlags, _, _, _, _, _, _, _, _, extraSkillId)
	if event == "SPELL_INTERRUPT" then
		if bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) > 0 then
			self:Print(CAMERA_LOCKED)
			self:PlaySound("cling")
			if db.announce == true then
				SendChatMessage("I made a intrrpt - "..GetSpellLink(extraSkillId), db.channel)
			end
		end
	end
end

function infErrupt:Print(text)
	ZoneTextString:SetText(text)
	PVPInfoTextString:SetText("")
	ZoneTextFrame.startTime = GetTime()
	ZoneTextFrame.fadeInTime = 0
	ZoneTextFrame.holdTime = 1
	ZoneTextFrame.fadeOutTime = 2
	ZoneTextString:SetTextColor(0.5, 1, 0)
	ZoneTextFrame:Show()
end

function infErrupt:PlaySound(sound)
	PlaySoundFile("Interface\\AddOns\\infErrupt\\Sounds\\"..sound..".mp3")
end

function infErrupt:ChatCommand(input)
	local cmd, arg = string.split(" ", input, 2)
	cmd = string.lower(cmd or "")
	arg = string.lower(arg or "")

	if not input or input:trim() == "" then
		if db.announce == true then
			print("|cff3399FFinf|rInterrupt: Announcing OFF")
			db.announce = false
		else
			print("|cff3399FFinf|rInterrupt: Announcing ON")
			db.announce = true
		end
	elseif cmd == "channel" then
		if arg == "say" then
			print("|cff3399FFinf|rInterrupt: Channel set to SAY")
			db.channel = "SAY"
		elseif arg == "party" then
			print("|cff3399FFinf|rInterrupt: Channel set to PARTY")
			db.channel = "PARTY"
		else
			print("|cff3399FFinf|rInterrupt: Invalid channel")
		end
	end
end

