----------------------------------------------
-- infBGMiniMapSkinner
----------------------------------------------

local HiddenFrame = CreateFrame("Frame")
HiddenFrame:Hide()
local function Kill(object)
	if object.UnregisterAllEvents then
		object:UnregisterAllEvents()
		object:SetParent(HiddenFrame)
	end
	object:Hide()
end

local tinymap = CreateFrame("Frame", "UIZoneMap", UIParent)
tinymap:RegisterEvent("ADDON_LOADED")
tinymap:SetPoint("LEFT", 19, 137)
tinymap:SetSize(223, 150)
tinymap:Hide()

local tinymapbg = CreateFrame("Frame", nil, tinymap)
tinymapbg:SetPoint("TOPLEFT", tinymap, "TOPLEFT", -1, 1)
tinymapbg:SetPoint("BOTTOMRIGHT", tinymap, "BOTTOMRIGHT", 1, -1)
tinymapbg:SetBackdrop({
	bgFile = nil, 
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
	edgeSize = 11, 
	tile = false, 
	insets = {left = 0, right = 0, top = 0, bottom = 0}
})

tinymap:SetScript("OnEvent", function(self, event, addon)
	if addon ~= "Blizzard_BattlefieldMinimap" then return end
	self:UnregisterEvent(event)

	BattlefieldMinimap:SetScript("OnShow", function(self)
		tinymap:Show()
		Kill(BattlefieldMinimapCorner)
		Kill(BattlefieldMinimapBackground)
		Kill(BattlefieldMinimapTab)
		Kill(BattlefieldMinimapTabLeft)
		Kill(BattlefieldMinimapTabMiddle)
		Kill(BattlefieldMinimapTabRight)
		Kill(BattlefieldMinimapCloseButton)		
		self:SetParent(tinymap)
		self:SetPoint("TOPLEFT", tinymap, "TOPLEFT", 2, -2)
		tinymap:SetScale(1)
		tinymap:SetAlpha(1)
		BattlefieldMinimap_Update()
	end)

	BattlefieldMinimap:SetScript("OnHide", function(self)
		tinymap:SetScale(0.00001)
		tinymap:SetAlpha(0)
	end)
end)

