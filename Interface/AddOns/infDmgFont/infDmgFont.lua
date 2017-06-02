----------------------------------------------
-- infDmgFont
----------------------------------------------

local infDmgFont = CreateFrame("Frame", "infDmgFont")
infDmgFont:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infDmgFont:RegisterEvent("ADDON_LOADED")

local damageFont = "Interface\\AddOns\\infDmgFont\\Fonts\\infDmgFont.ttf"

function infDmgFont:ADDON_LOADED(event, addon)
	if addon ~= self:GetName() then return end
	self:UnregisterEvent(event)

	self:ApplyFont()
end

function infDmgFont:ApplyFont()
	DAMAGE_TEXT_FONT = damageFont
end

