-- ================ PALADIN ================

local SPEC_PALADIN_HOLY        = 65
local SPEC_PALADIN_PROTECTION  = 66
local SPEC_PALADIN_RETRIBUTION = 70

-- Paladin/baseline
-- Hammer of Justice
LCT_SpellData[853] = {
	class = "PALADIN",
	stun = true,
	cooldown = 60,
	opt_lower_cooldown = 25, -- This is an approximation. Technically: Fist of Justice talent=-10s/Judgement.
}
-- Divine Steed
LCT_SpellData[190784] = {
	class = "PALADIN",
	duration = 3,
	cooldown = 45
}
-- Lay on Hands
LCT_SpellData[633] = {
	class = "PALADIN",
	cooldown = 600
}
-- Avenging Wrath
LCT_SpellData[31884] = {
	class = "PALADIN",
	offensive = true,
	defensive = true,
	duration = 20,
	cooldown = 120,
}
-- Hand of Reckoning
LCT_SpellData[62124] = {
	class = "PALADIN",
	cooldown = 8,
}
-- Crusader Strike
LCT_SpellData[35395] = {
	class = "PALADIN",
	offensive = true,
	cooldown = 6,
}
-- Divine Shield
LCT_SpellData[642] = {
	class = "PALADIN",
	immune = true,
	duration = 8,
	cooldown = 300,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 240,
		[SPEC_PALADIN_HOLY]        = 210,
	},
}
-- Hand of Freedom
LCT_SpellData[1044] = {
	class = "PALADIN",
	defensive = true,
	opt_charges = 2,
	opt_charges_linked = { 1022, 6940, 204018 },
	duration = 6,
	cooldown = 25,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 20, -- ret
	}
}
-- Blessing of Protection
LCT_SpellData[1022] = {
	class = "PALADIN",
	defensive = true,
	opt_charges = 2,
	opt_charges_linked = { 1044, 6940 },
	duration = 10,
	cooldown = 300,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 180, -- ret
		[SPEC_PALADIN_HOLY] = 240, -- holy
	},
}
-- Rebuke
LCT_SpellData[96231] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION, SPEC_PALADIN_RETRIBUTION },
	interrupt = true,
	cooldown = 15
}
-- Divine Protection
LCT_SpellData[498] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION, SPEC_PALADIN_HOLY },
	defensive = true,
	duration = 8,
	cooldown = 60
}
-- Paladin/talents
-- Repentance
LCT_SpellData[20066] = {
	class = "PALADIN",
	talent = true,
	cc = true,
	cooldown = 15
}
-- Holy Prism
LCT_SpellData[114165] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	heal = true,
	cooldown = 20
}
-- Light's Hammer
LCT_SpellData[114158] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	offensive = true,
	heal = true,
	duration = 16,
	cooldown = 60
}
-- Blinding Light
LCT_SpellData[115750] = {
	class = "PALADIN",
	cc = true,
	talent = true,
	cooldown = 90
}

-- Paladin/Holy
-- Cleanse
LCT_SpellData[4987] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	cooldown_starts_on_dispel = true,
	dispel = true,
	cooldown = 8
}
-- Hand of Sacrifice
LCT_SpellData[6940] = {
	class = "PALADIN",
	defensive = true,
	specID = { SPEC_PALADIN_HOLY },
	opt_charges = 2,
	opt_charges_linked = { 1044, 1022, 204018 },
	duration = 12,
	cooldown = 120
}
-- Holy Shock
LCT_SpellData[20473] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	offensive = true,
	heal = true,
	cooldown = 9
}
-- Aura Mastery
LCT_SpellData[31821] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	defensive = true,
	duration = 8,
	cooldown = 180
}
-- Judgement (Holy)
LCT_SpellData[275773] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	offensive = true,
	cooldown = 12
}
-- Paladin/Holy/talents
-- Beacon of Virtue
LCT_SpellData[200025] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	cooldown = 15,
	-- replaces = 53563 -- Beacon of Light (no CD)
}
-- Rule of Law
LCT_SpellData[214202] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	charges = 2,
	duration = 10,
	cooldown = 30,
}
-- Holy Avenger
LCT_SpellData[105809] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	offensive = true,
	defensive = true,
	duration = 20,
	cooldown = 90
}
-- Divine Favor
LCT_SpellData[210294] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	cooldown = 45
}
-- Bestow Faith
LCT_SpellData[223306] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	cooldown = 12
}
-- Avenging Crusader
LCT_SpellData[216331] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	offensive = true,
	defensive = true,
	duration = 20,
	cooldown = 120,
	replaces = 31884
}

