----------------------------------------------
-- infError
----------------------------------------------

local addon = CreateFrame("Frame", "infError")
local orig = UIErrorsFrame:GetScript("OnEvent")

local filter = {
	[ERR_OUT_OF_CHI] = true,						-- Not enough chi
	[ERR_OUT_OF_RAGE] = true,						-- Not enough rage
	[ERR_OUT_OF_FOCUS] = true,						-- Not enough focus
	[ERR_OUT_OF_RUNES] = true,						-- Not enough runes
	[ERR_OUT_OF_ENERGY] = true,						-- Not enough energy
	[ERR_OUT_OF_RUNIC_POWER] = true,				-- Not enough runic power
	[ERR_ABILITY_COOLDOWN] = true,					-- Ability is not ready yet.
	[ERR_GENERIC_NO_TARGET] = true,					-- You have no target.
	[ERR_INVALID_ATTACK_TARGET] = true, 			-- You cannot attack that target.
	[ERR_NO_ATTACK_TARGET] = true, 					-- There is nothing to attack.
	[ERR_CLIENT_LOCKED_OUT] = true,					-- You can't do that right now.
	[ERR_ATTACK_MOUNTED] = true,					-- Can't attack while mounted.
	[ERR_ATTACK_STUNNED] = true,					-- Can't attack while stunned.
	[ERR_SPELL_COOLDOWN] = true,					-- Spell is not ready yet.
	[ERR_OUT_OF_RANGE] = true,						-- Out of range.
	[ERR_BADATTACKPOS] = true,						-- You are too far away!
	[ERR_BADATTACKFACING] = true,					-- You are facing the wrong way!
	[ERR_MUST_EQUIP_ITEM] = true,					-- You must equip that item to use it.
	[SPELL_FAILED_STUNNED] = true,					-- Can't do that while stunned
	[SPELL_FAILED_BAD_TARGETS] = true,				-- Invalid target
	[SPELL_FAILED_BAD_IMPLICIT_TARGETS] = true,		-- No target
	[SPELL_FAILED_TARGETS_DEAD] = true,				-- Your target is dead	
	[SPELL_FAILED_UNIT_NOT_INFRONT] = true,			-- Target needs to be in front of you.
	[SPELL_FAILED_CUSTOM_ERROR_153] = true,			-- You have insufficient Blood Charges.
	[SPELL_FAILED_CUSTOM_ERROR_154] = true, 		-- No fully depleted runes.
	[SPELL_FAILED_CUSTOM_ERROR_159] = true,			-- Both Frost Fever and Blood Plague must be present on the target.
	[SPELL_FAILED_SPELL_IN_PROGRESS] = true,		-- Another action is in progress	
}

local function errorEvent(self, event, msg, ...)
	if event == "UI_ERROR_MESSAGE" then
		if filter[msg] then
			return
		end
	end
	return orig(self, event, msg, ...)
end

addon:RegisterEvent("ADDON_LOADED")
addon:SetScript("OnEvent", function(self, event, name)
	if (name ~= self:GetName()) then return end

	self:UnregisterEvent(event)

	UIErrorsFrame:SetScript("OnEvent", errorEvent)
end)

