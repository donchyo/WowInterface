
local folder, core = ...

local LibNameplate = LibStub("LibNameplate-1.0", true)
if not LibNameplate then error(folder .. " requires LibNameplate-1.0.") return end

core.title = "infPlateSpells"

core.LibNameplate = LibNameplate

LibStub("AceAddon-3.0"):NewAddon(core, folder, "AceEvent-3.0")

local regEvents = {
	"PLAYER_TARGET_CHANGED",
	"UPDATE_MOUSEOVER_UNIT",
	"UNIT_AURA",
	"UNIT_TARGET",
}

local totemList = { --Nameplates with these names are totems. By default we ignore totem nameplates.
    2484, --earthbind totem
    8143, --tremor totem
    8177, --grounding totem
    2062, --earth elemental totem
    2894, --fire elemental totem
    8190, --magma totem
    5394, --healing stream totem
    3599, --searing totem
	51485, --earthgrab totem
	108269,	--capacitor totem
	108273, --windwalk totem
	152256, --storm elemental totem
	157153 --cloudburst totem
}

core.BuffList = {
	--death knight
	[48707] = {["show"] = 1,}, --anti-magic shell
	[48792] = {["show"] = 1,}, --icebound fortitude
	[49039] = {["show"] = 1,}, --lichborne
	[49222] = {["show"] = 1,}, --bone shield
	[50461] = {["show"] = 1,}, --anti-magic zone
	[51271] = {["show"] = 1,}, --pillar of frost
	[55233] = {["show"] = 1,}, --vampiric blood
	[81256] = {["show"] = 1,}, --dancing rune weapon
	[115018] = {["show"] = 1,}, --desecrated ground
	[119975] = {["show"] = 1,}, --conversion
	[152279] = {["show"] = 1,}, --breath of sindragosa
	[171049] = {["show"] = 1,}, --rune tap

	--druid
	[22812] = {["show"] = 1,}, --barkskin
	[29166] = {["show"] = 1,}, --innervate
	[48505] = {["show"] = 1,}, --starfall
	[50334] = {["show"] = 1,}, --berserk (guardian)
	[61336] = {["show"] = 1,}, --survival instincts
	--[69369] = {["show"] = 1,}, --predatory swiftness
	[102342] = {["show"] = 1,}, --ironbark
	[102543] = {["show"] = 1,}, --incarnation: king of the jungle
	[102558] = {["show"] = 1,}, --incarnation: son of ursoc
	[102560] = {["show"] = 1,}, --incarnation: chosen of elune
	[106951] = {["show"] = 1,}, --berserk (feral)
	[108291] = {["show"] = 1,}, --heart of the wild (balance)
	[108292] = {["show"] = 1,}, --heart of the wild (feral)
	[108293] = {["show"] = 1,}, --heart of the wild (guardian)
	[108294] = {["show"] = 1,}, --heart of the wild (resto)
	[112071] = {["show"] = 1,}, --celestial alignment
	[117679] = {["show"] = 1,}, --incarnation: tree of life 
	[132158] = {["show"] = 1,}, --nature's swiftness
	[155835] = {["show"] = 1,}, --bristling fur
	[158792] = {["show"] = 1,}, --pulverize
	[170847] = {["show"] = 1,}, --celestial protection (balance pvp bonus)
	[170856] = {["show"] = 1,}, --nature's grasp (resto pvp bonus)

	--hunter
	[3045] = {["show"] = 1,}, --rapid fire
	[19263] = {["show"] = 1,}, --deterrence
	[19574] = {["show"] = 1,}, --beastial wrath
	[53480] = {["show"] = 1,}, --roar of sacrifice
	[54216] = {["show"] = 1,}, --master's call	
	[90355] = {["show"] = 1,}, --ancient hysteria
	[148467] = {["show"] = 1,}, --deterrence (crouching tiger, hidden chimera)

	--mage
	[12042] = {["show"] = 1,}, --arcane power
	[12043] = {["show"] = 1,}, --presence of mind
	[12051] = {["show"] = 1,}, --evocation
	[12472] = {["show"] = 1,}, --icy veins
	[45438] = {["show"] = 1,}, --ice block
	[80353] = {["show"] = 1,}, --time warp
	[108843] = {["show"] = 1,}, --blazing speed
	[110909] = {["show"] = 1,}, --alter time
	[110960] = {["show"] = 1,}, --greater invisibility
	[111264] = {["show"] = 1,}, --ice ward
	[115760] = {["show"] = 1,}, --glyph of ice block
	[157913] = {["show"] = 1,}, --evanesce

	--monk
	[116740] = {["show"] = 1,}, --tigereye brew
	[116844] = {["show"] = 1,}, --ring of peace
	[116849] = {["show"] = 1,}, --life cocoon
	[120954] = {["show"] = 1,}, --fortifying brew
	[122278] = {["show"] = 1,}, --dampen harm
	[122783] = {["show"] = 1,}, --diffuse magic
	[125174] = {["show"] = 1,}, --touch of karma
	[131523] = {["show"] = 1,}, --zen meditation
	[137562] = {["show"] = 1,}, --nimble brew
	[159546] = {["show"] = 1,}, --zen focus

	--paladin
	[498] = {["show"] = 1,}, --divine protection
	[642] = {["show"] = 1,}, --divine shield
	[1022] = {["show"] = 1,}, --hand of protection
	[1044] = {["show"] = 1,}, --hand of freedom
	[6940] = {["show"] = 1,}, --hand of sacrifice
	[31821] = {["show"] = 1,}, --devotion aura
	[31850] = {["show"] = 1,}, --ardent defender
	[31884] = {["show"] = 1,}, --avenging wrath
	[54149] = {["show"] = 1,}, --infusion of light
	[85499] = {["show"] = 1,}, --speed of light
	[86659] = {["show"] = 1,}, --guardian of ancient kings
	[105809] = {["show"] = 1,}, --holy avenger
	[114039] = {["show"] = 1,}, --hand of purity
	[165889] = {["show"] = 1,}, --righteous determination (ret pvp bonus)

	--priest
	[10060] = {["show"] = 1,}, --power infusion
	[15286] = {["show"] = 1,}, --vampiric embrace
	[33206] = {["show"] = 1,}, --pain suppression
	[47585] = {["show"] = 1,}, --dispersion
	[47788] = {["show"] = 1,}, --guardian spirit
	[64843] = {["show"] = 1,}, --divine hymn (holy only)
	[109964] = {["show"] = 1,}, --spirit shell
	[114214] = {["show"] = 1,}, --angelic bulwark
	[114239] = {["show"] = 1,}, --phantasm
	[159630] = {["show"] = 1,}, --shadow magic

	--rogue
	[1966] = {["show"] = 1,}, --feint
	[5277] = {["show"] = 1,}, --evasion
	[13750] = {["show"] = 1,}, --adrenaline rush
	[31224] = {["show"] = 1,}, --cloak of shadows
	[45182] = {["show"] = 1,}, --cheating death
	[51690] = {["show"] = 1,}, --killing spree
	[51713] = {["show"] = 1,}, --shadow dance
	[74001] = {["show"] = 1,}, --combat readiness
	[84747] = {["show"] = 1,}, --deep insight
	[108212] = {["show"] = 1,}, --burst of speed
	[115192] = {["show"] = 1,}, --subterfuge
	[152151] = {["show"] = 1,}, --shadow reflection

	--shaman
	[2825] = {["show"] = 1,}, --bloodlust
	[8178] = {["show"] = 1,}, --grounding totem effect
	[16166] = {["show"] = 1,}, --elemental mastery
	[16188] = {["show"] = 1,}, --ancestral swiftness
	[30823] = {["show"] = 1,}, --shamanistic rage
	[31616] = {["show"] = 1,}, --nature's guardian
	[32182] = {["show"] = 1,}, --heroism
	[79206] = {["show"] = 1,}, --spiritwalker's grace
	[108271] = {["show"] = 1,}, --astral shift
	[114050] = {["show"] = 1,}, --ascendance (elemental)
	[114051] = {["show"] = 1,}, --ascendance (ench)
	[114052] = {["show"] = 1,}, --ascendance (resto)
	[114893] = {["show"] = 1,}, --stone bulwark	
	[114896] = {["show"] = 1,}, --windwalk totem
	[118347] = {["show"] = 1,}, --reinforce
	[159652] = {["show"] = 1,}, --spiritwalker's aegis
	[166100] = {["show"] = 1,}, --ancestral focus
	[171114] = {["show"] = 1,}, --strength of the pack

	--warlock
	[6262] = {["show"] = 1,}, --healthstone
	[79438] = {["show"] = 1,}, --soulburn: demonic circle
	[103958] = {["show"] = 1,}, --metamorphosis (demon form)
	[104773] = {["show"] = 1,}, --unending resolve
	[108359] = {["show"] = 1,}, --dark regeneration
	[108416] = {["show"] = 1,}, --sacrificial pact
	[110913] = {["show"] = 1,}, --dark bargain
	[111397] = {["show"] = 1,}, --blood horror
	[113858] = {["show"] = 1,}, --dark soul: instability
	[113860] = {["show"] = 1,}, --dark soul: misery	
	[113861] = {["show"] = 1,}, --dark soul: knowledge
	[114635] = {["show"] = 1,}, --ember tap

	--warrior
	[871] = {["show"] = 1,}, --shield wall
	[1719] = {["show"] = 1,}, --recklessness
	--[3411] = {["show"] = 1,}, --intervene
	[12292] = {["show"] = 1,}, --bloodbath
	[12975] = {["show"] = 1,}, --last stand
	[18499] = {["show"] = 1,}, --berserker rage
	[23920] = {["show"] = 1,}, --spell reflection
	[46947] = {["show"] = 1,}, --safeguard (dmg reduction)
	[46924] = {["show"] = 1,}, --bladestorm
	[97463] = {["show"] = 1,}, --rallying cry
	[107574] = {["show"] = 1,}, --avatar
	[114028] = {["show"] = 1,}, --mass spell reflection
	--[114029] = {["show"] = 1,}, --safeguard
	[114030] = {["show"] = 1,}, --vigilance
	[118038] = {["show"] = 1,}, --die by the sword
	[125565] = {["show"] = 1,}, --demoralizing shout
	--[152277] = {["show"] = 1,}, --ravager (only parry if prot)
	[174926] = {["show"] = 1,}, --shield barrier

	--misc**
	[23333] = {["show"] = 1,}, --horde flag
	[23335] = {["show"] = 1,}, --alliance flag
	[34976] = {["show"] = 1,}, --netherstorm flag
	[54861] = {["show"] = 1,}, --nitro boosts
	[121164] = {["show"] = 1,}, --orb of power
	[140876] = {["show"] = 1,}, --alliance mine cart
	[141210] = {["show"] = 1,}, --horde mine cart
}

