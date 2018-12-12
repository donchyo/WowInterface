----------------------------------------------
-- infRaidFrames
----------------------------------------------

local UnitName = UnitName
local UnitClass = UnitClass
local UnitIsUnit = UnitIsUnit
local UnitIsConnected = UnitIsConnected
local UnitIsPlayer = UnitIsPlayer
local UnitIsDead = UnitIsDead
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local UnitIsGhost = UnitIsGhost
local UnitInRange = UnitInRange
local UnitHealth = UnitHealth
local UnitHealthMax = UnitHealthMax
local UnitPowerType = UnitPowerType
local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax
local hooksecurefunc = hooksecurefunc
local GetReadyCheckTimeLeft = GetReadyCheckTimeLeft
local GetReadyCheckStatus = GetReadyCheckStatus

local raid = CreateFrame("frame", "infRaidFrames", UIParent)
raid:SetMovable(false)
raid:SetSize(2, 2)
raid:SetPoint("TOP", UIParent, "TOPLEFT", 20, -19)

local rwidth, rheight = 48, 39

local Grid = function(self, frame, ...)
	if self.styled then return end
    self:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8x8", 
		tile = true, 
		tileSize = 0, 
		insets = {left = -1, right = -1, top = -1, bottom = -1}
	})
	self:SetBackdropColor(0, 0, 0, 1)
    
    local hp = _G[self:GetName().."Health"] or CreateFrame("StatusBar", self:GetName().."Health", self)
	hp:SetPoint("TOPLEFT", 0, 0)
	hp:SetPoint("BOTTOMRIGHT", 0, 0)
	hp:SetStatusBarTexture("Interface\\AddOns\\infRaidFrames\\Texture\\texture")
    hp:GetStatusBarTexture():SetDrawLayer("ARTWORK", -5)	
	hp:SetOrientation("VERTICAL")
    hp:SetMinMaxValues(0, 100)
	hp.parent = self

	local mouseover = _G[self:GetName().."Mouseover"] or self:CreateTexture(self:GetName().."Mouseover", "HIGHLIGHT")
    mouseover:SetPoint("TOPLEFT", -3, 3)
    mouseover:SetPoint("BOTTOMRIGHT", 3, -3)
    mouseover:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
	mouseover:SetBlendMode("ADD")
	
    local border = _G[self:GetName().."Border"] or self:CreateTexture(self:GetName().."Border", "BACKGROUND", nil, -1)
    border:SetPoint("TOPLEFT", -3, 3)
    border:SetPoint("BOTTOMRIGHT", 3, -3)
    border:SetTexture("Interface\\Buttons\\WHITE8x8")
	border:SetVertexColor(.8, .8, .8, .75)
    border:Hide()

    local lowmana = _G[self:GetName().."Lowmana"] or self:CreateTexture(self:GetName().."Lowmana", "BACKGROUND", nil, -2)
    lowmana:SetPoint("TOPLEFT", -3, 3)
    lowmana:SetPoint("BOTTOMRIGHT", 3, -3)
    lowmana:SetTexture("Interface\\Buttons\\WHITE8x8")
	lowmana:SetVertexColor(0, 0, 1, 1)
    lowmana:Hide()

    local readyCheckIcon = _G[self:GetName().."readyCheckIcon"] or hp:CreateTexture(self:GetName().."readyCheckIcon", "OVERLAY")
    readyCheckIcon:SetPoint("CENTER")
	readyCheckIcon:SetSize(20, 20)
    readyCheckIcon:Hide()

    local text = _G[self:GetName().."Text"] or hp:CreateFontString(self:GetName().."Text", "ARTWORK")
    text:SetPoint("BOTTOM", self, "CENTER", 0, 1)
    text:SetJustifyH("CENTER")
    text:SetFont(STANDARD_TEXT_FONT, 12)
    text:SetShadowColor(0, 0, 0)
    text:SetShadowOffset(1, -1)
    text.parent = self

    local text2 = _G[self:GetName().."Text2"] or hp:CreateFontString(self:GetName().."Text2", "ARTWORK")
    text2:SetPoint("TOP", self, "CENTER", 0, -4)
    text2:SetJustifyH("CENTER")
    text2:SetFont(STANDARD_TEXT_FONT, 9)
    text2:SetTextColor(1, 1, 1)
    text2:SetShadowColor(0, 0, 0)
    text2:SetShadowOffset(1, -1)
    text2.parent = self

	self.health = hp
    self.text = text
    self.text2 = text2
    self.border = border
	self.mouseover = mouseover
    self.readyCheckIcon = readyCheckIcon
	self.lowmana = lowmana

	CompactUnitFrame_SetOptionTable(self, OPTION_TABLE_NONE)
	self:SetScript('OnEnter', UnitFrame_OnEnter)
	self:SetScript('OnLeave', UnitFrame_OnLeave)

	self.styled = true
	return self	
end

