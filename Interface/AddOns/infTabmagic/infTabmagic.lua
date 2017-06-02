----------------------------------------------
-- infTabmagic
----------------------------------------------

infTabmagic = CreateFrame("Frame")

function infTabmagic:OnEvent(event, arg1, ...)
	if event == "ADDON_LOADED" and arg1 == "infTabmagic" then
		self:UnregisterEvent(event)
		self:RegisterEvent("PLAYER_ENTERING_WORLD")
		self:RegisterEvent("UPDATE_WORLD_STATES")
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		KeyBindingFrame.okayButton:HookScript("OnClick", infTabmagic.UpdateKeyBindings)
		return
	elseif GetCurrentBindingSet() ~= 1 and GetCurrentBindingSet() ~= 2 then
		return
	elseif not infTabmagic_pve_tne and not infTabmagic_pve_tnep then
		self:UpdateKeyBindings()
	end
	local pvpzone = self:InPvpZone()
	local tne = (pvpzone and infTabmagic_pve_tnep) or (not pvpzone and infTabmagic_pve_tne)
	local tnep = (pvpzone and infTabmagic_pve_tne) or (not pvpzone and infTabmagic_pve_tnep)
	local ctne, ctnep = self:GetBindings()
	if (tne and ctne ~= tne) or (tnep and ctnep ~= tnep) then
		if not InCombatLockdown() and (not tne or SetBinding(tne, "TARGETNEARESTENEMY")) and (not tnep or SetBinding(tnep, "TARGETNEARESTENEMYPLAYER")) then
			if tnep then
				print("|cff3399FFinf|rTabmagic: PVP")
			else
				print("|cff3399FFinf|rTabmagic: PVE")
			end
			SaveBindings(GetCurrentBindingSet())
			self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		else
			self:RegisterEvent("PLAYER_REGEN_ENABLED")
		end
	end
end

function infTabmagic:UpdateKeyBindings()
	infTabmagic_pve_tne, infTabmagic_pve_tnep = infTabmagic:GetBindings(infTabmagic:InPvpZone())
end

function infTabmagic:InPvpZone()
	local pvpType, isFFA = GetZonePVPInfo()
	return select(2,IsInInstance()) == "pvp" or select(2,IsInInstance()) == "arena" or pvpType == "arena" or pvpType == "combat" or isFFA
end

function infTabmagic:GetBindings(pvpzone)
	if pvpzone then
		return GetBindingKey("TARGETNEARESTENEMYPLAYER"), GetBindingKey("TARGETNEARESTENEMY")
	end
	return GetBindingKey("TARGETNEARESTENEMY"), GetBindingKey("TARGETNEARESTENEMYPLAYER")
end

infTabmagic:SetScript("OnEvent", infTabmagic.OnEvent)
infTabmagic:RegisterEvent("ADDON_LOADED")