core.DebuffList = {
	--death knight
	[47476] = {["show"] = 1,}, --strangulate
	[77606] = {["show"] = 2,}, --dark simulacrum
	[91797] = {["show"] = 1,}, --monstrous blow
	[91800] = {["show"] = 1,}, --gnaw
	[91807] = {["show"] = 1,}, --shambling rush
	[96294] = {["show"] = 2,}, --chains of ice
	[108194] = {["show"] = 1,}, --asphyxiate
	[114866] = {["show"] = 2,}, --soul reaper
	[115001] = {["show"] = 1,}, --remorseless winter
	[116888] = {["show"] = 1,}, --shroud of purgatory
	[130735] = {["show"] = 2,}, --soul reaper
	[130736] = {["show"] = 2,}, --soul reaper

	--druid
	[99] = {["show"] = 1,}, --incapacitating roar
	[339] = {["show"] = 1,}, --entangling roots
	[770] = {["show"] = 2,}, --faerie fire
	[5211] = {["show"] = 1,}, --mighty bash
	[22570] = {["show"] = 1,}, --maim
	[33786] = {["show"] = 1,}, --cyclone
	[102355] = {["show"] = 2,}, --faerie swarm
	[102359] = {["show"] = 1,}, --mass entanglement
	[114238] = {["show"] = 1,}, --fae silence
	[163505] = {["show"] = 1,}, --rake (stun)
	[170855] = {["show"] = 1,}, --nature's grasp (resto pvp bonus)

	--hunter
	[3355] = {["show"] = 1,}, --freezing trap
	[19386] = {["show"] = 1,}, --wyvern sting
	[24394] = {["show"] = 1,}, --intimidation
	[117526] = {["show"] = 1,}, --binding shot
	[136634] = {["show"] = 2,}, --narrow escape

	--mage
	[118] = {["show"] = 1,}, --poly
	[28271] = {["show"] = 1,}, --poly: turtle
	[28272] = {["show"] = 1,}, --poly: pig
	[31661] = {["show"] = 1,}, --dragon's breath
	[44572] = {["show"] = 1,}, --deep freeze
	[61305] = {["show"] = 1,}, --poly: cat
	[61721] = {["show"] = 1,}, --poly: rabbit
	[61780] = {["show"] = 1,}, --poly: turkey
	[82691] = {["show"] = 1,}, --ring of frost
	[87023] = {["show"] = 1,}, --cauterize
	[102051] = {["show"] = 1,}, --frostjaw
	[126819] = {["show"] = 1,}, --poly: porcupine
	[161353] = {["show"] = 1,}, --poly: polar bear cub
	[161354] = {["show"] = 1,}, --poly: monkey
	[161355] = {["show"] = 1,}, --poly: penguin
	[161372] = {["show"] = 1,}, --poly: peacock

	--monk
	[115078] = {["show"] = 1,}, --paralysis
	[116706] = {["show"] = 1,}, --disable
	[120086] = {["show"] = 1,}, --fists of fury
	[119381] = {["show"] = 1,}, --leg sweep
	[119392] = {["show"] = 1,}, --charging ox wave
	--[122470] = {["show"] = 2,}, --touch of karma
	[123393] = {["show"] = 1,}, --breath of fire (glyphed)
	[137460] = {["show"] = 1,}, --ring of peace
	[138130] = {["show"] = 2,}, --storm, earth, and fire

	--paladin
	[853] = {["show"] = 1,}, --hammer of justice
	[10326] = {["show"] = 1,}, --turn evil
	[20066] = {["show"] = 1,}, --repentance
	[105421] = {["show"] = 1,}, --blinding light
	[105593] = {["show"] = 1,}, --fist of justice
	[119072] = {["show"] = 1,}, --holy wrath

	--priest
	[8122] = {["show"] = 1,}, --psychic scream
	[9484] = {["show"] = 1,}, --shackle undead
	[15487] = {["show"] = 1,}, --silence
	[64044] = {["show"] = 1,}, --psychic horror
	[87204] = {["show"] = 1,}, --sin and punishment
	[88625] = {["show"] = 1,}, --holy word: chastise
	[113792] = {["show"] = 1,}, --psychic terror
	[114404] = {["show"] = 1,}, --void tendril's grasp
	[155274] = {["show"] = 1,}, --saving grace

	--rogue
	[408] = {["show"] = 1,}, --kidney shot
	[1330] = {["show"] = 1,}, --garrote - silence
	[1776] = {["show"] = 1,}, --gouge
	[1833] = {["show"] = 1,}, --cheap shot
	[2094] = {["show"] = 1,}, --blind
	[6770] = {["show"] = 1,}, --sap
	[88611] = {["show"] = 1,}, --smoke bomb

	--shaman
	[51514] = {["show"] = 1,}, --hex
	[77505] = {["show"] = 1,}, --earthquake
	[118905] = {["show"] = 1,}, --static charge

	--warlock
	[710] = {["show"] = 1,}, --banish
	[5484] = {["show"] = 1,}, --howl of terror
	[6358] = {["show"] = 1,}, --seduction
	[6789] = {["show"] = 1,}, --mortal coil
	[30283] = {["show"] = 1,}, --shadowfury
	[31117] = {["show"] = 1,}, --unstable affliction - silence
	[89766] = {["show"] = 1,}, --axe toss
	[115268] = {["show"] = 1,}, --mesmerize
	[118699] = {["show"] = 1,}, --fear
	[130616] = {["show"] = 1,}, --fear (glyphed)
	[137143] = {["show"] = 1,}, --blood horror

	--warrior
	[5246] = {["show"] = 1,}, --intimidating shout
	[7922] = {["show"] = 1,}, --charge stun (warbringer)
	[132168] = {["show"] = 1,}, --shockwave
	[132169] = {["show"] = 1,}, --storm bolt

	--misc
	[20549] = {["show"] = 1,}, --war stomp
	[25046] = {["show"] = 1,}, --arcane torrent
	[28730] = {["show"] = 1,}, --arcane torrent
	[50613] = {["show"] = 1,}, --arcane torrent
	[69179] = {["show"] = 1,}, --arcane torrent
	[80483] = {["show"] = 1,}, --arcane torrent
	[107079] = {["show"] = 1,}, --quaking palm
}