function utf8sub(str, start, numChars) 
    local currentIndex = start 
    while numChars > 0 and currentIndex <= #str do 
        local char = string.byte(str, currentIndex) 
        if char >= 240 then 
          currentIndex = currentIndex + 4 
        elseif char >= 225 then 
          currentIndex = currentIndex + 3 
        elseif char >= 192 then 
          currentIndex = currentIndex + 2 
        else 
          currentIndex = currentIndex + 1 
        end 
        numChars = numChars - 1 
    end 
    return str:sub(start, currentIndex - 1) 
end

local UpdateName = function(self)
	local name = UnitName(self.displayedUnit)
	if name then
		self.text:SetText(#name > 0 and utf8sub(name, 1, 4) or "")
		if self.classcolor then
			self.text:SetTextColor(self.classcolor.r, self.classcolor.g, self.classcolor.b)
		else
			self.text:SetTextColor(1, 1, 1)
		end
	end
end

local UpdateStatus = function(self)
	self.text2:SetText(not UnitIsConnected(self.displayedUnit) and "OFFLINE" or UnitIsDead(self.displayedUnit) and "DEAD" or UnitIsGhost(self.displayedUnit) and "GHOST" or "")
end

local UpdateHealth = function(self)
	if not self.displayedUnit then return end
	local h, hm = UnitHealth(self.displayedUnit), UnitHealthMax(self.displayedUnit)
	if hm == 0 then return end
	self.health:SetValue(h / hm * 100)
	if self.classcolor then
		self.health:SetStatusBarColor(self.classcolor.r, self.classcolor.g, self.classcolor.b)
	else
		self.health:SetStatusBarColor(1, 1, 1)
	end

	UpdateName(self)
	UpdateStatus(self)
end

local UpdatePower = function(self)
	if not self.displayedUnit then return end
	if not UnitIsDeadOrGhost(self.displayedUnit) and UnitIsConnected(self.displayedUnit) then
		local powerType, _ = UnitPowerType(self.displayedUnit)
		if powerType == 0 then
			local powerPerc = UnitPower(self.displayedUnit, 0)/UnitPowerMax(self.displayedUnit, 0) * 100
			if powerPerc < 25 then
				self.lowmana:Show()
			else
				self.lowmana:Hide()
			end
		else
			self.lowmana:Hide()
		end
	elseif UnitIsDeadOrGhost(self.displayedUnit) or not UnitIsConnected(self.displayedUnit) then
		self.lowmana:Hide()
	end
end

local UpdateReadyCheck = function(frame)
    if (frame.readyCheckDecay and GetReadyCheckTimeLeft() <= 0) then return end

    local readyCheckStatus = GetReadyCheckStatus(frame.unit)
    frame.readyCheckStatus = readyCheckStatus
    if readyCheckStatus == "ready" then
        frame.readyCheckIcon:SetTexture(READY_CHECK_READY_TEXTURE)
        frame.readyCheckIcon:Show()
    elseif readyCheckStatus == "notready" then
        frame.readyCheckIcon:SetTexture(READY_CHECK_NOT_READY_TEXTURE)
        frame.readyCheckIcon:Show()
    elseif readyCheckStatus == "waiting" then
        frame.readyCheckIcon:SetTexture(READY_CHECK_WAITING_TEXTURE)
        frame.readyCheckIcon:Show()
    else
        frame.readyCheckIcon:Hide()
    end
end

local FinishReadyCheck = function(frame)
    frame.readyCheckDecay = 11
    if frame.readyCheckStatus == "waiting" then
        frame.readyCheckIcon:SetTexture(READY_CHECK_NOT_READY_TEXTURE)
        frame.readyCheckIcon:Show()
    end
end

local CheckReadyCheckDecay = function(frame, elapsed)
    if frame.readyCheckDecay then
        if frame.readyCheckDecay > 0 then
            frame.readyCheckDecay = frame.readyCheckDecay - elapsed
        else
            frame.readyCheckDecay = nil
            UpdateReadyCheck(frame)
        end
    end
end

local UpdateAll = function(self)
	if not self.displayedUnit then return end
	UpdateName(self)
	UpdateHealth(self)
	UpdatePower(self)
	UpdateReadyCheck(self)	
end

local OnAttributeChanged = function(self, attrname, unit)
	if attrname ~= "unit" or unit == nil then return end
	
    self.unit = unit
    self.displayedUnit = unit
	local _, class = UnitClass(unit)
    if class then
		self.classcolor = {r = RAID_CLASS_COLORS[class].r, g = RAID_CLASS_COLORS[class].g, b = RAID_CLASS_COLORS[class].b}
	end

	Grid(self)

    self:RegisterEvent("UNIT_HEALTH") --should never reg both UNIT_HEALTH and UNIT_HEALTH_FREQUENT to the same frame.
    self:RegisterEvent("UNIT_MAXHEALTH")
	self:RegisterEvent("UNIT_POWER")
	self:RegisterEvent("UNIT_MAXPOWER")
    self:RegisterEvent("PLAYER_TARGET_CHANGED")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("UNIT_NAME_UPDATE")
    self:RegisterEvent("UNIT_CONNECTION")
    self:RegisterEvent("PLAYER_DEAD")
    self:RegisterEvent("READY_CHECK")
	self:RegisterEvent("READY_CHECK_CONFIRM")
    self:RegisterEvent("READY_CHECK_FINISHED")

		
	self:SetScript("OnUpdate", function(self, elapsed)
		if not self.st then self.st = 0 end
		self.st = self.st + elapsed
		if self.st > 1 then --rangecheck updaterate
			if not UnitInRange(self.displayedUnit) then --40yards and LoS tracking
			--if not CheckInteractDistance(self.displayedUnit, 1) then --28yards
				self:SetAlpha(.25)
			else
				self:SetAlpha(1)
			end
			self.st = 0
		end
		CheckReadyCheckDecay(self, elapsed)
	end)
	
	self.optionTable = DefaultCompactUnitFrameOptions
	
	UpdateAll(self)
	
	self:SetScript("OnEvent", function(self, event, ...)
		local unit = ...
		if event == "PLAYER_ENTERING_WORLD" then
			UpdateAll(self)
		elseif event == "PLAYER_TARGET_CHANGED" then
			if UnitIsUnit(self.displayedUnit, "target") then
				self.border:Show()
			else
				self.border:Hide()
			end
		elseif event == "READY_CHECK" then
			UpdateReadyCheck(self)
		elseif event == "READY_CHECK_CONFIRM" then
			UpdateReadyCheck(self)	
		elseif event == "READY_CHECK_FINISHED" then
			FinishReadyCheck(self)	
		elseif unit and (unit == self.displayedUnit or unit == self.unit) then
			if event == "UNIT_HEALTH" or event == "UNIT_MAXHEALTH" then
				UpdateHealth(self)
			elseif event == "UNIT_NAME_UPDATE" then
				UpdateName(self)
			elseif event == "UNIT_CONNECTION" or event == "PLAYER_DEAD" then
				UpdateStatus(self)
			elseif event == "UNIT_POWER" or event == "UNIT_MAXPOWER" then
				UpdatePower(self)
			end
		end
	end)
end

hooksecurefunc("CreateFrame", function(type, name, parent, template)
	if name and name:match("infGroup%dUnitButton%d") then
		_G[name]:SetScript("OnAttributeChanged", OnAttributeChanged)
		UpdateAll(_G[name])
	end
end)

raid:RegisterEvent("PLAYER_LOGIN")
raid:SetScript("OnEvent", function(self)
	for i=1,8 do
		local f = _G["infGroup"..i] or CreateFrame("Button", "infGroup"..i, UIParent, "SecureGroupHeaderTemplate")
		f:SetAttribute("template", "SecureUnitButtonTemplate, SecureActionButtonTemplate, SecureHandlerEnterLeaveTemplate")
		f:SetAttribute("templateType", "Button")
		f:SetAttribute("groupFilter", i)
		f:SetAttribute("showRaid", true)
		f:SetAttribute("xOffset", -2) --does nothing?!
		f:SetAttribute("yOffset", -4)
		f:SetAttribute("showParty", true)
		f:SetAttribute("showSolo", false)
		f:SetAttribute("showPlayer", true)
		f:RegisterForClicks("AnyDown")

		f.self = f
		
		f.HideFunc = f.HideFunc or function() end
		
		f:SetAttribute("initialConfigFunction", string.format([=[
			self:SetWidth(%f)
			self:SetHeight(%f)
			self:SetAttribute("toggleForVehicle", true)
			self:SetAttribute("*type*","target")
		]=], rwidth, rheight))

		if i==1 then
			f:SetPoint("TOPLEFT", raid, 0, 0)
		else
			f:SetPoint("TOPLEFT", _G["infGroup"..(i-1)], "TOPRIGHT", 4, 0)
		end
		
		f:Show()
	end
	self:UnregisterEvent("PLAYER_LOGIN")
end)

SetupFrame = function(f) f:SetScript("OnAttributeChanged", OnAttributeChanged) end

CompactRaidFrameContainer:Hide()
CompactRaidFrameContainer.Show = function()end
CompactRaidFrameManager:Hide()
CompactRaidFrameManager.Show = function()end

hooksecurefunc("CompactUnitFrame_OnLoad", function(self)
	self:UnregisterAllEvents()
	self:SetScript("OnUpdate", nil)
end)

CompactRaidFrameContainer_TryUpdate = function(f) end

hooksecurefunc("CompactRaidFrameContainer_OnLoad", function(self)
	self:UnregisterAllEvents()
	self:SetScript("OnUpdate", nil)
end)

for i=1,4 do
	local party = "PartyMemberFrame"..i
	local frame = _G[party]

	frame:UnregisterAllEvents()
	frame.Show = function()end
	frame:Hide()
	_G[party..'HealthBar']:UnregisterAllEvents()
	_G[party..'ManaBar']:UnregisterAllEvents()
end

