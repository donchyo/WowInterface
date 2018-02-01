local addonName, ns = ...

ns.version = "v" .. GetAddOnMetadata(addonName, "Version")

-----------------------------------------------------------------

local myCharFrames = {}
--local headers = { "Character", "Best", "Dungeon", "Level" }
local headersToVar = { ["Account"] = "accName", ["Character"] = "charName", ["Best"] = "weeklyBest", ["Dungeon"] = "dungeon", ["Level"] = "level" }
local headerLength = { ["Account"] = 100, ["Character"] = 100, ["Best"] = 35, ["Dungeon"] = 175, ["Level"] = 35 }
local groupHeaderButtons = {}
local groupFrames = {}
local guildHeaderButtons = {}
local guildFrames = {}
local guildInviteButtons = {}
local frameAndButtonHeight = 19
local myCharFramesWidth = 190
local sort = { 
    group = {
        cat = { "charName", "dungeonID", "level", "accName" },
        dir = { 0, 0, 1, 0 },
    },
    guild = {
        cat = { "charName", "dungeonID", "level", "accName" },
        dir = { 0, 0, 1, 0 },    
    },
}
local optionButtons = {}
local affixFrames = {}
local groupFrame
local guildFrame


-----------------------------------------------------------------
local BACKDROP = {
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = nil, tile = true, tileSize = 16, edgeSize = 16,
    insets = {left = 0, right = 0, top = 0, bottom = 0}
}

local FONT_TITLE = "Interface\\AddOns\\Keystones\\Media\\GregoryPackaging.TTF"--calibrib.TTF"
local FONT_HEADER = "Interface\\AddOns\\Keystones\\Media\\calibrib.TTF"
local FONT_CONTENT = "Interface\\AddOns\\Keystones\\Media\\ARIALN.TTF"
local FONT_SIZE = 14

local FONT_OBJECT_LEFT = CreateFont("FONT_OBJECT_LEFT")
FONT_OBJECT_LEFT:SetFont(FONT_CONTENT, FONT_SIZE)
FONT_OBJECT_LEFT:SetJustifyH('LEFT')
FONT_OBJECT_LEFT:SetTextColor(1, 1, 1)
ns.FONT_OBJECT_LEFT = FONT_OBJECT_LEFT

local FONT_OBJECT_CENTRE = CreateFont("FONT_OBJECT_CENTRE")
FONT_OBJECT_CENTRE:SetFont(FONT_CONTENT, FONT_SIZE)
FONT_OBJECT_CENTRE:SetJustifyH('CENTER')
FONT_OBJECT_CENTRE:SetTextColor(1, 1, 1)
ns.FONT_OBJECT_CENTRE = FONT_OBJECT_CENTRE

local FONT_OBJECT_HIGHLIGHT = CreateFont("FONT_OBJECT_HIGHLIGHT")
FONT_OBJECT_HIGHLIGHT:SetFont(FONT_CONTENT, FONT_SIZE)
FONT_OBJECT_HIGHLIGHT:SetJustifyH('CENTER')
FONT_OBJECT_HIGHLIGHT:SetTextColor(.75, .75, .75)
ns.FONT_OBJECT_HIGHLIGHT = FONT_OBJECT_HIGHLIGHT

local FONT_OBJECT_DISABLED = CreateFont("FONT_OBJECT_DISABLED")
FONT_OBJECT_DISABLED:SetFont(FONT_CONTENT, FONT_SIZE)
FONT_OBJECT_DISABLED:SetJustifyH('CENTER')
FONT_OBJECT_DISABLED:SetTextColor(.5, .5, .5)
ns.FONT_OBJECT_DISABLED = FONT_OBJECT_DISABLED

local colorAlpha = .15
local getColor = {
    ["party"] = { 170 / 255, 167 / 255, 1, colorAlpha },
    ["partyLight"] = { 170 / 255, 167 / 255, 1, colorAlpha / 2 },
    ["guild"] = { 64 / 255, 251 / 255, 64 / 255, colorAlpha },
    ["guildLight"] = { 64 / 255, 251 / 255, 64 / 255, colorAlpha / 2 },
    ["orange"] = { 1, .7, 0, colorAlpha },
    ["orangeLight"] = { 1, .7, 0, colorAlpha / 2 },
}

-----------------------------------------------------------------
local function showFrame(frame)
    frame.tex = frame:CreateTexture(nil, "BACKGROUND")
    frame.tex:SetAllPoints(true)
    frame.tex:SetColorTexture(0, 0, 1, .2)
end

