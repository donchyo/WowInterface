local addonName, ns = ...

local FONT_CONTENT = "Interface\\AddOns\\Keystones\\Media\\ARIALN.TTF"



local optionButtons = {}

local SettingsFrame = CreateFrame("FRAME", nil, UIParent)
SettingsFrame:Hide()


local function CreateCheckButton(option, text)
    local button = CreateFrame("BUTTON", nil, SettingsFrame)
    button.outline = button:CreateTexture(nil, "BACKGROUD")
    button.inline = button:CreateTexture(nil, "BACKGROUD")
    button.text = button:CreateFontString("ARTWORK")
    button.state = false
    
    
    function button:Update()
        if (option == "minimapButton") then
            button.state = keystonesConfig.minimapIcon.hide
        elseif (option == "announce") then
            button.state = keystonesConfig.announceNewToParty
        --elseif (option == "notifyParty") then
            --button.state = keystonesConfig.displayNewKeyOf == "PARTY" or keystonesConfig.displayNewKeyOf == "GUILD"
        elseif (option == "notifyGuild") then
            button.state = keystonesConfig.displayNewKeyOf == "GUILD"
        elseif (option == "color") then
            button.state = keystonesConfig.guiOptions.colorizeNames
        elseif (option == "minimapTooltip") then
            button.state = keystonesConfig.longTooltip
        end
        button.inline:SetColorTexture(1, 1, 1, button.state and 1 or 0)
    end
    button:Update()
        
    button:SetScript("OnClick", function(self)
        button.state = not button.state
        if (option == "minimapButton") then
            keystonesConfig.minimapIcon.hide = button.state
            ns.icon:Refresh(addonName)
            print((keystonesConfig.minimapIcon.hide and "Hiding" or "Showing") .. " minimap button (/keys hidemini)") 
        elseif (option == "announce") then
            keystonesConfig.announceNewToParty = button.state
            print((keystonesConfig.announceNewToParty and "Announce" or "Don't announce") .. " new keys to party")
        --elseif (option == "notifyParty") then
            --keystonesConfig.displayNewKeyOf = (keystonesConfig.displayNewKeyOf ~= "GUILD" and button.state) and "PARTY"
        elseif (option == "notifyGuild") then
            keystonesConfig.displayNewKeyOf = button.state and "GUILD" or "PARTY"
            print((keystonesConfig.displayNewKeyOf == "GUILD" and "Notify" or "Don't notify") .. " when GUILD acquires a new keystone")
        elseif (option == "color") then
            keystonesConfig.guiOptions.colorizeNames = button.state
            ns.updateGroupKeys()
            ns.updateGuildKeys()
            ns.updateGui()            
            print((keystonesConfig.guiOptions.colorizeNames and "Colorizing" or "Not colorizing") .. " chars")
        elseif (option == "minimapTooltip") then
            keystonesConfig.longTooltip = button.state
            print((keystonesConfig.longTooltip and "Show" or "Don't show") .. " offline chars on minimap tooltip")
        end
        button.inline:SetColorTexture(.75, .75, .75, button.state and 1 or 0)
    end)
    button:SetScript("OnEnter", function()
        -- change color on mouseover
        button.outline:SetTexture("Interface/AddOns/Keystones/Media/CheckButtonBoxHighlight.tga")
        button.text:SetTextColor(.75, .75, .75)
        button.inline:SetColorTexture(.75, .75, .75, button.state and 1 or 0)
    end)
    button:SetScript("OnLeave", function()
        -- change color back on mouseleave
        button.outline:SetTexture("Interface/AddOns/Keystones/Media/CheckButtonBox.tga")
        button.text:SetTextColor(1, 1, 1)
        button.inline:SetColorTexture(1, 1, 1, button.state and 1 or 0)
    end)
    
    button:SetSize(250, 20)

    button.outline:SetSize(12, 12)
    button.outline:SetTexture("Interface/AddOns/Keystones/Media/CheckButtonBox.tga")
    button.outline:SetPoint("TOPLEFT", button, "TOPLEFT", 4, -4)
       
    button.text:SetFont(FONT_CONTENT, 14)
    button.text:SetPoint("LEFT", button.outline, "RIGHT", 3, 0)
    button.text:SetText(text)
    
    button.inline:SetSize(8, 8)
    button.inline:SetColorTexture(1, 1, 1, button.state and 1 or 0)
    button.inline:SetPoint("TOPLEFT", button.outline, "TOPLEFT", 2, -2)
    
    return button
