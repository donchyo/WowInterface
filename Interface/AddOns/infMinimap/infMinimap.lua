----------------------------------------------
-- infMinimap
----------------------------------------------

Minimap:SetMaskTexture("Interface\\Buttons\\WHITE8x8")
Minimap:SetScale(1.1)
Minimap:ClearAllPoints()
Minimap:SetPoint("TOPRIGHT", UIParent, -18, -18)

BorderFrame = CreateFrame("Frame", nil, Minimap)
BorderFrame:SetPoint("TOPLEFT", -2, 2)
BorderFrame:SetPoint("BOTTOMRIGHT", 2, -2)	
BorderFrame:SetBackdrop({
	bgFile = nil, 
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
	edgeSize = 12, 
	tile = false, 
	insets = {left = 0, right = 0, top = 0, bottom = 0}
})

MinimapBorder:Hide()
MinimapBorderTop:Hide()
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
MiniMapVoiceChatFrame:Hide()
MinimapZoneTextButton:Hide()
MinimapNorthTag:SetAlpha(0)
MiniMapWorldMapButton:Hide()
GameTimeFrame:Hide()

MiniMapMailFrame:ClearAllPoints()
MiniMapMailFrame:SetPoint("TOP", Minimap, 0, 2)
MiniMapMailBorder:Hide()
MiniMapMailIcon:SetTexture("Interface\\AddOns\\infMinimap\\mail")

MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint('TOPLEFT', Minimap,  -2, 1)
MiniMapTrackingBackground:Hide()
MiniMapTrackingButtonBorder:SetTexture(nil)
MiniMapTrackingButton:SetHighlightTexture(nil)
MiniMapTrackingIconOverlay:SetTexture(nil)
MiniMapTrackingIcon:SetTexCoord(0.065, 0.935, 0.065, 0.935)

MiniMapChallengeMode:ClearAllPoints()
MiniMapChallengeMode:SetParent(Minimap)
MiniMapChallengeMode:SetPoint("TOPRIGHT", Minimap, "TOPRIGHT", -4, -4)

MiniMapInstanceDifficulty:ClearAllPoints()
MiniMapInstanceDifficulty:SetParent(Minimap)
MiniMapInstanceDifficulty:SetPoint("TOPRIGHT", Minimap, "TOPRIGHT", 0, 0)

QueueStatusMinimapButton:ClearAllPoints()
QueueStatusMinimapButton:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", -2, -2)
QueueStatusMinimapButtonBorder:Hide()

if not IsAddOnLoaded("Blizzard_TimeManager") then
	LoadAddOn("Blizzard_TimeManager")
end
TimeManagerClockButton:Hide()

function GetMinimapShape() return "SQUARE" end