local function CreateMyCharFrame(parent, char)
    local frame = CreateFrame("FRAME", nil, parent)

    function frame:Update(char)
        frame.text:SetText(WrapTextInColorCode(char.charName, select(4, GetClassColor(char.class))) .. " - " .. 
            (char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0 and 
            WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")) .. "\n" ..
            (C_ChallengeMode.GetMapInfo(char.dungeonID) and C_ChallengeMode.GetMapInfo(char.dungeonID) .. " +" .. char.level or "has no key"))
        frame:Show()        
    end
    
    frame:SetSize(myCharFramesWidth, 38)
    --frame:SetPoint("TOPLEFT", posiFrame, "BOTTOMLEFT", 0, -20)
    frame.text = frame:CreateFontString("ARTWORK")
    frame.text:SetFont(FONT_CONTENT, FONT_SIZE)
    frame.text:SetAllPoints(true)
    frame:Update(char)
        
    return frame
end

local function CreateHeaderButton(parent, width, height, text, instance)
    local button = CreateFrame("BUTTON", nil, parent)

    function button:Update(width, height, text)
        button:SetSize(width, height)
        button:SetText(text)
        button:Show()
        
        button:SetScript("OnClick", function(self)
            updateSort(self.instance, headersToVar[self:GetText()])
            if (self.instance == "group") then
                groupFrameResetSlider()
            elseif (self.instance == "guild") then
                guildFrameResetSlider()
            end
        end)
    end

    --button:SetSize(width, height)
    button:SetNormalFontObject(FONT_OBJECT_LEFT)
    button:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
    --button:SetText(text)
    button.instance = instance
    button:Update(width, height, text)
    
    return button
end

local function CreateInfoFrame(parent, type, width, height, char)
    local frame = CreateFrame("FRAME", nil, parent)

    function frame:Update(type, width, height, char)    
        if (type == "Account") then
            frame.text:SetText(char.accName)  
        elseif (type == "Character") then
            frame.text:SetText(WrapTextInColorCode(char.charName, select(4, GetClassColor(char.class))))
        elseif (type == "Best") then
            frame.text:SetText((char.weeklyBest >= keystonesConfig.maxRewardLevel and WrapTextInColorCode(char.weeklyBest, "ff00ff00") or char.weeklyBest == 0
                and WrapTextInColorCode(char.weeklyBest, "ffff0000") or WrapTextInColorCode(char.weeklyBest, "ffffff00")))
        elseif (type == "Dungeon") then
            frame.text:SetText(C_ChallengeMode.GetMapInfo(char.dungeonID))
        elseif (type == "Level") then
            frame.text:SetText("+" .. char.level)
        else
            frame.text:SetText("fail")
        end
        frame:SetSize(width, height)
        
        if (type == "Character") then
            frame:SetScript("OnEnter", function(self)
                local tooltip = ""
                local chrs = ns.getOtherCharNames(char.accName, char.charName)
                for i, chrName in pairs(chrs) do
                    if (i ~= 1) then
                        tooltip = tooltip .. ", "
                    end
                    tooltip = tooltip .. WrapTextInColorCode(chrName, select(4, GetClassColor(keystonesDB[char.accName][chrName].class)))
                end
            
                if (tooltip ~= "") then
                    showTooltip(self, tooltip)
                end
                parent.slider:Active()
            end)
            frame:SetScript("OnLeave", function(self)
                hideTooltip()
                parent.slider:Inactive()
            end)
        else
            frame:SetScript("OnEnter", nil)
            frame:SetScript("OnLeave", nil)
        end
        
        if (keystonesConfig.guiOptions.colorizeNames) then
            frame.tex:SetColorTexture(0, 0, 0, 0)
            if (char.status == "accOn") then
                if (parent.instance == "guild" and keystonesConfig.guiOptions.showOfflineChars and keystonesConfig.guiOptions.showOfflineAccs) then
                    frame.tex:SetColorTexture(unpack(getColor["guildLight"]))
                end
            elseif (char.status == "charOn") then
                if (parent.instance == "guild" and keystonesConfig.guiOptions.showOfflineChars) then
                    frame.tex:SetColorTexture(unpack(getColor["guild"]))
                end
            elseif (char.status == "accOnParty") then
                if (parent.instance == "guild") then
                    frame.tex:SetColorTexture(unpack(getColor["partyLight"]))
                end
            elseif (char.status == "charOnParty") then
                if (parent.instance == "guild" or (parent.instance == "group" and keystonesConfig.guiOptions.showOfflineChars)) then
                    frame.tex:SetColorTexture(unpack(getColor["party"]))
                end
            elseif (char.status == "myAcc") then
                if (true) then
                    frame.tex:SetColorTexture(unpack(getColor["orangeLight"]))
                end
            elseif (char.status == "myChar") then
                if (true) then
                    frame.tex:SetColorTexture(unpack(getColor["orange"]))
                end
            end
        else
            frame.tex:SetColorTexture(0, 0, 0, 0)
        end
        
        frame:Show()
    end

    frame.text = frame:CreateFontString("ARTWORK")
    frame.text:SetFont(FONT_CONTENT, FONT_SIZE)
    frame.text:SetPoint("LEFT", frame, "LEFT", 3, 0)
    frame.tex = frame:CreateTexture(nil, "BACKGROUD")
    frame.tex:SetAllPoints(true)
    frame:Update(type, width, height, char)

    return frame
end

local function CreateInviteButton(parent, height, char)
    local button = CreateFrame("BUTTON", nil, parent)
    
    function button:Update(char)
        button:SetScript("OnClick", function(self)
            InviteUnit(char.charName .. "-" .. char.realm)
        end)
        button:SetScript("OnEnter", function(self)
            showTooltip(self, "invite " .. WrapTextInColorCode(char.charName, select(4, GetClassColor(char.class))))
        end)
        button:Show()
    end
    
    button:SetSize(10, height)
    button:SetText("+")
    button:SetNormalFontObject(FONT_OBJECT_CENTRE)
    button:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)

    button:Update(char)

    button:SetScript("OnLeave", function(self)
        hideTooltip()
    end)

    return button
end

local function CreateOptionButton(parent, option, text)
    local button = CreateFrame("BUTTON", nil, parent)
    button.option = option
    
    function button:SetState(state)
        button.state = state
        button:UpdateColor()
        keystonesConfig.guiOptions[button.option] = state
    end
    function button:SetEnabled()
        button:Enable()
        button:UpdateColor()
    end
    function button:SetDisabled()
        button:Disable()
        button:UpdateColor()
    end
    function button:UpdateColor()
        if (button:IsEnabled()) then
            if (button.state) then
                button.tex:SetColorTexture(0, 1, 0, .4)
            else
                button.tex:SetColorTexture(1, 0, 0, .4)
            end
        else
            if (button.state) then
                button.tex:SetColorTexture(0, .3, 0, .4)
            else
                button.tex:SetColorTexture(.3, 0, 0, .4)
            end     
        end
    end
    
    button:SetSize(150, frameAndButtonHeight)
    button:SetNormalFontObject(FONT_OBJECT_CENTRE)
    button:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
    button:SetDisabledFontObject(FONT_OBJECT_DISABLED)
    button:SetText(text)
    button.tex = button:CreateTexture(nil, "BACKGROUND")
    button.tex:SetAllPoints(true)
    button:SetState(keystonesConfig.guiOptions[button.option])
    if (button.option == "showOfflineAccs" and not keystonesConfig.guiOptions.showOfflineChars) then
        button:SetDisabled()
    end

    button:SetScript("OnClick", function(self)
        self:SetState(not self.state)
        
        if (self.option == "showOfflineChars") then
            if (self.state) then
                optionButtons[2]:SetEnabled()
            else
                optionButtons[2]:SetDisabled()
            end
        end
        
        if (self.option == "keepAccsTogether") then
            if (self.state == false) then
                for i, instance in pairs({ "group", "guild" }) do
                    local idx = ns.contains(sort[instance]["cat"], "accName")
                    if (idx) then
                        table.remove(sort[instance]["cat"], idx)
                        table.remove(sort[instance]["dir"], idx)
                    end
                end
            end        
            
            updateSort("group", nil)
            updateSort("guild", nil)
        end
        
        ns.updateGroupKeys()
        ns.updateGuildKeys()
        groupFrameResetSlider()
        guildFrameResetSlider()
        ns.updateGui()
    end)
    
    button:SetScript("OnEnter", function(self)
        local text = ""
        if (option == "showOfflineChars") then
            text = "toggle the display\nof offline characters"
        elseif (option == "showOfflineAccs") then
            text = "toggle the display\nof offline accounts"
        elseif (option == "showCharsWithoutKey") then
            text = "toggle the display\nof characters which don't\nhave a key currently"
        elseif (option == "keepAccsTogether") then
            text = "if this is active\ncharacters of the same account\nare always grouped"
        end
        showTooltip(self, text)
    end)
    button:SetScript("OnLeave", function(self)
        hideTooltip()
    end)
    
    return button