core.buffFrames = {}
core.guidBuffs = {}
core.nametoGUIDs = {} -- w/o servername
core.buffBars = {}

local BuffList = core.BuffList
local DebuffList = core.DebuffList
local buffBars = core.buffBars
local guidBuffs = core.guidBuffs
local nametoGUIDs = core.nametoGUIDs
local buffFrames = core.buffFrames

local math_floor = math.floor
local table_getn = table.getn
local string_sub = string.sub
local string_len = string.len

local UnitName = UnitName

local totems = {}
do
	local name, texture, _
	for i=1,table_getn(totemList) do
		name, _, texture = GetSpellInfo(totemList[i])
		totems[name] = texture
	end
end

do
	local pairs = pairs
	local table_getn = table.getn

	local OnEnable = core.OnEnable
	function core:OnEnable(...)
		if OnEnable then OnEnable(self, ...) end

		for i, event in pairs(regEvents) do
			self:RegisterEvent(event)
		end

		LibNameplate.RegisterCallback(self, "LibNameplate_NewNameplate")
		LibNameplate.RegisterCallback(self, "LibNameplate_FoundGUID")
		LibNameplate.RegisterCallback(self, "LibNameplate_RecycleNameplate")
	end
end

do
	local table_getn = table.getn
	function core:HidePlateSpells(plate)
		--note to self, not buffBars
		if buffFrames[plate] then
			for i=1, table_getn(buffFrames[plate]) do
				buffFrames[plate][i]:Hide()
			end
		end
	end
