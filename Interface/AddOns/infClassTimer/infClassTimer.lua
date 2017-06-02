----------------------------------------------
-- infClassTimer
----------------------------------------------

local infClassTimer = CreateFrame("Frame", "infClassTimer")
infClassTimer:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
infClassTimer:RegisterEvent("PLAYER_LOGIN")

local _G = _G
local unpack = _G.unpack
local GetTime = _G.GetTime
local table_sort = _G.table.sort
local math_ceil = _G.math.ceil
local gsub = _G.gsub
local pairs = _G.pairs
local ipairs = _G.ipairs
local UnitBuff = UnitBuff
local UnitDebuff = UnitDebuff

--local bossBuffList = {}
local buffList = {}
local debuffList = {}
local alwaysBuffList = {
	--paladin
	[1022] = true, --hand of protection
	[1038] = true, --hand of salvation	
	[1044] = true, --hand of freedom
	[6940] = true, --hand of sacrifice
	[31821] = true, --devotion aura
	[114039] = true, --hand of purity
	
	--monk
	[116844] = true, --ring of peace
	[116849] = true, --life cocoon
	
	--priest
	[33206] = true, --pain suppression
	[47788] = true, --guardian spirit
	[65081] = true, --body and soul	

	--shaman
	[2825] = true, --bloodlust
	[32182] = true, --heroism
	
	--warrior
	[46947] = true, --safeguard (the damage reduction)
	[97463] = true, --rallying cry
	[114030] = true, --vigilance
	
	--druid
	[77764] = true, --stampeding roar
	[102342] = true, --ironbark

	--mage
	[80353] = true, --time warp
	
	--hunter
	[34477] = true, --misdirection
	[53480] = true, --roar of sacrifice
	[90355] = true, --ancient hysteria
	[172106] = true, --aspect of the fox
	
	--misc
	[35477] = true, --drums of speed
	[54861] = true, --nitro boosts
	[146555] = true --drums of rage
}