end

local function CreateAnnounceButton(instance)
    local button = CreateFrame("BUTTON", nil, KeystonesFrame)
    
    button:SetSize(30, frameAndButtonHeight)
    button:SetNormalFontObject(FONT_OBJECT_CENTRE)
    button:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
    button:SetDisabledFontObject(FONT_OBJECT_DISABLED)
    button.tex = button:CreateTexture(nil, "BACKGROUND")
    button.tex:SetAllPoints(true)
    if (instance == "group") then
        button:SetText("P")
        button.tex:SetColorTexture(170 / 255, 167 / 255, 255 / 255, .4)
    elseif (instance == "guild") then
        button:SetText("G")
        button.tex:SetColorTexture(64 / 255, 251 / 255, 64 / 255, .4)
    end
    
    button:SetScript("OnClick", function(self)
        if (instance == "group") then
            if (UnitInParty("player")) then
                Keystones:AnnounceMyKeystones("PARTY")
            elseif (UnitInRaid("player") == 1) then
                Keystones:AnnounceMyKeystones("RAID")
            else
                print("You have no party")
            end
        elseif (instance == "guild") then
            Keystones:AnnounceMyKeystones("GUILD")
        end
    end)

    button:SetScript("OnEnter", function(self)
        local text = ""
        if (instance == "group") then
            text = "announce my keys\nto party"
        elseif (instance == "guild") then
            text = "announce my keys\nto guild"
        end
        showTooltip(self, text)
    end)
    button:SetScript("OnLeave", function(self)
        hideTooltip()
    end)
        
    return button
end

local function CreateAffixFrame(affixNum)
    local frame = CreateFrame("FRAME", nil, KeystonesFrame)
    
    local height = 25
    local currentAffixes = ns.getCurrentAffixes()
    local affixID = currentAffixes[affixNum]
    local affixInfos = { C_ChallengeMode.GetAffixInfo(affixID) }
    
    frame:SetSize(100, height)
    
    frame.tex = frame:CreateTexture(nil, "ARTWORK")
    frame.tex:SetSize(height, height)
    frame.tex:SetPoint("TOPLEFT", frame, "TOPLEFT")
    frame.tex:SetTexture(affixInfos[3])
    
    frame.text = frame:CreateFontString("ARTWORK")
    frame.text:SetFont(FONT_CONTENT, FONT_SIZE)
    frame.text:SetPoint("LEFT", frame.tex, "RIGHT", 5, 0)
    frame.text:SetText(affixInfos[1])
    
    frame:SetScript("OnEnter", function(self)
        showTooltip(self, affixInfos[2])
    end)
    frame:SetScript("OnLeave", function(self)
        hideTooltip()
    end)
    
    return frame
end

