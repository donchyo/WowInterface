----------------------------------------------
-- infBlackBarKiller
----------------------------------------------

local infBlackBarKiller = CreateFrame("Frame", "infBlackBarKiller")
infBlackBarKiller:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infBlackBarKiller:RegisterEvent("ADDON_LOADED")

function infBlackBarKiller:ADDON_LOADED(event, addon)
	if addon ~= "Blizzard_CombatLog" then return end
	self:UnregisterEvent(event)

	local BB = _G["CombatLogQuickButtonFrame_Custom"]
	if not BB then return end
	BB:Hide()
	BB:HookScript("OnShow", function(self) BB:Hide() end)
	BB:SetHeight(0)
end