function infClassTimer:PLAYER_LOGIN()
	self:RegisterUnitEvent("UNIT_AURA", "player", "target")
	self:RegisterEvent("PLAYER_TARGET_CHANGED")

	local _, class = UnitClass("player")
	if class == "DEATHKNIGHT" then
		buffList = {
			[48707] = true, --anti-magic shell
			[48792] = true, --icebound fortitude
			[49039] = true, --lichborne
			[49222] = true, --bone shield
			[51271] = true, --pillar of frost
			[51460] = true, --runic corruption
			[55233] = true, --vampiric blood
			[77535] = true, --blood shield
			[81256] = true, --dancing rune weapon
			[101568] = true, --dark succor
			[115989] = true, --unholy blight
			[171049] = true --rune tap
		}
		debuffList = {
			[45524] = true, --chains of ice
			[50435] = true, --chilblains
			[55078] = true, --blood plague
			[55095] = true, --frost fever
			[77606] = true, --dark simulacrum
			[115000] = true, --remorseless winter
			[114866] = true, --soul reaper
			[116888] = true, --shroud of purgatory
			[130735] = true, --soul reaper
			[130736] = true, --soul reaper
			[155159] = true --necrotic plague
		}
	elseif class == "DRUID" then
		buffList = {
			[1850] = true, --dash
			[22812] = true, --barkskin
			[48505] = true, --starfall
			[50334] = true, --berserk (guardian)
			[61336] = true, --survival instincts
			[102543] = true, --incarnation: king of the jungle
			[102558] = true, --incarnation: son of ursoc
			[102560] = true, --incarnation: chosen of elune
			[106951] = true, --berserk (feral)
			[108291] = true, --heart of the wild (balance)
			[108292] = true, --heart of the wild (feral)
			[108293] = true, --heart of the wild (guardian)
			[108294] = true, --heart of the wild (resto)
			[112071] = true, --celestial alignment
			[117679] = true, --incarnation: tree of life
			[124974] = true, --nature's vigil
			[127538] = true, --savage roar
			[132402] = true, --savage defense
			[155835] = true, --bristling fur
			[158792] = true, --pulverize
			[174544] = true --savage roar(glyph)
		}
		debuffList = {
			[1079] = true, --rip
			[33745] = true, --lacerate
			[77758] = true, --thrash(bear)
			[106830] = true, --thrash(cat)
			[152221] = true, --stellar flare
			[155625] = true, --moonfire(cat)
			[155722] = true, --rake
			[164812] = true, --moonfire
			[164815] = true --sunfire
		}
	elseif class == "HUNTER" then
		buffList = {
			[3045] = true, --rapid fire
			[19263] = true, --deterrence
			[19574] = true, --beastial wrath
			[35079] = true, --misdirection
			[54216] = true, --master's call
			[82692] = true, --focus fire
			[82921] = true, --bombardment
			[148467] = true --deterrence
		}
		debuffList = {
			[3674] = true, --black arrow
			[118253] = true, --serpent sting
			[131894] = true --a murder of crows
		}
	elseif class == "MAGE" then
		buffList = {
			[130] = true, --slow fall
			[11426] = true, --ice barrier
			[12042] = true, --arcane power
			[12472] = true, --icy veins
			[32612] = true, --invisibility
			[45438] = true, --ice block
			[108839] = true, --ice floes
			[108843] = true, --blazing speed
			[110909] = true, --alter time
			[110960] = true, --greater invisibility
			[111264] = true, --ice ward
			[115760] = true, --glyph of ice block
			[157913] = true --evanesce
		}
		debuffList = {
			[120] = true, --cone of cold
			[11366] = true, --pyroblast
			[12654] = true, --ignite
			[31589] = true, --slow
			[41425] = true, --hypothermia
			[44457] = true, --living bomb
			[83853] = true, --combustion
			[112948] = true, --frost bomb
			[114923] = true --nether tempest
		}
	elseif class == "MONK" then
		buffList = {
			[101546] = true, --spinning crane kick
			[115308] = true, --elusive brew
			[116740] = true, --tigereye brew
			[116841] = true, --tiger's lust
			[116847] = true, --rushing jade wind
			--[120273] = true, --tiger strikes
			[122783] = true, --diffuse mage
			[124488] = true, --zen focus
			[125174] = true, --touch of karma
			[152173] = true --serenity
		}
		debuffList = {
			[116095] = true, --disable
			[130320] = true --rising sun kick
		}
	elseif class == "PALADIN" then
		buffList = {
		}
		debuffList = {
		}
	elseif class == "PRIEST" then
		buffList = {
		}
		debuffList = {
		}
	elseif class == "ROGUE" then
		buffList = {
		}
		debuffList = {
		}
	elseif class == "SHAMAN" then
		buffList = {
			[16166] = true, --elemental mastery
			[30823] = true, --shamanistic rage
			[79206] = true, --spiritwalker's grace
			[108281] = true, --ancestral guidance
			[108271] = true, --astral shift
			[114050] = true, --ascendance
			[118470] = true --unleashed fury
		}
		debuffList = {
			[8050] = true, --flame shock
		}
	elseif class == "WARLOCK" then
		buffList = {
		}
		debuffList = {
		}
	elseif class == "WARRIOR" then
		buffList = {
			[871] = true, --shield wall
			[1719] = true, --recklessness
			[12292] = true, --bloodbath
			[12975] = true, --last stand
			[46924] = true, --bladestorm
			[107574] = true, --avatar
			[118038] = true, --die by the sword
			[125565] = true, --demoralizing shout
			[132404] = true, --shield block
			[138279] = true, --victorious
			[152277] = true, --ravager
			[169667] = true, --shield charge
			[174926] = true --shield barrier
		}
		debuffList = {
			[772] = true, --rend
			[1715] = true, --hamstring
			[6343] = true, --thunder clap
			[12323] = true, --piercing howl
			[129923] = true, --sluggish
			[167105] = true --colossus smash
		}
	end
end

local debuffColors = {
	["Magic"] = {0.0, 0.44, 0.87},
	["Poison"] = {0.67, 0.83, 0.45},
	["Disease"] = {0.77, 0.12, 0.23},
	["Curse"] = {0.96, 0.55, 0.73}
}

local barPositions = {
	["player"] = {
		["y"] = 412,
		["x"] = 412
	},
	["target"] = {
		["y"] = 307,
		["x"] = 412
	},
}

local new, del
do
	local cache = setmetatable({}, {__mode="k"})
	function new()
		local t = next(cache)
		if t then
			cache[t] = nil
			return t
		else
			return {}
		end
	end
	function del(t)
		for k in pairs(t) do
			t[k] = nil
		end
		cache[t] = true
		return nil
	end
end