local function CreateContentFrame(instance)
    local frame = CreateFrame("FRAME", nil, KeystonesFrame)
    frame.slider = CreateFrame("BUTTON", nil, frame)
    frame.slider.tex = frame.slider:CreateTexture(nil, "BACKGROUND")

    local sliderWidth = 10
    frame.headerHeight = 25
    local frameHeight = 21 * frameAndButtonHeight + 3 + frame.headerHeight
    local sliderTotalHeight = frameHeight - frameAndButtonHeight - 3
    frame.maxChars = 20
    frame.chars = 0
    frame.instance = instance
    
    frame.header = frame:CreateFontString("ARTWORK")
    frame.header:SetPoint("TOPLEFT", frame, "TOPLEFT")
    frame.header:SetHeight(frame.headerHeight)
    frame.header:SetFont(FONT_HEADER, FONT_SIZE + 5)
    if (instance == "group") then
        frame.header:SetText(WrapTextInColorCode("keys in current group:", "ffaaa7ff"))
    elseif (instance == "guild") then
        frame.header:SetText(WrapTextInColorCode("keys in guild:", "ff40fb40"))
    end
        
    function frame:UpdateWidth()
        local width = sliderWidth
        for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
            width = width + headerLength[headerName]
        end
        frame:SetWidth(width)
        frame.header:SetWidth(width)
    end
    function frame.slider:UpdateSize()
        if (frame.chars <= frame.maxChars) then
            frame.slider.tex:SetHeight(sliderTotalHeight)
        else
            local sections = frame.chars - frame.maxChars + 1
            frame.slider.tex:SetHeight(floor(sliderTotalHeight / sections))
        end
        frame.slider:UpdatePos()
    end
    function frame.slider:UpdatePos()
        if (frame.chars <= frame.maxChars) then
            frame.slider.tex:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -frameAndButtonHeight - 3)
            frame.slider:Hide()
        else
            local sections = frame.chars - frame.maxChars + 1
            frame.slider.tex:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -frameAndButtonHeight - 3 - floor(frame.slider.offset * sliderTotalHeight / sections))
            frame.slider:Show()
        end
    end
    function frame.slider:ResetPos()
        frame.slider.offset = 0
        frame.slider:UpdatePos()
    end
    function frame.slider:Active()
        frame.slider.tex:SetAlpha(1)
    end
    function frame.slider:Inactive()
        frame.slider.tex:SetAlpha(.2)
    end
    
    frame:SetHeight(frameHeight)
    frame:UpdateWidth()
    frame:EnableMouseWheel(true)
    frame:RegisterForDrag("LeftButton")
 
    frame.slider:SetWidth(sliderWidth)
    frame.slider:SetHeight(sliderTotalHeight)
    frame.slider:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -frameAndButtonHeight - 3)
    
    frame.slider.offset = 0
    frame.slider.tex:SetColorTexture(.4, .4, .4)
    frame.slider.tex:SetAlpha(.2)
    frame.slider.tex:SetWidth(sliderWidth)
    frame.slider.tex:SetHeight(sliderTotalHeight)
    frame.slider.tex:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -frameAndButtonHeight - 3)
    
    
    frame:SetScript('OnMouseWheel', function(self, delta)
        local offset = frame.slider.offset
        if (delta < 0) then
            -- scroll down
            frame.slider.offset = min(frame.slider.offset - delta, max(frame.chars - frame.maxChars, 0))
        else
            -- scroll up
            frame.slider.offset = max(frame.slider.offset - delta, 0)
        end
        if (offset ~= frame.slider.offset) then
            frame.slider:UpdatePos()
            ns.updateGui()
        end
    end)
    
    frame:SetScript('OnEnter', function(self)
        frame.slider:Active()
    end)
    
    frame:SetScript('OnLeave', function(self)
        frame.slider:Inactive()
    end)
    
    frame:SetScript('OnDragStart', function(self)
        KeystonesFrame:StartMoving()
    end)
    frame:SetScript('OnDragStop', function(self)
        KeystonesFrame:StopMovingOrSizing()
    end)
    
    
    frame.slider:SetScript('OnClick', function(self)
        local sections = max(1, frame.chars - frame.maxChars + 1)
        
        local top = frame.slider:GetTop()
        local _, cursor = GetCursorPosition()
        cursor = cursor / UIParent:GetEffectiveScale()
        local delta = top - cursor
        
        frame.slider.offset = floor(delta / (sliderTotalHeight / sections))
        frame.slider:UpdatePos()
        ns.updateGui()
    end)
    frame.slider:SetScript('OnEnter', function(self)
        frame.slider:Active()
    end)
    
    frame.slider:SetScript('OnLeave', function(self)
        frame.slider:Inactive()
    end)
    
    return frame
end

-----------------------------------------------------------------
local KeystonesFrame = CreateFrame('FRAME', 'KeystonesFrame', UIParent)
KeystonesFrame:SetFrameStrata('DIALOG')
KeystonesFrame:SetWidth(500)
KeystonesFrame:SetHeight(500)
KeystonesFrame:SetPoint('CENTER', UIParent, 'CENTER')
KeystonesFrame:EnableMouse(true)
KeystonesFrame:SetBackdrop(BACKDROP)
KeystonesFrame:SetBackdropColor(0, 0, 0, 1)
KeystonesFrame:SetMovable(true)
KeystonesFrame:RegisterForDrag('LeftButton')
KeystonesFrame:EnableKeyboard(true)
KeystonesFrame:SetPropagateKeyboardInput(true)
KeystonesFrame:SetClampedToScreen(true)
KeystonesFrame:Hide()
KeystonesFrame:SetScript('OnDragStart', function(self)
    self:StartMoving()
end)
KeystonesFrame:SetScript('OnDragStop', function(self)
    self:StopMovingOrSizing()
end)
KeystonesFrame:SetScript('OnKeyDown', function(self, key)
    if key == 'ESCAPE' then
        self:SetPropagateKeyboardInput(false)
        self:Hide()
        ns.SettingsFrame:Hide()
        ns.AffixFrame:Hide()
    end
end)

local closeButton = CreateFrame('BUTTON', nil, KeystonesFrame)
closeButton:SetSize(15, 15)
closeButton:SetNormalFontObject(FONT_OBJECT_CENTRE)
closeButton:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
closeButton:SetText('X')
closeButton:SetPoint('TOPRIGHT', KeystonesFrame, 'TOPRIGHT', -7, -10)
closeButton:SetScript('OnClick', function()
    KeystonesFrame:Hide()
    ns.SettingsFrame:Hide()
    ns.AffixFrame:Hide()
end)

local titleFrame = CreateFrame('FRAME', nil, KeystonesFrame)
titleFrame:SetSize(155, 35)
titleFrame:SetPoint('TOPLEFT', KeystonesFrame, 'TOPLEFT', 10, -10)
titleFrame.text = titleFrame:CreateFontString('BACKGROUND')
titleFrame.text:SetFont(FONT_TITLE, FONT_SIZE + 15)
--titleFrame.text:SetPoint('TOPLEFT', titleFrame, 'TOPLEFT')
titleFrame.text:SetPoint("TOPLEFT")
titleFrame.text:SetText('Keystones')

local versionFrame = CreateFrame("FRAME", nil, KeystonesFrame)
versionFrame:SetSize(30, 19)
versionFrame:SetPoint("BOTTOMLEFT", titleFrame, "BOTTOMRIGHT", 5, 0)
versionFrame.text = versionFrame:CreateFontString("BACKGROUD")
versionFrame.text:SetFont(FONT_CONTENT, FONT_SIZE)
versionFrame.text:SetPoint("TOPLEFT", versionFrame, "TOPLEFT")
versionFrame.text:SetText(ns.version)

