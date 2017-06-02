local addonName, addon = ...

local defaultOrder = {
	'CharacterMicroButton',
	'SpellbookMicroButton',
	'TalentMicroButton',
	'AchievementMicroButton',
	'QuestLogMicroButton',
	'GuildMicroButton',
	'PVPMicroButton',
	'LFDMicroButton',
	'CompanionsMicroButton',
	'EJMicroButton',
	'StoreMicroButton',
	'MainMenuMicroButton',
	'HelpMicroButton'
}

for index = 1, #defaultOrder do
	defaultOrder[defaultOrder[index]] = index
end

if type(MICRO_BUTTONS) == 'table' then
	local lookup, reorder = { unpack(MICRO_BUTTONS) }
	for index = 1, #lookup do
		lookup[lookup[index]] = true
	end
	for index = #defaultOrder, 1, -1 do
		local name = defaultOrder[index]
		if not lookup[name] then
			tremove(defaultOrder, index)
			defaultOrder[name] = nil
			reorder = true
		end
	end
	for index = 1, #lookup do
		local name = lookup[index]
		if not defaultOrder[name] then
			tinsert(defaultOrder, #defaultOrder - 1, name)
			defaultOrder[name] = 1
			reorder = true
		end
	end
	if reorder then
		for index = 1, #defaultOrder do
			defaultOrder[defaultOrder[index]] = index
		end
	end
end

addon.defaultSettings = {
	latency	= 600,
	lock	= false,
	spacing	= 3,
	tooltip	= ""
}

local alerts, buttons, order = { }, { }, { }

--[[----------------------------------------------------------------------------
Platform
------------------------------------------------------------------------------]]
function addon:GetVersionInteger(version)
	local major, minor, revision = tostring(version):match("([0-9]+)%.([0-9]+)%.?([0-9]*)")
	return (tonumber(major) or 0) * 1000000 + (tonumber(minor) or 0) * 1000 + (tonumber(revision) or 0)
end

local frameName
if (GetAddOnMetadata(addonName, "X-AllowPlugin") or ""):lower() == "true" then
	if IsAddOnLoaded('Titan') and addon:GetVersionInteger(GetAddOnMetadata('Titan', 'Version')) >= 5002000 then
		addon.platform, frameName = 'Titan', 'TitanPanel' .. addonName .. 'Button'
	elseif IsAddOnLoaded('FuBar') and addon:GetVersionInteger(GetAddOnMetadata('FuBar', 'X-Curse-Project-Name')) >= 3006000 and LibStub('LibFuBarPlugin-3.0', true) then
		addon.platform = 'FuBar'
	end
end
if not addon.platform then
	frameName = addonName .. "Frame"
end

--[[----------------------------------------------------------------------------
Plugin frame
------------------------------------------------------------------------------]]
local frame = CreateFrame('Button', frameName, UIParent)
frame:EnableMouse(true)
frame:SetMovable(true)
frame:SetPoint('CENTER')
frame:SetHeight(1)
frame:SetWidth(1)
frame:Hide()

frame:SetScript('OnShow', function(self)
	self:SetScript('OnShow', nil)
	if addon.OnFirstShow then
		addon.OnFirstShow()
		addon.OnFirstShow = nil
	end

	self:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
	self:RegisterForDrag('LeftButton')
	self:SetScript('OnClick', addon.OnClick)
	self:SetScript('OnDragStart', addon.OnDragStart)
	self:SetScript('OnDragStop', addon.OnDragStop)
	self:SetScript('OnEnter', addon.OnEnter)
	self:SetScript('OnLeave', addon.OnLeave)
end)

--[[----------------------------------------------------------------------------
Addon support functions/methods
------------------------------------------------------------------------------]]
function addon.DoNothing()
end

function addon.GetAnchorInfo(frame)
	local _, y = frame:GetCenter()
	if y * 2 >= UIParent:GetHeight() then
		return 'TOP', frame, 'BOTTOM'
	end
	return 'BOTTOM', frame, 'TOP'
end

function addon.OnClick(_, button)
	if button == 'RightButton' and addon.config then
		addon.config()
	end
end

--[[----------------------------------------------------------------------------
Alert support
------------------------------------------------------------------------------]]
function addon.HideAlerts()
	for alert in pairs(alerts) do
		alert:Hide()
	end
end

local currentAlertPoint
function addon.UpdateAlertAnchoring()
	local point, frame, relPoint = addon.GetAnchorInfo(frame)
	if point ~= currentAlertPoint then
		currentAlertPoint = point
		for alert, parent in pairs(alerts) do
			alert:ClearAllPoints()
			alert.Arrow:ClearAllPoints()
			alert.glow:ClearAllPoints()
			if point ~= 'TOP' then
				alert:SetPoint(point, parent, relPoint, 0, 12)
				alert.Arrow:SetPoint(relPoint, alert, point, 0, 4)
				alert.arrow:SetTexCoord(0.78515625, 0.99218750, 0.54687500, 0.58789063)
				alert.glow:SetTexCoord(0.40625000, 0.66015625, 0.77343750, 0.82812500)
				alert.glow:SetPoint('CENTER', alert.Arrow, 'CENTER', 0, -4)
			else
				alert:SetPoint(point, parent, relPoint, 0, -12)
				alert.Arrow:SetPoint(relPoint, alert, point, 0, -4)
				alert.arrow:SetTexCoord(0.78515625, 0.99218750, 0.58789063, 0.54687500)
				alert.glow:SetTexCoord(0.40625000, 0.66015625, 0.82812500, 0.77343750)
				alert.glow:SetPoint('CENTER', alert.Arrow, 'CENTER', 0, 4)
			end
		end
	end
end

--[[----------------------------------------------------------------------------
Tutorial call out support
------------------------------------------------------------------------------]]
TutorialFrame:HookScript('OnHide', function(self)
	TutorialFrameCallOut:SetParent(self)
end)

TutorialFrameCallOut:HookScript('OnShow', function(self)
	local point, relativeTo, relativePoint, xOffset, yOffset = self:GetPoint(1)
	if not buttons[relativeTo] then return end
	self:ClearAllPoints()
	self:SetPoint('TOPLEFT', relativeTo, 'TOPLEFT', -9, 8)
	self:SetPoint('BOTTOMRIGHT', relativeTo, 'BOTTOMRIGHT', 10, -8)
	self:SetParent(relativeTo)
end)

--[[----------------------------------------------------------------------------
Initialize
------------------------------------------------------------------------------]]
addon.alerts, addon.buttons, addon.defaultOrder, addon.frame, addon.order = alerts, buttons, defaultOrder, frame, order

function addon:UpdateProfile()
	local settings = addon.db.profile
	local settings_order = settings.order
	if type(settings_order) == 'table' then
		for index = #settings_order, 1, -1 do
			if not defaultOrder[settings_order[index]] then
				tremove(settings_order, index)
			end
		end
	else
		settings_order = { unpack(defaultOrder) }
		settings.order = settings_order
	end

	for button in pairs(buttons) do
		buttons[button] = 0
		button:Hide()
	end

	wipe(order)
	local count = 0
	for index = 1, #settings_order do
		local button = _G[settings_order[index]]
		if button and buttons[button] then
			count = count + 1
			buttons[button], order[count] = count, button
			button:Show()
		end
	end

	addon:ApplyPluginSettings()
end

AchievementMicroButton_Update = addon.DoNothing									-- Temp fix for Bliz bug

frame:SetScript('OnEvent', function(self, event, name)
	if name ~= addonName then return end

	addon.db = LibStub('AceDB-3.0'):New(addonName .. "Settings", { profile = addon.defaultSettings }, 'Default')
	local settings = addon.db.profile
	if addon:GetVersionInteger(settings.version) < 1001000 then
		settings.order = nil
	end
	settings.version = GetAddOnMetadata(addonName, 'Version')

	local RegisterCallback, UpdateProfile = addon.db.RegisterCallback, addon.UpdateProfile
	RegisterCallback(addon, 'OnProfileChanged', UpdateProfile)
	RegisterCallback(addon, 'OnProfileCopied', UpdateProfile)
	RegisterCallback(addon, 'OnProfileReset', UpdateProfile)
	UpdateProfile()

	self:SetScript('OnUpdate', function(self, event)
		self:SetScript('OnUpdate', nil)
		addon:UpdateAlertAnchoring()
		addon:ApplyPluginSettings()
	end)

	-- Override stuff follows
	local function OverridePetBattleUI()
		frame:UnregisterEvent('ADDON_LOADED')
		frame:SetScript('OnEvent', nil)
		if PetBattleFrame and PetBattleFrame.BottomFrame and PetBattleFrame.BottomFrame.MicroButtonFrame then
			PetBattleFrame.BottomFrame.MicroButtonFrame:SetScript('OnShow', nil)
		end
	end

	if IsAddOnLoaded('Blizzard_PetBattleUI') then
		pcall(OverridePetBattleUI)
	else
		frame:SetScript('OnEvent', function(self, event, name)
			if name == 'Blizzard_PetBattleUI' then
				pcall(OverridePetBattleUI)
			end
		end)
	end

	hooksecurefunc('MoveMicroButtons', addon.UpdatePlugin)						-- In theory this will not be used
	hooksecurefunc('UpdateMicroButtons', function()
		HelpMicroButton:SetShown((buttons[HelpMicroButton] or 0) > 0)
		StoreMicroButton:SetShown((buttons[StoreMicroButton] or 0) > 0)
		for button, index in pairs(buttons) do
			if button:IsEnabled() then
				button.__disabled = nil
			else
				button.__disabled = true
				button:Enable()
			end
		end
		addon.UpdatePlugin()
	end)
end)
frame:RegisterEvent('ADDON_LOADED')

--[[----------------------------------------------------------------------------
Override Dominos
------------------------------------------------------------------------------]]
if Dominos then
	local menuBar = Dominos:GetModule('MenuBar')
	if menuBar then
		menuBar.Load = addon.DoNothing
	end
end

--[[----------------------------------------------------------------------------
Load on demand configuration
------------------------------------------------------------------------------]]
local LOA = LibStub('LibOptionsAssist-1.1', true)
if not (LOA and select(2, GetAddOnInfo(addonName .. '_Config'))) then return end	-- Make sure config support exists

addon.config = LOA.AddEntry(addonName, nil, function()
	addon.L = setmetatable({ }, { __index = function(self, key)
		self[key] = key
		return key
	end })

	local config = addonName .. '_Config'
	addon.addonName, _G[config] = addonName, addon
	LOA.LoadModule(config)
	addon.addonName, _G[config] = nil, nil
end)