end

local function isTotem(name)
--~     for i=1,table_getn(totems) do
--~         if name:find(totems[i].name) then
--~             return totems[i].texture
--~         end
--~     end
	return totems[name]
end

do
	local plateName, plateType, plateReaction
	function core:ShouldAddBuffs(plate, spam)
		plateName = LibNameplate:GetName(plate) or "UNKNOWN"

		if isTotem(plateName) then
			return false
		end

		plateType = LibNameplate:GetType(plate)
		if plateType == "PLAYER" or plateType == "NPC" then
			plateReaction = LibNameplate:GetReaction(plate)
			if plateReaction == "NEUTRAL" then
				return true
			elseif plateReaction == "HOSTILE" then
				return true
			elseif plateReaction == "TAPPED" then
				return true
			end
		end
		return false
	end
end

do
	local GUID, plateName
	function core:AddOurStuffToPlate(plate)
		GUID = LibNameplate:GetGUID(plate)
		if GUID then
			self:RemoveOldSpells(GUID)
			self:AddBuffsToPlate(plate, GUID)
			return
		end

		plateName =  LibNameplate:GetName(plate) or "UNKNOWN"
		if nametoGUIDs[plateName] and (LibNameplate:GetType(plate) == "PLAYER" or LibNameplate:IsBoss(plate)) then
			self:RemoveOldSpells(nametoGUIDs[plateName])
			self:AddBuffsToPlate(plate, nametoGUIDs[plateName])
		end
	end