local myCharsContentFrame = CreateFrame("FRAME", nil, KeystonesFrame)
myCharsContentFrame.slider = myCharsContentFrame:CreateTexture("BACKGROUND")
local sliderWidth = 10
myCharsContentFrame.maxChars = 8
myCharsContentFrame.chars = 0
local myCharsContentFrameHeight = myCharsContentFrame.maxChars * 38
local sliderTotalHeight = myCharsContentFrameHeight
function myCharsContentFrame.slider:UpdateSize()
    if (myCharsContentFrame.chars <= myCharsContentFrame.maxChars) then
        myCharsContentFrame.slider:SetHeight(sliderTotalHeight)
    else
        local sections = myCharsContentFrame.chars - myCharsContentFrame.maxChars + 1
        myCharsContentFrame.slider:SetHeight(floor(sliderTotalHeight / sections))
    end
    myCharsContentFrame.slider:UpdatePos()
end
function myCharsContentFrame.slider:UpdatePos()
    if (myCharsContentFrame.chars <= myCharsContentFrame.maxChars) then
        myCharsContentFrame.slider:SetPoint("TOPRIGHT", myCharsContentFrame, "TOPRIGHT")
        myCharsContentFrame.slider:Hide()
    else
        local sections = myCharsContentFrame.chars - myCharsContentFrame.maxChars + 1
        myCharsContentFrame.slider:SetPoint("TOPRIGHT", myCharsContentFrame, "TOPRIGHT", 0, -floor(myCharsContentFrame.slider.offset * sliderTotalHeight / sections))
        myCharsContentFrame.slider:Show()
    end
end
function myCharsContentFrame.slider:ResetPos()
    myCharsContentFrame.slider.offset = 0
    myCharsContentFrame.slider:UpdatePos()
end
function myCharsContentFrame.slider:Active()
    myCharsContentFrame.slider:SetAlpha(1)
end
function myCharsContentFrame.slider:Inactive()
    myCharsContentFrame.slider:SetAlpha(.2)
end
myCharsContentFrame:SetHeight(myCharsContentFrameHeight)
myCharsContentFrame:SetWidth(myCharFramesWidth + sliderWidth)
myCharsContentFrame:SetPoint("TOPLEFT", titleFrame, "BOTTOMLEFT", 0, -20)
myCharsContentFrame:EnableMouseWheel(true)
myCharsContentFrame:RegisterForDrag("LeftButton")
myCharsContentFrame.slider:SetColorTexture(.4, .4, .4)
myCharsContentFrame.slider:SetAlpha(.2)
myCharsContentFrame.slider:SetWidth(sliderWidth)
myCharsContentFrame.slider.offset = 0
myCharsContentFrame.slider:SetHeight(sliderTotalHeight)
myCharsContentFrame.slider:SetPoint("TOPRIGHT", myCharsContentFrame, "TOPRIGHT")
myCharsContentFrame:SetScript('OnMouseWheel', function(self, delta)
    local offset = myCharsContentFrame.slider.offset
    if (delta < 0) then
        -- scroll down
        myCharsContentFrame.slider.offset = min(myCharsContentFrame.slider.offset - delta, max(myCharsContentFrame.chars - myCharsContentFrame.maxChars, 0))
    else
        -- scroll up
        myCharsContentFrame.slider.offset = max(myCharsContentFrame.slider.offset - delta, 0)
    end
    if (offset ~= myCharsContentFrame.slider.offset) then
        myCharsContentFrame.slider:UpdatePos()
        ns.updateGui()
    end
end)
myCharsContentFrame:SetScript('OnEnter', function()
    myCharsContentFrame.slider:Active()
end)
myCharsContentFrame:SetScript('OnLeave', function()
    myCharsContentFrame.slider:Inactive()
end)
myCharsContentFrame:SetScript('OnDragStart', function(self)
    KeystonesFrame:StartMoving()
end)
myCharsContentFrame:SetScript('OnDragStop', function(self)
    KeystonesFrame:StopMovingOrSizing()
end)

local tooltipFrame = CreateFrame("FRAME", nil, KeystonesFrame)
tooltipFrame:SetFrameStrata("TOOLTIP")
--tooltipFrame:SetBackdrop(BACKDROP)
--tooltipFrame:SetBackdropColor(0, 0, 0, 1)
tooltipFrame.tex = tooltipFrame:CreateTexture("BACKGROUND")
tooltipFrame.tex:SetAllPoints(true)
tooltipFrame.tex:SetColorTexture(0, 0, 0)
tooltipFrame.text = tooltipFrame:CreateFontString("BACKGROUND")
tooltipFrame.text:SetFont(FONT_CONTENT, FONT_SIZE)
tooltipFrame.text:SetText("")
tooltipFrame:SetSize(tooltipFrame.text:GetWidth() + 20, tooltipFrame.text:GetHeight() + 20)
tooltipFrame.text:SetPoint("TOPLEFT", tooltipFrame, "TOPLEFT", 10, -10)
tooltipFrame:SetPoint("TOPLEFT", KeystonesFrame, "TOPLEFT")
tooltipFrame:Hide()
function showTooltip(obj, text)
    tooltipFrame:SetPoint("TOPLEFT", obj, "BOTTOMRIGHT")
    tooltipFrame.text:SetText(text)
    tooltipFrame:SetSize(tooltipFrame.text:GetWidth() + 20, tooltipFrame.text:GetHeight() + 20)
    tooltipFrame:Show()
end
function hideTooltip()
    tooltipFrame:Hide()
end
    