-- Paladin/Protection
-- Ardent Defender
LCT_SpellData[31850] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	defensive = true,
	duration = 10,
	cooldown = 180
}
-- Light of the Protector
LCT_SpellData[184092] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	heal = true,
	cooldown = 17
}
-- Avenger's Shield
LCT_SpellData[31935] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	silence = true,
	interrupt = true,
	cooldown = 15
}
-- Consecration (Protection)
LCT_SpellData[26573] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	offensive = true,
	duration = 9,
	cooldown = 4.5
}
-- Guardian of Ancient Kings
LCT_SpellData[86659] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	duration = 8,
	defensive = true,
	cooldown = 300
}
-- Hammer of the Righteous
LCT_SpellData[53595] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	cooldown = 4.5,
	charges = 2
}
-- Shield of the Righteous
LCT_SpellData[53600] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	offensive = true,
	cooldown = 18,
	charges = 3
}
-- Paladin/Protection/talents
-- Inquisition
LCT_SpellData[207028] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	cooldown = 20,
	replaces = 62124, -- Hand of Reckoning
}
-- Seraphim
LCT_SpellData[152262] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	cooldown = 45,
	-- TODO consumes charges of Shield of the Righteous
}
-- Blessing of Spellwarding
LCT_SpellData[204018] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	cooldown = 180,
	replaces = 1022, -- Blessing of Protection
}
-- Guardian of the Forgotten Queen
LCT_SpellData[228049] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	cooldown = 180,
	replaces = 86659, -- Guardian of Ancient Kings
}
-- Aegis of Light
LCT_SpellData[204150] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	cooldown = 180,
}
-- Blessed Hammer
LCT_SpellData[204019] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	cooldown = 4.5,
	charges = 3,
	replaces = 53595,
}
-- Hand of the Protector
LCT_SpellData[213652] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	talent = true,
	heal = true,
	cooldown = 15,
	replaces = 184092,
}

-- Paladin/Retribution
-- Judgement (Ret)
LCT_SpellData[20271] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	offensive = true,
	cooldown = 6
}
-- Blade of Justice
LCT_SpellData[184575] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	offensive = true,
	cooldown = 10.5
}
-- Consecration (Retribution)
LCT_SpellData[205228] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	offensive = true,
	cooldown = 20
}
-- Hand of Hindrance
LCT_SpellData[183218] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	offensive = true,
	duration = 10,
	cooldown = 30
}
-- Shield of Vengeance
LCT_SpellData[184662] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	defensive = true,
	duration = 15,
	cooldown = 120
}
-- Paladin/Retribution/talents
-- Eye for an eye
LCT_SpellData[205191] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	defensive = true,
	duration = 10,
	cooldown = 60
}
-- Wake of Ashes
LCT_SpellData[255937] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	cooldown = 45
}
-- Word of Glory
LCT_SpellData[210191] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	heal = true,
	charges = 2,
	cooldown = 45
}
-- Blessing of Sanctuary
LCT_SpellData[210256] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	defensive = true,
	duration = 5,
	cooldown = 45
}
-- Crusade
LCT_SpellData[210256] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	offensive = true,
	cooldown = 120,
	replaces = 31884, -- Avenging Wrath
}
-- Execution Sentence
LCT_SpellData[267798] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	offensive = true,
	cooldown = 30
}
-- Hammer of Reckoning
LCT_SpellData[247675] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	talent = true,
	cooldown = 60
}