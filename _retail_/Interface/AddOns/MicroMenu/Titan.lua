local addonName, addon = ...

if addon.platform ~= 'Titan' then return end

addon.defaultSettings.titanTooltip = true

local BUTTON_SIZE = 16

local frame, order = addon.frame, addon.order

frame.registry = {
	id = addonName,
	category = GetAddOnMetadata(addonName, 'X-Category'),
	version = GetAddOnMetadata(addonName, 'Version'),
	controlVariables = { DisplayOnRightSide = true },
	savedVariables = { DisplayOnRightSide = false }
}

--[[----------------------------------------------------------------------------
Titan Panel made these functions local so now we have to use the scripts it
generates in place of the real functions.  This breaks using a modifier key to 
drag the entire plugin vice just one icon.
------------------------------------------------------------------------------]]
local TitanPanelButton_OnDragStart, TitanPanelButton_OnDragStop = addon.DoNothing, addon.DoNothing

function addon.OnFirstShow()
	TitanPanelButton_OnDragStart = frame:GetScript('OnDragStart')
	TitanPanelButton_OnDragStop = frame:GetScript('OnDragStop')
end

--[[----------------------------------------------------------------------------
Script abstraction
------------------------------------------------------------------------------]]
function addon.OnDragStart()
	addon.isMoving = true
	TitanPanelButton_OnDragStart(frame)
	GameTooltip:Hide()
	addon.HideAlerts()
end

function addon.OnDragStop()
	TitanPanelButton_OnDragStop(frame)
	addon.isMoving = nil
	addon.UpdateAlertAnchoring()
end

function addon.OnEnter()
	if addon.isMoving then return end
	TitanPanelButton_OnEnter(frame)
end

function addon.OnLeave()
	if addon.isMoving then return end
	TitanPanelButton_OnLeave(frame)
end

--[[----------------------------------------------------------------------------
Addon methods
------------------------------------------------------------------------------]]
function addon:IsTooltipAllowed()
	local settings = self.db.profile
	if settings.titanTooltip then
		return TitanPanelGetVar('ToolTipsShown') and not (TitanPanelGetVar('HideTipsInCombat') and InCombatLockdown())
	end
	return SecureCmdOptionParse(settings.tooltip) ~= "Hide"
end

function addon.UpdatePlugin()
	local spacing = addon.db.profile.spacing
	local baseOffset = BUTTON_SIZE + spacing
	for index = 1, #order do
		order[index]:ClearAllPoints()
		order[index]:SetPoint('LEFT', frame, baseOffset * (index - 1), 0)
	end
	frame:SetWidth(baseOffset * #order - spacing)
end

addon.ApplyPluginSettings = addon.UpdatePlugin

--[[----------------------------------------------------------------------------
Initialize
------------------------------------------------------------------------------]]
TitanUtils_PluginToRegister(frame)

frame:SetFrameStrata('FULLSCREEN')
frame:SetToplevel(true)
frame:SetHeight(16)

for button in pairs(addon.buttons) do
	button:SetSize(BUTTON_SIZE, BUTTON_SIZE)
end