function ns.initializeGui()
    groupFrame = CreateContentFrame("group")
    groupFrame:SetPoint("TOPLEFT", KeystonesFrame, "TOPLEFT", 10 + myCharFramesWidth + 10 + 20, -10 - 35 - 20)
    function groupFrameResetSlider()
        groupFrame.slider:ResetPos()
    end
    guildFrame = CreateContentFrame("guild")
    guildFrame:SetPoint("TOPLEFT", groupFrame, "TOPRIGHT")
    function guildFrameResetSlider()
        guildFrame.slider:ResetPos()
    end

    optionButtons[1] = CreateOptionButton(KeystonesFrame, "showOfflineChars", "offline chars")
    optionButtons[1]:SetPoint("TOPLEFT", titleFrame, "TOPRIGHT", 50, 0)
    optionButtons[2] = CreateOptionButton(KeystonesFrame, "showOfflineAccs", "offline accounts")
    optionButtons[2]:SetPoint("TOPLEFT", optionButtons[1], "BOTTOMLEFT", 0, -5)
    optionButtons[3] = CreateOptionButton(KeystonesFrame, "showCharsWithoutKey", "chars without key")
    optionButtons[3]:SetPoint("TOPLEFT", optionButtons[1], "TOPRIGHT", 5, 0)
    optionButtons[4] = CreateOptionButton(KeystonesFrame, "keepAccsTogether", "seperate accounts")
    optionButtons[4]:SetPoint("TOPLEFT", optionButtons[2], "TOPRIGHT", 5, 0)
    optionButtons[5] = CreateAnnounceButton("group")
    optionButtons[5]:SetPoint("TOPLEFT", optionButtons[3], "TOPRIGHT", 15, 0)
    optionButtons[6] = CreateAnnounceButton("guild")
    optionButtons[6]:SetPoint("TOPLEFT", optionButtons[4], "TOPRIGHT", 15, 0)
    
    affixFrames[1] = CreateAffixFrame(1)
    affixFrames[2] = CreateAffixFrame(2)
    affixFrames[3] = CreateAffixFrame(3)
    affixFrames[3]:SetPoint("BOTTOMLEFT", KeystonesFrame, "BOTTOMLEFT", 10, 10)
    affixFrames[2]:SetPoint("BOTTOMLEFT", affixFrames[3], "TOPLEFT", 0, 5)
    affixFrames[1]:SetPoint("BOTTOMLEFT", affixFrames[2], "TOPLEFT", 0, 5)
    
    local allAffixButton = CreateFrame("BUTTON", nil, KeystonesFrame)
    allAffixButton:SetSize(20, 20)
    allAffixButton:SetNormalTexture("Interface/AddOns/Keystones/Media/Information.tga")
    allAffixButton:SetHighlightTexture("Interface/AddOns/Keystones/Media/InformationHighlight.tga", "BLEND")
    allAffixButton:SetPoint("LEFT", affixFrames[3], "RIGHT", 10, 0)
    allAffixButton:SetScript("OnClick", function(self)
        if (ns.AffixFrame:IsShown()) then
            ns.AffixFrame:Hide()
        else
            ns.AffixFrame:Show()
        end
    end)     
    allAffixButton:SetScript("OnEnter", function(self)
        showTooltip(self, "show affixes of following weeks")
    end)    
    allAffixButton:SetScript("OnLeave", function(self)
        hideTooltip()
    end)
    
    local settingsButton = CreateFrame("BUTTON", nil, KeystonesFrame)
    settingsButton:SetSize(20, 20)
    settingsButton:SetNormalTexture("Interface/AddOns/Keystones/Media/Gear.tga")
    settingsButton:SetHighlightTexture("Interface/AddOns/Keystones/Media/GearHighlight.tga", "BLEND")
    settingsButton:SetPoint("LEFT", allAffixButton, "RIGHT", 10, 0)
    settingsButton:SetScript("OnClick", function(self)
        if (ns.SettingsFrame:IsShown()) then
            ns.SettingsFrame:Hide()
        else
            ns.SettingsFrame:Show()
        end    end)     
    settingsButton:SetScript("OnEnter", function(self)
        showTooltip(self, "change settings")
    end)    
    settingsButton:SetScript("OnLeave", function(self)
        hideTooltip()
    end)
    ns.CreateSettingsFrame()
end


function getCharStatus(accName, charName)
    local status = "accOff"
    if (ns.contains(ns.guildAccRoster, accName)) then
        status = "accOn"
    end
    if (ns.contains(ns.guildRoster, charName)) then
        status = "charOn"
    end
    if (ns.contains(ns.groupAccRoster, accName)) then
        status = "accOnParty"
    end
    if (ns.contains(ns.groupRoster, charName)) then
        status = "charOnParty"
    end
    if (ns.myAccName == accName) then
        status = "myAcc"
    end
    if (ns.myCharName == charName) then
        status = "myChar"
    end
    return status
end

function insertChar(list, accName, charName)
    local chr = ns.deepCopy(keystonesDB[accName][charName])
    chr.accName = accName
    chr.charName = charName
    chr.dungeon = C_ChallengeMode.GetMapInfo(keystonesDB[accName][charName].dungeonID)
    chr.status = getCharStatus(accName, charName)
    table.insert(list, chr)   
end

