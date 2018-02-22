local prydazId = 132444

-- create parent frame with default "BasicFrameTemplate" template
local frame = CreateFrame("Frame","WillIDieFrame",UIParent,"BasicFrameTemplate")
frame:SetSize(300,400)
frame:SetPoint("CENTER")
frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
frame:SetFrameStrata("FULLSCREEN_DIALOG")
frame:Hide()


-- make this frame close when ESC is hit
tinsert(UISpecialFrames,"WillIDieFrame")

-- create scrollable editbox with default "InputScrollFrameTemplate" template
frame.scrollFrame = CreateFrame("ScrollFrame","WillIDieScrollFrame",frame,"InputScrollFrameTemplate")
frame.scrollFrame:SetPoint("TOPLEFT",8,-30)
frame.scrollFrame:SetPoint("BOTTOMRIGHT",-12,9)

-- set up the editbox defined above
local editBox = frame.scrollFrame.EditBox -- already created in above template
editBox:SetFontObject("ChatFontNormal")
editBox:SetAllPoints(true)
editBox:SetWidth(frame.scrollFrame:GetWidth()) -- multiline editboxes need a width declared!!

-- when ESC is hit while editbox has focus, clear focus (a second ESC closes window)
editBox:SetScript("OnEscapePressed",editBox.ClearFocus)



-- set up /wid slash command to dump values
SLASH_WILLIDIE1 = "/wid"
SlashCmdList["WILLIDIE"] = function(msg)
    -- send them to editbox
  editBox:SetText(getValues())
  -- show frame and highlight text just added for copy-pasting
  frame:Show()
--  editBox:HighlightText()
--  editBox.CharCount.Hide()
  editBox:SetFocus(true)
end

editBox.title = frame:CreateFontString(nil, "OVERLAY")
editBox.title:SetFontObject("GameFontHighlight")
editBox.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0)
editBox.title:SetText("Will I die import frame")


function getValues()
    local effectiveArmor = select(2,UnitArmor("player"))
    local versatilityEffect = GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_TAKEN) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_TAKEN)
    local avoidance = GetCombatRatingBonus(CR_AVOIDANCE)
    local max_health = UnitHealthMax("player");
    local playerClass = UnitClass("player")
  
      local id = GetInventorySlotInfo("neckSlot")
    local itemId = GetInventoryItemID("player", id)
    local prydazEquipped = false
    local playerSpec = select(2, GetSpecializationInfo(GetSpecialization()))
    if itemId == prydazId then
        prydazEquipped = true
    end
    
   -- print(playerClass, playerSpec, max_health, effectiveArmor, versatilityEffect, prydazEquipped)
    return playerClass .. ", \n" ..  playerSpec .. ", \n"..  max_health .. ", \n" .. effectiveArmor .. ", \n".. versatilityEffect .. ", \n" .. avoidance .. ", \n" ..tostring(prydazEquipped)
end







