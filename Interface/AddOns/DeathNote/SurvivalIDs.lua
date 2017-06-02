DeathNote.SurvivalIDs = {
  [48707] = { class = "DEATHKNIGHT", priority = 1 },	-- Anti-Magic Shell
	[50461] = { class = "DEATHKNIGHT", priority = 2  },	-- Anti-Magic Zone
	[48792] = { class = "DEATHKNIGHT", priority = 1  },	-- Icebound Fortitude
	[55233] = { class = "DEATHKNIGHT", priority = 1  },	-- Vampiric Blood
	[49028] = { class = "DEATHKNIGHT", priority = 1  }, -- 춤추는 룬 무기
	[194679] = { class = "DEATHKNIGHT", priority = 1  }, -- 룬 전환
	[207319] = { class = "DEATHKNIGHT", priority = 1  }, -- 시체 방패

	[22812] =  { class = "DRUID", priority = 2 },		-- Barkskin
	[22842] =  { class = "DRUID", priority = 2 },		-- Frenzied Regeneration
	[61336] =  { class = "DRUID", priority = 2 },		-- Survival Instincts
	[200851] = { class = "DRUID", priority = 2 },   -- 잠자는 자의 분노
	[33891] =  { class = "DRUID", priority = 2 },    -- 화신: 생명의 나무
	[102558] = { class = "DRUID", priority = 2 },   -- 화신: 우르속의 수호자
	[102342] = { class = "DRUID", priority = 1 },   -- 무쇠껍질

	[45438] = { class = "MAGE", priority = 1 },			-- Ice Block

	[86659] = { class = "PALADIN", priority = 2 },		-- Guardian of Ancient Kings
	[31850] = { class = "PALADIN", priority = 2 },		-- Ardent Defender
	[498] =   { class = "PALADIN", priority = 2 },		-- Divine Protection
	[642] =   { class = "PALADIN", priority = 2 },		-- Divine Shield
	[1022] =  { class = "PALADIN", priority = 1 },		-- Hand of Protection
	[6940] =  { class = "PALADIN", priority = 1 },		-- Hand of Sacrifice
	[205191] ={ class = "PALADIN", priority = 2 },    -- 눈에는 눈
	[204150] ={ class = "PALADIN", priority = 3 },    -- 빛의 아이기스
	[204018] ={ class = "PALADIN", priority = 1 },    -- 주문 수호의 축복

	[47585] = { class = "PRIEST", priority = 2 },		-- Dispersion
	[33206] = { class = "PRIEST", priority = 1 },		-- Pain Suppression
	[47788] = { class = "PRIEST", priority = 1 },		-- Guardian Spirit
	[81782] = { class = "PRIEST", priority = 3 },		-- Power Word: Barrier

	[31224] = { class = "ROGUE", priority = 1 },		-- Cloak of Shadows
	[1966] =  { class = "ROGUE", priority = 1 },		-- Feint
	[5277] =  { class = "ROGUE", priority = 1 },    -- 회피
	[199754] ={ class = "ROGUE", priority = 1 },    -- 반격

	[108271] = { class = "SHAMAN", priority = 1 },		-- 영혼 이동
	[98008] =  { class = "SHAMAN", priority = 2 },    -- 정신의 고리 토템

	[12975] = { class = "WARRIOR", priority = 2 },		-- Last Stand
  [2565] =  { class = "WARRIOR", priority = 2 },		-- Shield Block
	[871] =   { class = "WARRIOR", priority = 2 },		-- Shield Wall
	[97463] = { class = "WARRIOR", priority = 3 },		-- Rallying Cry
	[184364] ={ class = "WARRIOR", priority = 2 },    -- 격노의 재생력
	[213915] ={ class = "WARRIOR", priority = 3 },    -- 대규모 주문 반사
	[197690] ={ class = "WARRIOR", priority = 2 },    -- 방어 태세
	[23920] = { class = "WARRIOR", priority = 2 },    -- 주문 반사
	[118038] ={ class = "WARRIOR", priority = 2 },    -- 투사의 혼
	[122973] ={ class = "WARRIOR", priority = 1 },    -- 강력한 수호

	[186265] ={ class = "HUNTER", priority = 1 },     -- 거북의 상

	[104773] ={ class = "WARLOCK", priority = 1 },    -- 영원한 결의

	[115203] ={ class = "MONK", priority = 2 },       -- 강화주
	[116849] ={ class = "MONK", priority = 1 },       -- 기의 고치
	[122783] ={ class = "MONK", priority = 2 },       -- 마법 해소
	[115176] ={ class = "MONK", priority = 2 },       -- 명상
	[122278] ={ class = "MONK", priority = 2 },       -- 해악 감퇴

	[218256] ={ class = "DEMONHUNTER", priority = 1 },-- 강화 수호물
	[196555] ={ class = "DEMONHUNTER", priority = 1 },-- 황천걸음
	[198589] ={ class = "DEMONHUNTER", priority = 1 },-- 흐릿해지기
	[196718] ={ class = "DEMONHUNTER", priority = 2 },-- 어둠
	[191427] ={ class = "DEMONHUNTER", priority = 1 },-- 탈태(파멸)
	[187827] ={ class = "DEMONHUNTER", priority = 1 },-- 탈태(복수)


}

do
	DeathNote.SurvivalColors = {}

	for class, color in pairs(RAID_CLASS_COLORS) do
		local class_color = RAID_CLASS_COLORS[class]
		local color = { r = class_color.r, g  = class_color.g, b = class_color.b, a = 0.2 }
		DeathNote.SurvivalColors[class] = color
	end
end