function createKeystoneList(instance)
    local g = keystonesConfig.guiOptions
    -- create list
    local sortedKeys = {}
    
    -- populate list
    if (instance == "group") then
        -- insert my keys
        if (keystonesDB[ns.myAccName] and #ns.groupAccRoster > 0) then
            if (g.showOfflineChars) then
                for charName, char in pairs(keystonesDB[ns.myAccName]) do
                    if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction) then
                        insertChar(sortedKeys, ns.myAccName, charName)
                    end          
                end
            else
                if ((keystonesDB[ns.myAccName][ns.myCharName].dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and keystonesDB[ns.myAccName][ns.myCharName].charLvl == 110) then
                    insertChar(sortedKeys, ns.myAccName, ns.myCharName)
                end
            end
        end
    
        -- insert group keys
        for i, accName in ipairs(ns.groupAccRoster) do
            if (g.showOfflineChars) then
                for charName, char in pairs(keystonesDB[accName]) do
                    if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction) then
                        insertChar(sortedKeys, accName, charName)
                    end
                end
            else
                for j, charName in ipairs(ns.groupRoster) do
                    if (keystonesDB[accName] and keystonesDB[accName][charName] and (keystonesDB[accName][charName].dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and keystonesDB[accName][charName].charLvl == 110 and keystonesDB[accName][charName].faction == ns.myFaction) then
                        insertChar(sortedKeys, accName, charName)
                    end
                end
            end
        end
    elseif (instance == "guild") then
        if (g.showOfflineAccs) then
            for accName, acc in pairs(keystonesDB) do
                for charName, char in pairs(keystonesDB[accName]) do
                    if (g.showOfflineChars or ns.contains(ns.guildRoster, charName)) then
                        if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction) then
                            insertChar(sortedKeys, accName, charName)
                        end
                    end
                end
            end
        else
            for i, accName in ipairs(ns.guildAccRoster) do
                if (g.showOfflineChars) then
                    for charName, char in pairs(keystonesDB[accName]) do
                        if ((char.dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and char.charLvl == 110 and char.faction == ns.myFaction) then
                            insertChar(sortedKeys, accName, charName)
                        end
                    end
                else
                    for j, charName in ipairs(ns.guildRoster) do
                        if (keystonesDB[accName] and keystonesDB[accName][charName] and (keystonesDB[accName][charName].dungeonID ~= 0 or keystonesConfig.guiOptions.showCharsWithoutKey) and keystonesDB[accName][charName].charLvl == 110 and keystonesDB[accName][charName].faction == ns.myFaction) then
                            insertChar(sortedKeys, accName, charName)
                        end
                    end
                end
            end
        end
    elseif (instance == "own") then
        if (keystonesDB[ns.myAccName]) then
            for charName, char in pairs(keystonesDB[ns.myAccName]) do
                if (char.charLvl == 110) then
                    insertChar(sortedKeys, ns.myAccName, charName)
                end
            end
        end
    end
    
    return sortedKeys
end

function updateSort(instance, cat)
    if (cat) then
        local idx = ns.contains(sort[instance]["cat"], cat)
        -- sorting table doesn't contain category yet
        if (not idx) then
            table.insert(sort[instance]["cat"], cat)
            if (cat == "level" or cat == "weeklyBest") then
                table.insert(sort[instance]["dir"], 1)
            else
                table.insert(sort[instance]["dir"], 0)
            end
        -- main (final) sorter got klicked again
        elseif (idx == #sort[instance]["cat"] or (keystonesConfig.guiOptions.keepAccsTogether and idx == #sort[instance]["cat"] - 1)) then
            sort[instance]["dir"][idx] = (sort[instance]["dir"][idx] - 1) * -1
        -- another sorter got klicked which is already in the list
        else
            table.remove(sort[instance]["cat"], idx)
            table.remove(sort[instance]["dir"], idx)
            
            table.insert(sort[instance]["cat"], cat)
            if (cat == "level" or cat == "weeklyBest") then
                table.insert(sort[instance]["dir"], 1)
            else
                table.insert(sort[instance]["dir"], 0)
            end        
        end
    end
    
    -- always sort by account name last if option is chosen
    if (keystonesConfig.guiOptions.keepAccsTogether) then
        local idx = ns.contains(sort[instance]["cat"], "accName")
        if (idx) then
            table.remove(sort[instance]["cat"], idx)
            table.remove(sort[instance]["dir"], idx)
        end
        table.insert(sort[instance]["cat"], "accName")
        table.insert(sort[instance]["dir"], 0)    
    end
    
    if (instance == "group") then
        ns.updateGroupKeys()
    elseif (instance == "guild") then
        ns.updateGuildKeys()    
    end
    ns.updateGui()
end

function sortKeys(instance)
    if (instance == "group") then
        for i, cat in ipairs(sort.group.cat) do
            ns.sortedGroupKeys = ns.sortBy(ns.sortedGroupKeys, cat, sort.group.dir[i])
        end
    elseif (instance == "guild") then
        for i, cat in ipairs(sort.guild.cat) do
            ns.sortedGuildKeys = ns.sortBy(ns.sortedGuildKeys, cat, sort.guild.dir[i])
        end    
    elseif (instance == "own") then
        ns.sortedOwnKeys = ns.sortBy(ns.sortedOwnKeys, "charName", 0)
        ns.sortedOwnKeys = ns.sortBy(ns.sortedOwnKeys, "level", 1)
    end
end

function ns.updateGroupKeys()
    ns.sortedGroupKeys = createKeystoneList("group")
    sortKeys("group")
end

function ns.updateGuildKeys()
    ns.sortedGuildKeys = createKeystoneList("guild")
    sortKeys("guild")
end

function ns.updateOwnKeys()
    ns.sortedOwnKeys = createKeystoneList("own")
    sortKeys("own")
end

function ns.updateGui()
    -- own characters to the left
    myCharsContentFrame.chars = #ns.sortedOwnKeys
    myCharsContentFrame.slider.offset = min(myCharsContentFrame.slider.offset, max(myCharsContentFrame.chars - myCharsContentFrame.maxChars + 1, 0))
    myCharsContentFrame.slider:UpdateSize()
    local i = 1
    for idx, char in pairs(ns.sortedOwnKeys) do
        if (idx > myCharsContentFrame.slider.offset and idx <= myCharsContentFrame.maxChars + myCharsContentFrame.slider.offset) then
            if (not myCharFrames[i]) then
                myCharFrames[i] = CreateMyCharFrame(myCharsContentFrame, char)
                if (i == 1) then
                    myCharFrames[i]:SetPoint("TOPLEFT", myCharsContentFrame, "TOPLEFT")
                else
                    myCharFrames[i]:SetPoint("TOPLEFT", myCharFrames[i - 1], "BOTTOMLEFT")
                end
            else
                myCharFrames[i]:Update(char)
            end   
            i = i + 1
        end
    end
    for j = i, #myCharFrames do
        myCharFrames[j]:Hide()
    end

    
    -- headers for groupkeys
    local showGroupKeys = false
    if (UnitInParty("player") and UnitInRaid("player") ~= 1 and #ns.groupAccRoster > 0) then
        showGroupKeys = true
        groupFrame:Show()
        guildFrame:SetPoint("TOPLEFT", groupFrame, "TOPRIGHT", 20, 0)
        
        local lastHeader = 0
        for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
            if (not groupHeaderButtons[i]) then
                groupHeaderButtons[i] = CreateHeaderButton(groupFrame, headerLength[headerName], frameAndButtonHeight, headerName, "group")
                if (i == 1) then
                    groupHeaderButtons[i]:SetPoint("TOPLEFT", groupFrame, "TOPLEFT", 0, -groupFrame.headerHeight)
                else
                    groupHeaderButtons[i]:SetPoint("TOPLEFT", groupHeaderButtons[i - 1], "TOPRIGHT")
                end
            else
                groupHeaderButtons[i]:Update(headerLength[headerName], frameAndButtonHeight, headerName)
            end
            lastHeader = i
        end
        for i = lastHeader + 1, #groupHeaderButtons do
            groupHeaderButtons[i]:Hide()
        end
    else
        --[[for i, button in pairs(groupHeaderButtons) do
            groupHeaderButtons[i]:Hide()
        end]]
        groupFrame:Hide()
        guildFrame:SetPoint("TOPLEFT", KeystonesFrame, "TOPLEFT", 10 + myCharFramesWidth + 10 + 20, -10 - 35 - 20)
    end
    
    -- groupkeys
    groupFrame.chars = #ns.sortedGroupKeys
    groupFrame.slider.offset = min(groupFrame.slider.offset, max(groupFrame.chars - groupFrame.maxChars + 1, 0))
    groupFrame.slider:UpdateSize()
    if (showGroupKeys) then
        local j = 1
        for idx, char in pairs(ns.sortedGroupKeys) do
            if (idx > groupFrame.slider.offset and idx <= groupFrame.maxChars + groupFrame.slider.offset) then
                for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
                    if (not groupFrames[i]) then
                        groupFrames[i] = {}
                    end
                    if (not groupFrames[i][j]) then
                        groupFrames[i][j] = CreateInfoFrame(groupFrame, headerName, headerLength[headerName], frameAndButtonHeight, char)
                        if (j == 1) then
                            groupFrames[i][j]:SetPoint("TOPLEFT", groupHeaderButtons[i], "BOTTOMLEFT", 0, -3)
                        else
                            groupFrames[i][j]:SetPoint("TOPLEFT", groupFrames[i][j - 1], "BOTTOMLEFT")
                        end
                    else
                        groupFrames[i][j]:Update(headerName, headerLength[headerName], frameAndButtonHeight, char)
                    end
                end
                j = j + 1
            end
        end
        -- hide excessive frame rows (character left group)
        for jj = j, #groupFrames[1] do
            for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
                groupFrames[i][jj]:Hide()
            end
        end
        -- hide excessive frame columns (header deleted)
        for i = #keystonesConfig.guiOptions.headers + 1, #groupHeaderButtons do
            for j = 1, #groupFrames[1] do
                groupFrames[i][j]:Hide()
            end
        end
    --[[else
        -- hide all group frames if not in a group
        for i = 1, #groupFrames do
            for j = 1, #groupFrames[i] do
                groupFrames[i][j]:Hide()
            end
        end]]
    end

    -- headers for guildkeys
    local lastHeader = 0
    for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
        if (not guildHeaderButtons[i]) then
            guildHeaderButtons[i] = CreateHeaderButton(guildFrame, headerLength[headerName], frameAndButtonHeight, headerName, "guild")
            if (i == 1) then
                guildHeaderButtons[i]:SetPoint("TOPLEFT", guildFrame, "TOPLEFT", 0, -guildFrame.headerHeight)
            else
                guildHeaderButtons[i]:SetPoint("TOPLEFT", guildHeaderButtons[i - 1], "TOPRIGHT")
            end
        else
            guildHeaderButtons[i]:Update(headerLength[headerName], frameAndButtonHeight, headerName)
        end
        lastHeader = i
    end
    for i = lastHeader + 1, #guildHeaderButtons do
        guildHeaderButtons[i]:Hide()
    end
    
    -- guildkeys
    guildFrame.chars = #ns.sortedGuildKeys
    guildFrame.slider.offset = min(guildFrame.slider.offset, max(guildFrame.chars - guildFrame.maxChars + 1, 0))
    guildFrame.slider:UpdateSize()
    local j = 1
    for idx, char in pairs(ns.sortedGuildKeys) do
        if (idx > guildFrame.slider.offset and idx <= guildFrame.maxChars + guildFrame.slider.offset) then
            for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
                if (not guildFrames[i]) then
                    guildFrames[i] = {}
                end
                if (not guildFrames[i][j]) then
                    guildFrames[i][j] = CreateInfoFrame(guildFrame, headerName, headerLength[headerName], frameAndButtonHeight, char)
                    if (j == 1) then
                        guildFrames[i][j]:SetPoint("TOPLEFT", guildHeaderButtons[i], "BOTTOMLEFT", 0, -3)
                    else
                        guildFrames[i][j]:SetPoint("TOPLEFT", guildFrames[i][j - 1], "BOTTOMLEFT")
                    end
                else
                    guildFrames[i][j]:Update(headerName, headerLength[headerName], frameAndButtonHeight, char)
                end
            end
            
            -- invite buttons
            if (not guildInviteButtons[j]) then
                guildInviteButtons[j] = CreateInviteButton(guildFrame, frameAndButtonHeight, char)
                guildInviteButtons[j]:SetPoint("TOPRIGHT", guildFrames[1][j], "TOPLEFT")
            else
                guildInviteButtons[j]:Update(char)
            end
            if (char.status ~= "charOn") then
                guildInviteButtons[j]:Hide()
            end
            
            j = j + 1
        end
    end
    if (guildFrames[1]) then
        for jj = j, #guildFrames[1] do
            for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
                guildFrames[i][jj]:Hide()
                guildInviteButtons[jj]:Hide()
            end
        end
    end
    for i = #keystonesConfig.guiOptions.headers + 1, #guildHeaderButtons do
        for j = 1, #guildFrames[1] do
            guildFrames[i][j]:Hide()
        end
    end
    
    -- calculate gui width
    local guiWidth = 10 + myCharFramesWidth + sliderWidth + 20 + 10
    for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
        guiWidth = guiWidth + headerLength[headerName]
    end
    if (showGroupKeys) then
        guiWidth = guiWidth + 20 + 10
        for i, headerName in pairs(keystonesConfig.guiOptions.headers) do
            guiWidth = guiWidth + headerLength[headerName]
        end        
    end
    guiWidth = guiWidth + 20
    KeystonesFrame:SetWidth(guiWidth)
end


function ns.ToggleKeystonesFrame()
    KeystonesFrame:SetShown(not KeystonesFrame:IsShown())
    if (KeystonesFrame:IsShown()) then
        KeystonesFrame:SetPropagateKeyboardInput(true)
    end
end






