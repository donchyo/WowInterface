local _, iTF = ...

iTF.auraBlacklist = {
	--Death Knight
		--Blood
			[206930] = true, -- Heart Strike (slow)
		--Unholy
			[191727] = true, -- Famine (Army of the Damned), reduces damage dealt to the Death Knight.
			[191728] = true, -- War (Army of the Damned), reduces healing done.
			[191729] = true, -- Pestilence (Army of the Damned), deals additional damage over time.
			--[191730] = true, -- Death (Army of the Damned), increases damage taken from the Death Knight.
	--Demon Hunter
		--Vengeance
			[210003] = true, -- Razor Spikes (Slow)
		--Havoc
			[213405] = true, -- Master of the Glaive (Slow) 
			[198813] = true, -- Vengeful Retreat (Slow)
	--Druid
		--Balance
		--Feral
			[58180] = true, -- Infected Wounds (Slow)
		--Guardian
			[214995] = true, -- Bloody Paws (Slow)
		--Restoration
	--Hunter
		--Beast Mastery
		--Marksmanship
		--Survival
	--Mage
		--Arcane
		--Fire
			[157981] = true, -- Blast wave (Slow)
			[2120] = true, -- Flamestrike (Slow)
		--Frost
			[228354] = true, -- Flurry (Slow)
			[205708] = true, -- Chilled (Slow) XX frostbolt activates it, not sure if i should remove it from blacklist
	--Monk
		--Brewmaster
			[121253] = true, -- Keg Smash (Slow)
		--Mistweaver
		--Windwalker
	--Paladin
		--Holy
		--Protection
		--Retribution
	--Priest
		--Discipline
		--Holy
		--Shadow
			[15407] = true, -- Mind Flay
			[193473] = true, -- Mind Flay (pet)
	--Rogue
		--Assassination
		--Outlaw
		--Sublety
	--Shaman
		--Elemental
		--Enhancement
		--Restoration
	--Warlock
		--Affliction
			[689] = true, -- Drain Life
			[198590] = true, -- Drain Soul
		--Destruction
		--Demonology
	--Warrior
		--Arms
			[115804] = true, --Mortal Wounds (-25% healing received)
		--Fury
		--Protection
			[6343] = true, -- Thunder Clap (Slow)
		
}