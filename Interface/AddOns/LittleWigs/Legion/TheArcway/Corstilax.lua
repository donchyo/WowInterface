
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Corstilax", 1079, 1498)
if not mod then return end
mod:RegisterEnableMob(98205)
mod.engageId = 1825

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		195804, -- Quarantine
		{196068, "ICON"}, -- Suppression Protocol
		196115, -- Cleansing Force
		{220481, "FLASH"}, -- Destabilized Orb
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_AURA_APPLIED", "Quarantine", 195804)
	self:Log("SPELL_AURA_APPLIED", "SuppressionProtocol", 196068)
	self:Log("SPELL_AURA_REMOVED", "SuppressionProtocolRemoved", 196068)
	self:Log("SPELL_CAST_START", "CleansingForce", 196115)
	self:Log("SPELL_CAST_SUCCESS", "DestabilizedOrb", 220481)
	self:Log("SPELL_AURA_APPLIED", "DestabilizedOrbDamage", 220500)
	self:Log("SPELL_PERIODIC_DAMAGE", "DestabilizedOrbDamage", 220500)
end

function mod:OnEngage()
	self:CDBar(196068, 6) -- Suppression Protocol
	self:CDBar(195804, 22) -- Quarantine
	self:CDBar(196115, 30) -- Cleansing Force
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Quarantine(args)
	self:TargetMessage(args.spellId, args.destName, "Attention", "Info", nil, nil, true)
	self:CDBar(args.spellId, 46)
end

function mod:SuppressionProtocol(args)
	self:TargetMessage(args.spellId, args.destName, "Urgent", "Alarm")
	self:TargetBar(args.spellId, 12, args.destName)
	self:ScheduleTimer("CDBar", 12, args.spellId, 34)
	self:PrimaryIcon(args.spellId, args.destName)
end

function mod:SuppressionProtocolRemoved(args)
	self:PrimaryIcon(args.spellId, nil)
end

function mod:CleansingForce(args)
	self:Message(args.spellId, "Urgent", "Alert")
	self:Bar(args.spellId, 10, CL.cast:format(args.spellName))
	self:CDBar(args.spellId, 46)
end

function mod:DestabilizedOrb(args)
	self:Message(args.spellId, "Attention")
end

do
  local prev = 0
  function mod:DestabilizedOrbDamage(args)
		local t = GetTime()
		if self:Me(args.destGUID) and t-prev > 2 then
			prev = t
			self:Flash(220481)
			self:Message(220481, "Personal", "Alarm", CL.underyou:format(args.spellName))
		end
  end
end
