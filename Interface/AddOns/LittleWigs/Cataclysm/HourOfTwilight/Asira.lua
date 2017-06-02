-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Asira Dawnslayer", 819)
if not mod then return end
mod.partyContent = true
mod:RegisterEnableMob(54968)
mod.toggleOptions = {
	"bosskill",
}

-------------------------------------------------------------------------------
--  Localization

local L = mod:NewLocale("enUS", true)
if L then

--@localization(locale="enUS", namespace="HourOfTwilight/Asira", format="lua_additive_table", handle-unlocalized="ignore")@
end
L = mod:GetLocale()

-------------------------------------------------------------------------------
--  Initialization

function mod:OnBossEnable()
	self:Death("Win", 54986)
end

-------------------------------------------------------------------------------
--  Event Handlers
