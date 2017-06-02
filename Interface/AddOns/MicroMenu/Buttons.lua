local addonName, addon = ...

local defaultOrder = addon.defaultOrder

--[[----------------------------------------------------------------------------
Scripts
------------------------------------------------------------------------------]]
local function OnEnter(self, motion)
	addon:OnEnter()
	if self.isMoving or not addon:IsTooltipAllowed() then return end
	GameTooltip:SetOwner(self, 'ANCHOR_NONE')
	GameTooltip:SetPoint(addon.GetAnchorInfo(self))
	if self.tooltipText then
		GameTooltip:SetText(self.tooltipText, 1, 1, 1)
	end
	local needBreak
	if SHOW_NEWBIE_TIPS == '1' and self.newbieText then
		GameTooltip:AddLine(self.newbieText, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, true)
		needBreak = true
	end
	if type(self.extendTooltip) == 'function' then
		if needBreak then
			GameTooltip:AddLine(" ")
		end
		self.extendTooltip()
		needBreak = true
	end
	if self.__disabled then
		local text
		if self.factionGroup == 'Neutral' then
			text = FEATURE_NOT_AVAILBLE_PANDAREN
		elseif self.minLevel then
			text = FEATURE_BECOMES_AVAILABLE_AT_LEVEL:format(self.minLevel)
		elseif self.disabledTooltip then
			text = self.disabledTooltip
		end
		if text then
			if needBreak then
				GameTooltip:AddLine(" ")
			end
			GameTooltip:AddLine(text, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b, true)
		end
	end
	GameTooltip:Show()
end

local function OnLeave(self, motion)
	addon:OnLeave()
	if GameTooltip:IsOwned(self) then
		GameTooltip:Hide()
	end
end

local function OnDragStart(self, button)
	self.down = nil
	if not (addon.db.profile.lock or IsModifierKeyDown()) then
		GameTooltip:Hide()
		if self.alert then
			self.alert:Hide()
		end
		self.isMoving = self:GetFrameStrata()
		local x, y = self:GetCenter()
		self:ClearAllPoints()
		self:SetPoint('CENTER', UIParent, 'BOTTOMLEFT', x, y)
		self:SetFrameStrata('TOOLTIP')
		self:StartMoving()
	else
		addon:OnDragStart()
	end
end

local function OnDragStop(self, button)
	if self.isMoving then
		self:StopMovingOrSizing()
		self:SetFrameStrata(self.isMoving)
		self:SetUserPlaced(false)
		self.isMoving = nil

		local buttons, order = addon.buttons, addon.order
		local newIndex, oldIndex = #order, buttons[self]
		tremove(order, oldIndex)

		local x = self:GetCenter()
		for index = 1, #order do
			if x <= order[index]:GetCenter() then
				newIndex = index
				break
			end
		end
		tinsert(order, newIndex, self)

		if newIndex ~= oldIndex then
			for index = oldIndex, newIndex, oldIndex < newIndex and 1 or -1 do
				buttons[order[index]] = index
			end
			local order = addon.db.profile.order
			tinsert(order, newIndex, tremove(order, oldIndex))
		end
		addon:UpdatePlugin()
	else
		addon:OnDragStop()
	end
	UpdateMicroButtons()
	if GetMouseFocus() == self then
		OnEnter(self)
	end
end

--[[----------------------------------------------------------------------------
Claim buttons
------------------------------------------------------------------------------]]
local buttons, frame, DoNothing = addon.buttons, addon.frame, addon.DoNothing
local coords = { 5/32, 27/32, 31/64, 58/64 }

for index = 1, #defaultOrder do
	local name = defaultOrder[index]
	local button = _G[name]
	if not button then return end

	button:SetHighlightTexture([[Interface\Buttons\ButtonHilight-Square]])
	button:GetNormalTexture():SetTexCoord(unpack(coords))
	button:GetPushedTexture():SetTexCoord(unpack(coords))

	local texture = button:GetDisabledTexture()
	if texture then
		texture:SetTexCoord(unpack(coords))
	end

	button:SetScript('OnDragStart', OnDragStart)
	button:SetScript('OnDragStop', OnDragStop)
	button:SetScript('OnEnter', OnEnter)
	button:SetScript('OnLeave', OnLeave)

	button:SetParent(frame)
	button:ClearAllPoints()
	button:SetMovable(true)
	button:RegisterForClicks('AnyUp')
	button:RegisterForDrag('LeftButton')
	button:SetButtonState('NORMAL', false)
	button:SetHitRectInsets(0, 0, 0, 0)

	texture = button.Flash
	if texture then
		texture:ClearAllPoints()
		texture:SetAllPoints(button)
		texture:SetDrawLayer('OVERLAY', 2)
		texture:SetTexture([[Interface\Buttons\CheckButtonHilight]])
	end

	local alert = _G[name .. 'Alert']
	if alert then
		alert:SetParent(button)
		addon.alerts[alert] = button

		local arrow = _G[name .. 'AlertArrow']
		alert.arrow = arrow
		arrow:ClearAllPoints()
		arrow:SetPoint('CENTER')

		alert.glow = _G[name .. 'AlertGlow']
		button.alert = alert
	end

	buttons[button] = 0
