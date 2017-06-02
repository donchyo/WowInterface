local _, iTF = ...
local maxRanges = {
	--Death Knight
	[250] = { --Blood
		utility = 49576,	--Death Grip (30yd)
		interrupt = 47528,	--Mind Freeze (15yd)
		dps = 49998,	--Death Strike (Melee)
		tank = true,	--Tank
	},
	[251] = { --Frost
		utility = 49576,	--Death Grip (30yd)
		interrupt = 47528,	--Mind Freeze (15yd)
		dps = 49143,	--Frost Strike (Melee)
	},
	[252] = { --Unholy,
		utility = 49576,	--Death Grip (30yd)
		interrupt = 47528,	--Mind Freeze (15yd)
		dps = 55090,	--Scourge Strike (Melee)
	},

	--Demon Hunter
	[577] = { --Havoc
		utility = 185123,	--Throw Glaive (30yd)
		interrupt = 183752,	--Consume Magic (20yd)
		dps = 162794,	--Chaos Strike (Melee)
	},
	[581] = { --Vengeance
		utility = 185245,	--Torment (30yd)
		interrupt = 183752,	--Consume Magic (20yd)
		dps = 203798,	--Soul Cleave (Melee)
		tank = true,	--Tank
	},

	--Druid
	[102] = { --Balance
		utility = 190984,	--Solar Wrath (45yd)
		interrupt = 78675,	--Solar Beam (45yd)
		dps = 190984,	--Solar Wrath (45yd)
	},
	[103] = { --Feral,
		utility = 8921,	--Moonfire (40yd)
		interrupt = 106839,	--Skull Bash (13yd+)
		dps = 5221,	--Shred (Melee)
	},
	[104] = { --Guardian
		utility = 6795,	--Growl (30yd)
		interrupt = 106839,	--Skull Bash (13yd+)
		dps = 6807,	--Maul (Melee)
		tank = true,	--Tank
	},
	[105] = { --Restoration
		utility = 5176,	--Solar Wrath (40yd)
		dps = 5176,	--Solar Wrath (40yd)
	},

	--Hunter
	[253] = { --Beastmastery
		utility = 193455,	--Cobra Shot (40yd)
		interrupt = 147362,	-- Counter Shot (40yd)
		dps = 193455,	--Cobra Shot (40yd)
	},
	[254] = { --Marksmanship
		utility = 185901,	--Marked Shot (40yd+)
		interrupt = 147362,	-- Counter Shot (40yd)
		dps = 185901,	--Marked Shot (40yd+)
	},
	[255] = { --Survival
		utility = {
			min = 185855,	--Lacerate (<5yd)
			max = 190925,	--Harpoon (5-40yd)
			},
		interrupt = 187707,	--Muzzle (5yd)
		dps = 185855,	--Lacerate (5yd)
	},
	--Mage
	[62] = { --Arcane
		utility = 30451,	--Arcane Blast (40yd)
		interrupt = 2139,	--Counterspell (40yd)
		dps = 30451,	--Arcane Blast (40yd)
	},
	[63] = { --Fire
		utility = 133,	--Fireball (40yd)
		interrupt = 2139,	--Counterspell (40yd)
		dps = 133,	--Fireball (40yd)
	},
	[64] = { --Frost
		utility = 116,	--Frostbolt (40yd)
		interrupt = 2139,	--Counterspell (40yd)
		dps = 116,	--Frostbolt (40yd)
	},

	--Monk
	[268] = { --Brewmaster
		utility = 115546,	--Provoke (30yd)
		interrupt = 116705,	--Spear Hand Strike (Melee)
		dps = 205523, --Blackout Kick (Melee)
		tank = true,	--Tank
	},
	[269] = { --Windwalker
		utility = 115546,	--Provoke (30yd)
		interrupt = 116705,	--Spear Hand Strike (Melee)
		dps = 107428,	--Rising Sun Kick (Melee)
	},
	[270] = { --Mistviewer
		utility = 115546,	--Provoke (30yd)
		dps = 117952,	--Crackling Jade Lightning (40yd), TO DO: maybe switch to melee ability?
	},

	--Paladin
	[65] = { --Holy
		utility = 62124,	--Hand of Reckoning (30yd)
		dps = 20271,	--Judgment (30yd), TO DO: maybe switch to melee ability? (or Holy Shock, 40yd)
	},
	[66] = { --Protection
		utility = 62124,	--Hand of Reckoning (30yd)
		interrupt = 96231,	--Rebuke (Melee)
		dps = 53600,	--Shield of the Righteous (30yd)
		tank = true,	--Tank
	},
	[70] = { --Retribution
		utility = 62124,	--Hand of Reckoning (30yd)
		interrupt = 96231,	--Rebuke (Melee)
		dps = 35395,	--Crusader Strike
	},
	--Priest
	
	[256] = { --Discipline
		utility = 585,	--Smite (40yd)
		dps = 585,	--Smite (40yd)
	},
	[257] = { --Holy
		utility = 585,	--Smite (40yd)
		dps = 585,	--Smite (40yd)
	},
	[258] = { --Shadow
		utility = 589,	--Shadow Word: Pain (40yd)
		interrupt = 15487,	-- Silence (30yd)
		dps = 589,	--Shadow Word: Pain (40yd)
	},

	--Rogue
	[259] = { --Assassination
		utility =36554,	--Shadowstep (25yd)
		interrupt = 1766,	--Kick (Melee)
		dps = 1329,	--Mutilate (Melee)
	},
	[260] = { --Outlaw
		utility = 185763,	--Pistol Shot (20yd)
		interrupt = 1766,	--Kick (Melee)
		dps = 193315,	--Saber Slash (Melee)
	},
	[261] = { --Sublety
		utility = 36554,	--Shadowstep (25yd)
		interrupt = 1766,	--Kick (Melee)
		dps = 52,		--Backstab (Melee)
	},

	--Shaman
	[262] = { --Elemental
		utility = 188196,	--Lightning Bolt (40yd)
		interrupt = 57994,	--Wind Shear (30yd)
		dps = 188196,	--Lightning Bolt (40yd)
	},
	[263] = { --Enhancement
		utility = 187837,	--Lightning Bolt (40yd)
		interrupt = 57994,	--Wind Shear (30yd)
		dps = 17364,	--Stormstrike (Melee)
	},
	[264] = { --Restoration
		utility = 188838,	--Flame Shock (40yd)
		interrupt = 57994,	--Wind Shear (30yd)
		dps = 188838,	--Flame Shock (40yd)
	},

	--Warlock --TO DO: add pets
	[265] = { --Affliction
		utility = 172,	--Corruption (40yd)
		dps = 172,	--Corruption (40yd)
	},
	[266] = { --Demonology
		utility = 686,	--Shadow Bolt (40yd)
		dps = 686,	--Shadow Bolt (40yd)
	},
	[267] = { --Descrution
		utility = 29722,	--Incinerate (40yd)
		dps = 29722,	--Incinerate (40yd)
	},

	--Warrior
	[71] = { --Arms
		utility = 355,	--Taunt (30yd)
		interrupt = 6552,	--Pummel (Melee)
		dps = 12294,	--Mortal Strike (Melee)
	},
	[72] = { --Fury
		utility = 355,	--Taunt (30yd)
		interrupt = 6552,	--Pummel (Melee)
		dps = 23881,	--Bloodthirst (Melee)
	},
	[73] = { --Protection
		utility = 355,	--Taunt (30yd)
		interrupt = 6552,	--Pummel (Melee)
		dps = 20243,	--Devastate (Melee)
		tank = true,	--Tank
	},

}
local function convertIdsToNames(t)
	local temp = {}
	for k,v in pairs(maxRanges) do
		if type(v) == 'table' then
			temp[k] = {}
			for dK,dV in pairs(v) do
				if type(dV) == 'table' then
					temp[k][dK] = {}
					for iK, iV in pairs(dV) do
						temp[k][dK][iK] = GetSpellInfo(iV)
					end
				else
					temp[k][dK] = GetSpellInfo(dV)
				end
			end
		else
			temp[k] = GetSpellInfo(v)
		end
	end
	return temp
end
iTF.spells = {
	['range'] = convertIdsToNames(maxRanges),
}