end

function core:LibNameplate_RecycleNameplate(event, plate)
	self:HidePlateSpells(plate)
end

function core:LibNameplate_NewNameplate(event, plate)
	if self:ShouldAddBuffs(plate, true) == true then
		core:AddOurStuffToPlate(plate)
	end
end

function core:LibNameplate_FoundGUID(event, plate, GUID, unitID)
	if self:ShouldAddBuffs(plate) == true then

		if not guidBuffs[GUID] then
			self:CollectUnitInfo(unitID)
		end

		self:RemoveOldSpells(GUID)
		self:AddBuffsToPlate(plate, GUID)
	end
end

do
	local GUID, name, i, name, rank, icon, count, dispelType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId, debuffType
	local UnitGUID = UnitGUID
	local UnitName = UnitName
	local UnitIsPlayer = UnitIsPlayer
	local UnitClassification = UnitClassification
	local table_getn = table.getn
	local table_remove = table.remove
	local UnitBuff = UnitBuff
	local table_insert = table.insert
	local UnitDebuff = UnitDebuff

	function core:CollectUnitInfo(unitID)
		GUID = UnitGUID(unitID)
		name = UnitName(unitID) --returns 2 values, only want name.
		if UnitIsPlayer(unitID) or UnitClassification(unitID) == "worldboss" then
			--These should always have unique names.
			nametoGUIDs[name] = GUID
		end

		guidBuffs[GUID] = guidBuffs[GUID] or {}

		--Remove all the entries.
		for i=table_getn(guidBuffs[GUID]), 1, -1 do
			table_remove(guidBuffs[GUID], i)
		end

		i = 1;
		while UnitBuff(unitID, i) do
			name, rank, icon, count, dispelType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitBuff(unitID, i)
			icon = icon:upper():gsub("INTERFACE\\ICONS\\", "")

			if BuffList[spellId] and BuffList[spellId].show then
				if BuffList[spellId].show == 1 or (BuffList[spellId].show == 2 and unitCaster and unitCaster == "player") then
					table_insert(guidBuffs[GUID], {
						name = name, --needed for spell options.
						icon = icon,
						expirationTime = expirationTime,
						startTime = expirationTime - duration,
						duration = duration,
						playerCast = unitCaster and unitCaster == "player" and 1,
						stackCount = count,
						dispelType = dispelType,
						sID = spellId,
						caster = unitCaster and core:GetFullName(unitCaster),
					})
				end
			end
			i=i + 1
		end

		i = 1;
		while UnitDebuff(unitID, i) do
			name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitDebuff(unitID, i)
			icon = icon:upper():gsub("INTERFACE\\ICONS\\", "")
			
			if DebuffList[spellId] and DebuffList[spellId].show then
				if DebuffList[spellId].show == 1 or (DebuffList[spellId].show == 2 and unitCaster and unitCaster == "player") then
					table_insert(guidBuffs[GUID], {
						name = name, --needed for spell options.
						icon = icon,
						expirationTime = expirationTime,
						startTime = expirationTime - duration,
						duration = duration,
						playerCast = unitCaster and unitCaster == "player" and 1,
						stackCount = count,
						debuffType = debuffType,
						isDebuff = true,
						sID = spellId,
						caster = unitCaster and core:GetFullName(unitCaster),
					})
				end
			end
			i=i + 1
		end
		if not self:UpdatePlateByGUID(GUID) and (UnitIsPlayer(unitID) or UnitClassification(unitID) == "worldboss") then
			name = UnitName(unitID)
			--LibNameplate can't find a nameplate that matches that GUID. Since the unitID's a player/worldboss which have unique names, add buffs to the frame that matches that name.
			--Note, this /can/ add buffs to the wrong frame if a hunter pet has the same name as a player. This is so rare that I'll risk it.
			self:UpdatePlateByName(name)
		end
	end
