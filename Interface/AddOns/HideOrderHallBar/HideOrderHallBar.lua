-- License: Public Domain

local b = OrderHallCommandBar
b:SetScript("OnShow", b.Hide)
b:Hide()

-- initial call for other addons, re-register events
b:RequestCategoryInfo()
b:RegisterEvent("GARRISON_TALENT_COMPLETE")
b:RegisterEvent("GARRISON_TALENT_UPDATE")
b:RegisterUnitEvent("UNIT_PHASE", "player")

-- prevent buffs jumping up/down
UIParent:UnregisterEvent("UNIT_AURA")