end


local SettingsFrameHeight = 190
local SettingsFrameWidth = 270

local settingsFrameList = {}

SettingsFrame:SetFrameStrata('TOOLTIP')
SettingsFrame:SetHeight(SettingsFrameHeight)
SettingsFrame:SetWidth(SettingsFrameWidth)
SettingsFrame:SetPoint('CENTER', UIParent, 'CENTER')
SettingsFrame:EnableMouse(true)
SettingsFrame:RegisterForDrag("LeftButton")
SettingsFrame.tex = SettingsFrame:CreateTexture("BACKGROUND")
SettingsFrame.tex:SetAllPoints(true)
SettingsFrame.tex:SetColorTexture(0, 0, 0)
SettingsFrame:SetMovable(true)

SettingsFrame:SetScript('OnDragStart', function(self)
    SettingsFrame:StartMoving()
end)
SettingsFrame:SetScript('OnDragStop', function(self)
    SettingsFrame:StopMovingOrSizing()
end)

local SettingsFrameButton = CreateFrame("BUTTON", nil, SettingsFrame)
SettingsFrameButton:SetSize(100, 25)
SettingsFrameButton:SetText("close")
SettingsFrameButton:SetNormalFontObject(FONT_OBJECT_CENTRE)
SettingsFrameButton:SetHighlightFontObject(FONT_OBJECT_HIGHLIGHT)
SettingsFrameButton:SetPoint("BOTTOM", SettingsFrame, "BOTTOM", 0, 10)
SettingsFrameButton:SetScript("OnClick", function(self)
    SettingsFrame:Hide()
end)





-- TODO: 
-- Hide minimap button
-- Toggle party announce of new key
-- Switch notification setting
-- Colorize keys
-- Switch between minimap tooltip
function ns.CreateSettingsFrame()
    optionButtons[#optionButtons + 1] = CreateCheckButton("minimapButton", "Hide minimap button")
    optionButtons[#optionButtons]:SetPoint("TOPLEFT", SettingsFrame, "TOPLEFT", 10, -10)
    optionButtons[#optionButtons + 1] = CreateCheckButton("announce", "Announce new keys to party")
    optionButtons[#optionButtons]:SetPoint("TOPLEFT", optionButtons[#optionButtons - 1], "BOTTOMLEFT", 0, -3)
    --optionButtons[#optionButtons + 1] = CreateCheckButton("notifyParty", "Notify about new keys aquired in party")
    --optionButtons[#optionButtons]:SetPoint("TOPLEFT", optionButtons[#optionButtons - 1], "BOTTOMLEFT", 0, -3)
    optionButtons[#optionButtons + 1] = CreateCheckButton("notifyGuild", "Notify about new keys aquired in guild")
    optionButtons[#optionButtons]:SetPoint("TOPLEFT", optionButtons[#optionButtons - 1], "BOTTOMLEFT", 0, -3)
    optionButtons[#optionButtons + 1] = CreateCheckButton("color", "Use experimental keystone coloring")
    optionButtons[#optionButtons]:SetPoint("TOPLEFT", optionButtons[#optionButtons - 1], "BOTTOMLEFT", 0, -3)
    optionButtons[#optionButtons + 1] = CreateCheckButton("minimapTooltip", "Use large minimap tooltip")
    optionButtons[#optionButtons]:SetPoint("TOPLEFT", optionButtons[#optionButtons - 1], "BOTTOMLEFT", 0, -3)
    
    SettingsFrameHeight = 53 + #optionButtons * 23
    SettingsFrame:SetHeight(SettingsFrameHeight)
end

function ns.UpdateSettingsButtons()
    for k, v in pairs(optionButtons) do
        v:Update()
    end
end





ns.SettingsFrame = SettingsFrame