end

do
	local UnitExists = UnitExists
	function core:PLAYER_TARGET_CHANGED(event, ...)
		if UnitExists("target") then
			self:CollectUnitInfo("target")
		end
	end
end

do
	local UnitIsUnit = UnitIsUnit
	local UnitExists = UnitExists
	function core:UNIT_TARGET(event, unitID) --this fires half a second after PLAYER_TARGET_CHANGED. Not good for rapid targeting.
		if not UnitIsUnit(unitID, "player") and UnitExists(unitID.."target") then
			self:CollectUnitInfo(unitID.."target")
		end
	end
end

do
	local UnitExists = UnitExists
	function core:UPDATE_MOUSEOVER_UNIT(event, ...)
		if UnitExists("mouseover") then
			self:CollectUnitInfo("mouseover")
		end
	end
end

do
	local UnitExists = UnitExists
	function core:UNIT_AURA(event, unitID)
		if UnitExists(unitID) then
			self:CollectUnitInfo(unitID)
		end
	end
end

do
	local plate
	function core:UpdatePlateByGUID(GUID)
		plate = LibNameplate:GetNameplateByGUID(GUID)
		if plate then
			if self:ShouldAddBuffs(plate) == true then
				core:AddBuffsToPlate(plate, GUID)
				return true
			end
		end
		return false
	end