end

--[[----------------------------------------------------------------------------
Overrides
------------------------------------------------------------------------------]]
if MainMenuBar then
	MainMenuBar:SetScript('OnShow', nil)										-- Only did MicroMenu stuff
end

if OverrideActionBar then
	OverrideActionBar:SetScript('OnShow', nil)									-- Only did MicroMenu stuff
end

hooksecurefunc('UpdateMicroButtonsParent', function()							-- Only called by the above OnShow scripts
	for index = 1, #defaultOrder do
		local button = _G[defaultOrder[index]]
		if button then
			button:SetParent(frame)
		end
	end
end)

--[[----------------------------------------------------------------------------
Tweaks
------------------------------------------------------------------------------]]
if CharacterMicroButton and MicroButtonPortrait then
	MicroButtonPortrait:ClearAllPoints()
	MicroButtonPortrait:SetAllPoints(CharacterMicroButton)
	MicroButtonPortrait:SetTexCoord(0.1, 0.9, 0.0666, 0.9)
end

if SpellbookMicroButton then
	local function OnEvent(self, event)
		if event == 'UPDATE_BINDINGS' then
			self.tooltipText =  MicroButtonTooltipText(SPELLBOOK_ABILITIES_BUTTON, 'TOGGLESPELLBOOK')
		end
	end
	SpellbookMicroButton:SetScript('OnEvent', OnEvent)
	SpellbookMicroButton:RegisterEvent('UPDATE_BINDINGS')
	SpellbookMicroButton.newbieText = NEWBIE_TOOLTIP_SPELLBOOK
	OnEvent(SpellbookMicroButton, 'UPDATE_BINDINGS')
end

if GuildMicroButton and GuildMicroButtonTabard then
	local processing
	hooksecurefunc(GuildMicroButtonTabard, 'SetPoint', function(self)
		if processing then return end
		processing = true
		self:ClearAllPoints()
		self:SetPoint('CENTER', GuildMicroButton, 0, 11)
		processing = nil
	end)
	GuildMicroButtonTabard:SetPoint('CENTER', GuildMicroButton, 0, 11)

	GuildMicroButton:SetScript('OnSizeChanged', function(self, width, height)
		GuildMicroButtonTabard:SetScale(width / 32)
	end)
end

if PVPMicroButton and PVPMicroButtonTexture then
	PVPMicroButtonTexture:ClearAllPoints()
	PVPMicroButtonTexture:SetAllPoints(PVPMicroButton)
	PVPMicroButtonTexture:SetTexCoord(4/64, 38/64, 2/64, 38/64)
end

if MainMenuMicroButton and MainMenuBarPerformanceBar then
	local coords = { 4/32, 28/32, 33/64, 53/64 }
	local path = ([[Interface\AddOns\%s\MainMenu]]):format(addonName)
	MainMenuMicroButton.tooltipLatency = true

	local texture = MainMenuMicroButton:GetNormalTexture()
	if texture then
		texture:SetTexture(path)
		texture:SetTexCoord(unpack(coords))
	end

	texture = MainMenuMicroButton:GetPushedTexture()
	if texture then
		texture:SetTexture(path)
		texture:SetTexCoord(unpack(coords))
	end

	texture = MainMenuBarPerformanceBar
	if texture then
		texture:ClearAllPoints()
		texture:SetAllPoints(MainMenuMicroButton)
		texture:SetTexture(([[Interface\AddOns\%s\LatencyOverlay]]):format(addonName))
		texture:SetTexCoord(unpack(coords))
		texture.SetPoint = DoNothing
	end

	local latency, worldLatency, timer = 0, 0, 10

	MainMenuMicroButton.extendTooltip = function()
		GameTooltip:AddLine(MAINMENUBAR_LATENCY_LABEL:format(latency, worldLatency), HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
		GameTooltip:AddLine(MAINMENUBAR_FPS_LABEL:format(GetFramerate()), HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	end

	MainMenuMicroButton:SetScript('OnUpdate', function(self, elapsed)
		timer = timer + elapsed
		if timer < 10 then return end
		timer = 0

		local percent, _
		_, _, latency, worldLatency = GetNetStats()
		percent = latency / addon.db.profile.latency
		if percent <= 0.5 then
			texture:SetVertexColor(percent + percent, 1, 0)
		elseif percent <= 1 then
			texture:SetVertexColor(1, 2 - percent - percent, 0)
		else
			texture:SetVertexColor(1, 0, 0)
		end
	end)
end