local OnUpdate
do
	local min = "%dm"
	local seclong = "%ds"
	local secshort = "%.1fs"
	local function tioptionsm(num)
		if num <= 10 then
			return secshort:format(num)
		elseif num <= 60 then
			return seclong:format(num)
		else
			return min:format(math_ceil(num / 60))
		end
	end
	function OnUpdate(frame)
		local currentTime = GetTime()
		local endTime = frame.endTime
		local startTime = frame.startTime
		if currentTime > endTime then
			infClassTimer:UpdateUnitBars(frame.unit)
		else
			local elapsed = (currentTime - startTime)
			frame.timetext:SetText(tioptionsm(endTime - currentTime))
			local sp = frame:GetWidth() * elapsed / (endTime - startTime)
			frame:SetValue(startTime + elapsed)
			frame.spark:SetPoint("CENTER", frame, "LEFT", sp, 0)
		end
	end
end

local bars
do
	local framefactory = {
		__index = function(t, k)
			local bar = CreateFrame("StatusBar", nil, UIParent)
			t[k] = bar
			bar:SetFrameStrata("MEDIUM")
			bar:Hide()
			bar:SetClampedToScreen(true)
			bar:SetScript("OnUpdate", OnUpdate)
			bar:SetBackdrop({
				bgFile = "Interface\\AddOns\\infClassTimer\\Statusbar\\Flat",
				tile = false
			})
			bar.text = bar:CreateFontString(nil, "OVERLAY")
			bar.timetext = bar:CreateFontString(nil, "OVERLAY")
			bar.icon = bar:CreateTexture(nil, "DIALOG")

			local spark = bar:CreateTexture(nil, "OVERLAY")
			bar.spark = spark
			spark:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
			spark:SetWidth(16)
			spark:SetBlendMode("ADD")
			spark:Show()
			infClassTimer:ApplySettings()
			return bar
		end
	}
	bars = {
		target = setmetatable({}, framefactory),
		player = setmetatable({}, framefactory),
	}
	infClassTimer.bars = bars
end

function infClassTimer:PLAYER_TARGET_CHANGED()
	self:UpdateUnitBars("target")
end

function infClassTimer:UNIT_AURA(_, unit)
	self:UpdateUnitBars(unit)
end