end

do
	local GUID, plate
	function core:UpdatePlateByName(name)
	--This will add buff frames to a frame matching a given name.
	--This should only be used for player names because mobs/npcs can share the same name.
		GUID = nametoGUIDs[name] --We save buffs by GUID. make sure we have the name's guid in our list.
		if GUID then
			plate = LibNameplate:GetNameplateByName(name)
			if plate then
				if self:ShouldAddBuffs(plate) == true then
					core:AddBuffsToPlate(plate, GUID)
				end
				return true
			end
		end
	end
end

local chunks = {
	day		= 60 * 60 * 24,
	hour	= 60 * 60,
	minute	= 60,
}

function core:SecondsToString(seconds, maxLength)
	local msg = ""
	local maxLength = maxLength or 2
	--[[if seconds == 0 then
		msg = "0 "
	else]]
	local sDay, sHour, sMinute = 0, 0, 0

	while seconds > (chunks.day - 1) do
		sDay	= sDay + 1
		seconds	= seconds - chunks.day
	end
	while seconds > (chunks.hour - 1) do
		sHour	= sHour + 1
		seconds	= seconds - chunks.hour
	end
	while seconds > (chunks.minute - 1) do
		sMinute	= sMinute + 1
		seconds	= seconds - chunks.minute
	end

	local sLength = 0
	if sDay > 0 and sLength < maxLength then
		sLength = sLength + 1
		msg = msg..sDay.."d "
	end
	if sHour > 0 and sLength < maxLength then
		sLength = sLength + 1
		msg = msg..sHour.."h "
	end
	if sMinute > 0 and sLength < maxLength then
		sLength = sLength + 1
		msg = msg..sMinute.."m "
	end
	if seconds > 0 and sLength < maxLength then
		sLength = sLength + 1
		msg = msg..seconds.." "
	end
	--end

	msg	= string_sub(msg, 1, string_len(msg) - 1)

	--[[if string_len(msg) == 1 then
		msg = msg..".0"
	end]]
	
	return msg
end

function core:Round(num)
	return math_floor(num + 0.99)
end

--[[function core:Round(num, zeros)
	return math_floor(num * 10 ^ (zeros or 0) + 0.5 ) / 10 ^ (zeros or 0)
	return math_floor(num * 10 ^ (zeros or 0) + 0.99 ) / 10 ^ (zeros or 0)
end]]

function core:GetFullName(unitID)
	local fullname
	local name, realm = UnitName(unitID)	
	if realm and realm ~= "" then
		fullname = format("%s-%s", name, realm)	
	else
		fullname = name
	end
	return fullname
end

function core:RemoveServerName(name)
	if name ~= nil then
		return string.match(name, "(.+)-") or name
	end
end

