local addonName, ns = ...

ns.LDB = LibStub("LibDataBroker-1.1", true)
ns.icon = ns.LDB and LibStub("LibDBIcon-1.0", true)

local minimapOptionsFrame = CreateFrame("FRAME", nil, UIParent)
minimapOptionsFrame:SetSize(105, 50)
minimapOptionsFrame.tex = minimapOptionsFrame:CreateTexture(nil, "BACKGROUND")
minimapOptionsFrame.tex:SetAllPoints(true)
minimapOptionsFrame.tex:SetColorTexture(0, 0, 0, 1)
minimapOptionsFrame:SetClampedToScreen(true)
minimapOptionsFrame:Hide()
minimapOptionsFrame.hideSoon = false
minimapOptionsFrame.hideMain = true
minimapOptionsFrame.hideBut1 = true
minimapOptionsFrame.hideBut2 = true
minimapOptionsFrame:SetScript("OnEnter", function(self)
    self.hideSoon = false
    self.hideMain = false
end)
minimapOptionsFrame:SetScript("OnLeave", function(self)
    self.hideMain = true
    conditionalHide()
end)

local minimapReportGroupButton = CreateFrame("BUTTON", nil, minimapOptionsFrame)
minimapReportGroupButton:SetSize(90, 20)
minimapReportGroupButton:SetNormalFontObject(ns.FONT_OBJECT_LEFT)
--minimapReportGroupButton:SetHighlightFontObject(ns.FONT_OBJECT_HIGHLIGHT)
minimapReportGroupButton:SetText("report to " .. WrapTextInColorCode("group", "ffaaa7ff"))
minimapReportGroupButton:SetPoint("TOPLEFT", minimapOptionsFrame, "TOPLEFT", 10, -5)
minimapReportGroupButton:SetScript("OnClick", function(self)
    if (UnitInParty("player")) then
        Keystones:AnnounceMyKeystones("PARTY")
    elseif (UnitInRaid("player") == 1) then
        Keystones:AnnounceMyKeystones("RAID")
    else
        print("You have no party")
    end
    minimapOptionsFrame:Hide()
end)
minimapReportGroupButton:SetScript("OnEnter", function(self)
    self:SetText(WrapTextInColorCode("report to ", "ffaaaaaa") .. WrapTextInColorCode("group", "ff716faa"))
    minimapOptionsFrame.hideBut1 = false
end)
minimapReportGroupButton:SetScript("OnLeave", function(self)
    self:SetText("report to " .. WrapTextInColorCode("group", "ffaaa7ff"))
    minimapOptionsFrame.hideBut1 = true
    conditionalHide()
end)

local minimapReportGuildButton = CreateFrame("BUTTON", nil, minimapOptionsFrame)
minimapReportGuildButton:SetSize(90, 20)
minimapReportGuildButton:SetNormalFontObject(ns.FONT_OBJECT_LEFT)
--minimapReportGuildButton:SetHighlightFontObject(ns.FONT_OBJECT_HIGHLIGHT)
minimapReportGuildButton:SetText("report to " .. WrapTextInColorCode("guild", "ff40fb40"))
minimapReportGuildButton:SetPoint("TOPLEFT", minimapReportGroupButton, "BOTTOMLEFT")
minimapReportGuildButton:SetScript("OnClick", function(self)
    Keystones:AnnounceMyKeystones("GUILD")
    minimapOptionsFrame:Hide()
end)
minimapReportGuildButton:SetScript("OnEnter", function(self)
    self:SetText(WrapTextInColorCode("report to ", "ffaaaaaa") .. WrapTextInColorCode("guild", "ff2ba72b"))
    minimapOptionsFrame.hideBut2 = false
end)
minimapReportGuildButton:SetScript("OnLeave", function(self)
    self:SetText("report to " .. WrapTextInColorCode("guild", "ff40fb40"))
    minimapOptionsFrame.hideBut2 = true
    conditionalHide()
end)

function conditionalHide()
    C_Timer.After(1, function()
        local f = minimapOptionsFrame
        if (f.hideMain and f.hideBut1 and f.hideBut2) then
            minimapOptionsFrame:Hide()
        end    
    end)
end
    
ns.dataobject = ns.LDB and ns.LDB:NewDataObject("Keystones", {
    text = "Keystones",
    type = "launcher",
    icon = "Interface\\Icons\\INV_Relics_Hourglass",
    --[[OnEnter = function(frame)
        print("show tooltip")
    end,
    OnLeave = function(frame) end,]]
    OnClick = function(frame, button)
        if (button == "LeftButton") then
            ns.ToggleKeystonesFrame()
        elseif (button == "RightButton") then
            local scale, x, y = frame:GetEffectiveScale(), GetCursorPosition()
            minimapOptionsFrame:SetPoint("TOPLEFT", nil, "BOTTOMLEFT", x / scale + 3, y / scale - 3)
            if (minimapOptionsFrame:IsShown()) then
                minimapOptionsFrame:Hide()
            else
                minimapOptionsFrame:Show()
                minimapOptionsFrame.hideSoon = true
                C_Timer.After(3, function()
                    if (minimapOptionsFrame.hideSoon) then
                        minimapOptionsFrame:Hide()
                    end
                end)
            end
        end
    end,
    OnTooltipShow = function(tooltip)
        Keystones:MinimapTooltip(tooltip)
    end,
})


