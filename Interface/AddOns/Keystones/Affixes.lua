local addonName, ns = ...

local RESET_NA = 1486479600
local RESET_EU = 1485327600
local weekInSec = 7 * 24 * 60 * 60

local BACKDROP = {
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = nil, tile = true, tileSize = 1, edgeSize = 1,
    insets = {left = 1, right = 1, top = 1, bottom = 1}
}

local FONT_OBJECT_CENTRE = CreateFont("FONT_OBJECT_CENTRE")
FONT_OBJECT_CENTRE:SetFont("Interface\\AddOns\\Keystones\\Media\\ARIALN.TTF", 14)
FONT_OBJECT_CENTRE:SetJustifyH('CENTER')
FONT_OBJECT_CENTRE:SetTextColor(1, 1, 1)
ns.FONT_OBJECT_CENTRE = FONT_OBJECT_CENTRE

local FONT_OBJECT_HIGHLIGHT = CreateFont("FONT_OBJECT_HIGHLIGHT")
FONT_OBJECT_HIGHLIGHT:SetFont("Interface\\AddOns\\Keystones\\Media\\ARIALN.TTF", 14)
FONT_OBJECT_HIGHLIGHT:SetJustifyH('CENTER')
FONT_OBJECT_HIGHLIGHT:SetTextColor(.75, .75, .75)
ns.FONT_OBJECT_HIGHLIGHT = FONT_OBJECT_HIGHLIGHT

local affixFrames = {}

--[[
1 overflowing
2 skittish
3 volcanic
4 necrotic
5 teeming
6 raging
7 bolstering
8 sanguine
9 tyrannical
10 fortified
11 bursting
12 griveous
13 explosive
14 quaking
15 relentless
]]

-- affixes taken from https://mythicpl.us/#this_week
local affixes = {
    { 6, 3, 9 },    -- raging volcanic tyrannical
    { 5, 13, 10 },  -- teeming explosive fortified
    { 7, 12, 9 },   -- bolstering grievous tyrannical
    { 8, 3, 10},    -- sanguine volcanic forified
    { 11, 2, 9 },   -- bursting skittish tyrannical
    { 5, 14, 10 },  -- teeming quaking fortified
    { 6, 4, 9 },    -- raging necrotic tyrannical
    { 7, 2, 10 },   -- bolstering skittish fortified
    { 5, 4, 9 },    -- teeming necrotic tyrannical
    { 8, 12, 10 },  -- sanguine grievous fortified
    { 7, 13, 9 },   -- bolstering explosive tyrannical
    { 11, 14, 10 }, -- bursting quaking fortified
}

local function CreateAffixFrame(parent, affixID)
    local frame = CreateFrame("FRAME", nil, parent)
    frame.tex = frame:CreateTexture("OVERLAY")
    frame.text = frame:CreateFontString("OVERLAY")
    
    local height = 25
    local affixInfos = { C_ChallengeMode.GetAffixInfo(affixID) }
    
    function frame:Update(affixID)
        local affixInfos = { C_ChallengeMode.GetAffixInfo(affixID) }
        frame.tex:SetTexture(affixInfos[3])
        frame.text:SetText(affixInfos[1])
    end
    
    frame:SetSize(100, height)
        
    frame.tex:SetSize(height, height)
    frame.tex:SetPoint("TOPLEFT", frame, "TOPLEFT")
    
    frame.back = frame:CreateTexture(nil, "BACKGROUD")
    frame.back:SetPoint("TOPLEFT", frame.tex, "TOPRIGHT")
    frame.back:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT")
    
    frame.text:SetFont("Interface\\AddOns\\Keystones\\Media\\ARIALN.TTF", 14)
    frame.text:SetPoint("LEFT", frame.tex, "RIGHT", 5, 0)
    
    frame:Update(affixID)
    
    return frame
end


local AffixFrame = CreateFrame("FRAME", nil, UIParent)
AffixFrame:Hide()

local AffixFrameHeight = #affixes * 25 + 25 + 2 * 10
local AffixFrameWidth = 100 * 3 + 2 * 10

AffixFrame:SetFrameStrata('TOOLTIP')
AffixFrame:SetHeight(AffixFrameHeight)
AffixFrame:SetWidth(AffixFrameWidth)
AffixFrame:SetPoint('CENTER', UIParent, 'CENTER')
AffixFrame:EnableMouse(true)
AffixFrame:RegisterForDrag("LeftButton")
--AffixFrame:SetBackdrop(BACKDROP)
--AffixFrame:SetBackdropColor(0, 0, 0, 1)
AffixFrame.tex = AffixFrame:CreateTexture("BACKGROUND")
AffixFrame.tex:SetAllPoints(true)
AffixFrame.tex:SetColorTexture(0, 0, 0)
AffixFrame:SetMovable(true)

AffixFrame:SetScript('OnDragStart', function(self)
    AffixFrame:StartMoving()
end)
AffixFrame:SetScript('OnDragStop', function(self)
    AffixFrame:StopMovingOrSizing()
end)

local AffixFrameButton = CreateFrame("BUTTON", nil, AffixFrame)
AffixFrameButton:SetSize(100, 25)
AffixFrameButton:SetText("close")
AffixFrameButton:SetNormalFontObject(FONT_OBJECT_CENTRE)
AffixFrameButton:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
AffixFrameButton:SetPoint("BOTTOM", AffixFrame, "BOTTOM", 0, 10)
AffixFrameButton:SetScript("OnClick", function(self)
    AffixFrame:Hide()
end)

ns.AffixFrame = AffixFrame

local function updateAffixFrame()
    for i, affixTriples in pairs(affixes) do
        if (not affixFrames[i]) then
            affixFrames[i] = {}
        end
        for j, affixID in pairs(affixTriples) do
            if (not affixFrames[i][j]) then
                affixFrames[i][j] = CreateAffixFrame(AffixFrame, affixID)
                if (i == 1 and j == 1) then
                    affixFrames[i][j]:SetPoint("TOPLEFT", AffixFrame, "TOPLEFT", 10, -10)
                    affixFrames[i][j].back:SetColorTexture(0, 1, 0, .5)
                elseif (i == 1) then
                    affixFrames[i][j]:SetPoint("TOPLEFT", affixFrames[i][j - 1], "TOPRIGHT")
                    affixFrames[i][j].back:SetColorTexture(0, 1, 0, .5)
                else
                    affixFrames[i][j]:SetPoint("TOPLEFT", affixFrames[i - 1][j], "BOTTOMLEFT")
                end
            else
                affixFrames[i][j]:Update(affixID)
            end
        end
    end
end



function ns.sortAffixArray()
    local currTime = GetServerTime()
    local diff
    
    local region = GetCurrentRegion()
    if (region == 1) then
        diff = currTime - RESET_NA
    elseif (region == 3) then
        diff = currTime - RESET_EU
    else
        diff = currTime - RESET_EU
    end
    
    diff = (math.ceil(diff / weekInSec) + 2) % 12
    
    ns.rotateTable(affixes, diff)

    for i = 1, 3 do
        local affName, affText, affImg = C_ChallengeMode.GetAffixInfo(affixes[1][i])
        print(affName)
    end
    
    updateAffixFrame()
end

function ns.getCurrentAffixes()
    return affixes[1]
end

function ns.getAffixes()
    return affixes
end