do
	local function sortup(a, b)
		return a.remaining > b.remaining
	end
	local function text(text, spell, apps)
		local str = text
		str = gsub(str, "%%s", spell)
		if apps and apps > 1 then
			str = gsub(str, "%%a", apps)
		else
			str = gsub(str, "%%a", "")
		end
		str = gsub(str, "%s%s+", " ")
		str = gsub(str, "%p%p+", "")
		str = gsub(str, "%s+$", "")
		return str
	end
	local tmp = {}
	local called = false -- prevent recursive calls when new bars are created.
	local whatsMine = {
		player = true,
		pet = true,
		vehicle = true,
	}
	function infClassTimer:GetBuffs(unit)
		local currentTime = GetTime()
		local i = 1
		while true do
			local name, _, texture, count, _, duration, endTime, caster, _, _, spellId = UnitBuff(unit, i)
			if not name then
				break
			end
			local isMine = whatsMine[caster]
			local onMe = unit == "player" and true or nil
			--if (duration and duration > 0) and ((buffList[enClass][spellId] and isMine) or alwaysBuffList[spellId] or bossBuffList[spellId]) and onMe then
			if (duration and duration > 0) and ((buffList[spellId] and isMine) or alwaysBuffList[spellId]) and onMe then
				local t = new()
				if isMine then
					tmp[#tmp+1] = t
				elseif alwaysBuffList[spellId] then
					t.alwaysshown = true
					tmp[#tmp+1] = t
				end
				t.name = name
				t.unit = unit
				t.remaining = endTime-currentTime
				t.texture = texture
				t.duration = duration
				t.endTime = endTime
				t.count = count
				t.isbuff = true
			end
			i = i + 1
		end
		local i = 1
		while true do
			local name, _, texture, count, debuffType, duration, endTime, caster, _, _, spellId = UnitDebuff(unit, i)
			if not name then
				break
			end
			local isMine = whatsMine[caster]
			if duration and duration > 0 and (debuffList[spellId] and isMine) then
				local t = new()
				tmp[#tmp+1] = t
				t.name = name
				t.unit = unit
				t.texture = texture
				t.duration = duration
				t.remaining = endTime-currentTime
				t.endTime = endTime
				t.count = count
				t.dispelType = debuffType
			end
			i = i + 1
		end
	end
	function infClassTimer:UpdateUnitBars(unit)
		if not bars[unit] then return end
		if called then return end
		called = true
		local currentTime = GetTime()
		for k in pairs(tmp) do
			tmp[k] = del(tmp[k])
		end
		self:GetBuffs(unit)
		table_sort(tmp, sortup)
		for k,v in ipairs(tmp) do
			local bar = bars[unit][k]
			bar.text:SetText(text("%a %s", v.name, v.count))
			bar.icon:SetTexture(v.texture)
			local startTime, endTime = v.endTime - v.duration, v.endTime
			bar.startTime = startTime
			bar.unit = unit
			bar.duration = v.duration
			bar.endTime = endTime
			bar.isbuff = v.isbuff
			bar.alwaysshown = v.alwaysshown
			bar:SetWidth(171)
			bar.timetext:SetWidth(171)
			bar.text:SetWidth(145)
			if bar.alwaysshown then
				if bar.isbuff then
					bar:SetStatusBarColor(0.58, 0.51, 0.79)
				else
					bar:SetStatusBarColor(0.78, 0.61, 0.43)
				end
			elseif bar.isbuff then
				bar:SetStatusBarColor(0.41, 0.8, 0.94)
			elseif v.dispelType then
				bar.dispelType = v.dispelType
				bar:SetStatusBarColor(unpack(debuffColors[v.dispelType]))
			else
				bar:SetStatusBarColor(1.0, 0.49, 0.04)
			end
			bar:SetMinMaxValues(startTime, endTime)
			bar:Show()
		end
		for i = #tmp+1, #bars[unit] do
			bars[unit][i]:Hide()
		end
		called = false
	end
end

do
	local function apply(unit, i, bar, pos)
		local bars = bars[unit]

		bar:ClearAllPoints()
		bar:SetStatusBarTexture("Interface\\AddOns\\infClassTimer\\Statusbar\\Flat")
		bar:SetHeight(16)
		bar:SetScale(1.11)
		bar:SetWidth(171)
		bar.timetext:SetWidth(171)
		bar.text:SetWidth(145)
		bar.spark:SetHeight(41)
		if bar.alwaysshown then
			if bar.isbuff then
				bar:SetStatusBarColor(0.58, 0.51, 0.79)
			else
				bar:SetStatusBarColor(0.78, 0.61, 0.43)
			end
		elseif bar.isbuff then
			bar:SetStatusBarColor(0.41, 0.8, 0.94)
		elseif bar.dispelType then
			bar:SetStatusBarColor(unpack(debuffColors[bar.dispelType]))
		else
			bar:SetStatusBarColor(1.0, 0.49, 0.04)
		end				
		bar.spark:Show()
		bar:SetBackdropColor(0.0, 0.0, 0.0, 0.39)
		if i == 1 then
			bar:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", pos.x, pos.y)
		else
			bar:SetPoint("BOTTOMLEFT", bars[i-1], "TOPLEFT", 0, 0)
		end

		local timetext = bar.timetext
		timetext:Show()
		timetext:ClearAllPoints()
		timetext:SetFont(STANDARD_TEXT_FONT, 10.5)
		timetext:SetShadowColor(0, 0, 0, 1)
		timetext:SetShadowOffset(0.8, -0.8)
		timetext:SetTextColor(1, 1, 1)
		timetext:SetNonSpaceWrap(false)
		timetext:ClearAllPoints()
		timetext:SetPoint("LEFT", bar, "LEFT", -2, 0)
		timetext:SetJustifyH("RIGHT")

		local text = bar.text
		text:SetFont(STANDARD_TEXT_FONT, 10.5)
		text:Show()
		text:ClearAllPoints()
		text:SetShadowColor(0, 0, 0, 1)
		text:SetShadowOffset(0.8, -0.8)
		text:SetTextColor(1, 1, 1)
		text:SetNonSpaceWrap(false)
		text:ClearAllPoints()
		text:SetHeight(16)
		text:SetPoint("LEFT", bar, "LEFT", 2, 0)
		text:SetJustifyH("LEFT")

		local icon = bar.icon
		icon:Show()
		icon:SetWidth(16)
		icon:SetHeight(16)
		icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
		icon:ClearAllPoints()
		icon:SetPoint("RIGHT", bar, "LEFT", 0, 0)
	end
	function infClassTimer:ApplySettings()
		for n, k in pairs(bars) do
			for u, v in pairs(k) do
				apply(n, u, v, barPositions[n])
			end
		end
	end
end

