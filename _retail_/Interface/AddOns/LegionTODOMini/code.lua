-- This file is loaded from "ltdm.toc"

-- This is a comment, you can replace it with the LUA code that you wish to make into an Addon!
local _frame
local _chars = {}
local _labels = {}
for i=1, 20 do
	_labels[i] = {}
end

local _options = {}
_options["display_level"] = 110

function mysplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

local function log(str)
	--print(str)
end

local function getCurrentTimeString()
	--return string.format("%s %s", time("%x"), time("%X"))
	return string.format("%s", time())
end

local function getCharClass()
	local playerClass, englishClass = UnitClass("player");
	return englishClass
end

local function getCurrentSpec()
	id, name, description, icon, background, role, class = GetSpecializationInfoByID(0)
	log(icon)
	return GetSpecialization()
end

local function getCharName()
	name = UnitName("player")
	realm = GetRealmName()
	return string.format("%s - %s", name, realm)
end

local function getCharLevel()
	return UnitLevel("player")
end

local function getCharGS()
	overall, equipped = GetAverageItemLevel()
	return string.format("%.1f/%.1f", equipped, overall)
end

local function getCoinsInfo()
	name, CurrentAmount, texture, earnedThisWeek, weeklyMax, totalMax, isDiscovered = GetCurrencyInfo(1273)
	l = string.format("%s %s %s %s %s %s", name, CurrentAmount, texture, earnedThisWeek, weeklyMax, totalMax)
	log(l)
	return string.format("%i/%i", CurrentAmount, totalMax)
end

local function getArtifactInfo()
	itemID, altItemID, name, iconFileDataID, powerAvailable, ranksPurchased, ranksKnown, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop = C_ArtifactUI.GetArtifactInfo()
	log("ap")
	log(ranksPurchased)
	return ranksPurchased	
end

local function getArtResearchInfo()
	--
	local followerTypeID = GetFollowerTypeIDFromSpell();
	local garrTypeID = GarrisonFollowerOptions[followerTypeID].garrisonType;
	buildings = C_Garrison.GetBuildings(garrTypeID)
	--log(#buildings)
	for i = 1, #buildings do
		buildingID = buildings[i].buildingID
		local name, texture, shipmentCapacity, shipmentsReady, shipmentsTotal, creationTime, duration, timeleftString, itemName, itemIcon, itemQuality, itemID = C_Garrison.GetLandingPageShipmentInfo(buildingID);
		--log(name )
	end
	--log("end")
	return "ok"
end

--local _instances = { 7787, 7812, 7855, 7805, 8079, 7996, 7673, 7672, 7546, 8040}
--_instances_names = {"Казематы Стражей", "Утроба душ", "Катакомбы Сурамара", "Крепость Черной Ладьи", "Квартал Звезд", "Штурм Аметистовой крепости", "Чаща Темного Сердца", "Чертоги Доблести", "Логово Нелтариона", "Око Азшары", "Возвращение в Каражан"}
--_raids_names = {"Изумрудный Кошмар", "Испытание доблести", "Цитадель Ночи"}

local function getInstanceIndex(name)
	for i=1, #_instances_names do
		if name==_instances_names[i] then
			return i
		end
	end
	return nil
end

local function getRaidIndex(name)
	for i=1, #_raids_names do
		if name==_raids_names[i] then
			return i
		end
	end
	return nil
end


local function getInstancesInfo2()
	local info = {"-/-", "-/-", "-/-", "-/-", "-/-", "-/-", "-/-", "-/-", "-/-", "-/-", "-/-"}
	local count = GetNumSavedInstances()
	for i=1, count do
		name, id, reset, difficulty, locked, extended, instanceIDMostSig, isRaid, maxPlayers, difficultyName, numEncounters, encounterProgress = GetSavedInstanceInfo(i)
		local killed = 0
		--log(difficulty)
		
		--dungeons
		if reset ~= 0 and difficulty==23 and isRaid==false then -- 23 mythin dificult
			for ii=1, numEncounters do
				bossName, texture, isKilled, unknown4 = GetSavedInstanceEncounterInfo(i, ii)
				--log(isKilled)
				if isKilled==true then
					killed = killed + 1
				end
			end
			--log(string.format("%s %d / %d - %d", name, killed, numEncounters, reset))
			index = getInstanceIndex(name)
			info[index] = string.format("%d/%d", killed, numEncounters)
		else
			index = getInstanceIndex(name)
			if index~=nil then
				if info[index]=="-/-" then 
					info[index] = string.format("%d/%d", 0, numEncounters)
				end
			end
		end
	end
	return info
end

local function getKilledCount(index, numEncounters)
	killed = 0
	for i=1, numEncounters do 
		bossName, texture, isKilled, unknown4 = GetSavedInstanceEncounterInfo(index, i)
		if isKilled==true then
			log("yes")
			killed = killed+1
		end
	end
	return killed
end

local function getRaidInfo()
	local info = {"-/-", "-/-", "-/-"}
	local raids = {}
	for i=1, 3 do
		raids[i] = {"-", "-", "-"}
	end
	local encs = {"-", "-", "-"}
	local count = GetNumSavedInstances()
	for i=1, count do
		name, id, reset, difficulty, locked, extended, instanceIDMostSig, isRaid, maxPlayers, difficultyName, numEncounters, encounterProgress = GetSavedInstanceInfo(i)
		if reset~=0 and isRaid==True then
			local killed = 0
			for ii=1, numEncounters do
				bossName, texture, isKilled, unknown4 = GetSavedInstanceEncounterInfo(i, ii)
				--log(texture)
				--log(isKilled)
				if isKilled==true then
					killed = killed + 1
				end
			end
		elseif isRaid==true and reset~=0 then
			index = getRaidIndex(name)
			if index~=nil then
				encs[index] = numEncounters
				if difficulty==14 then -- normal
					log("normal")
					raids[index][1] = getKilledCount(i, numEncounters)
					log(raids[index][1])
				elseif difficulty==15 then --heroic
					log("heroic")
					raids[index][2] = getKilledCount(i, numEncounters)
				else -- mythic
					log("mythic")
					raids[index][3] = getKilledCount(i, numEncounters)
				end
				--index = getRaidIndex(name)
				--log(name)
				--log(difficulty)
			end
		end
	end
	info[1] = string.format("%s/%s/%s/%s", raids[1][1], raids[1][2], raids[1][3], encs[1])
	info[2] = string.format("%s/%s/%s/%s", raids[2][1], raids[2][2], raids[2][3], encs[2])
	info[3] = string.format("%s/%s/%s/%s", raids[3][1], raids[3][2], raids[3][3], encs[3])
	return info
end

local function GetBountyInfo()
	local bounties
	bounties, var2, var3 = GetQuestBountyInfoForMapID(0, 0)
	log(#bounties)
	for bountyIndex, bounty in ipairs(bounties) do
		log(bountyIndex)
	end
end


local function showui()
	minmapicon_create()
	local frame = CreateFrame("Frame", "MyFrame", UIParent)
	frame:SetFrameStrata("HIGH")
	frame:Hide()
	frame:SetSize(1000, 600)
	frame:SetPoint("CENTER")
	frame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
                                            edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
                                            tile = true, tileSize = 16, edgeSize = 16, 
                                            insets = { left = 4, right = 4, top = 4, bottom = 4 }})
	frame:SetBackdropColor(0,0,0,1);

	local okButton = CreateFrame("Button", "Text for okButton", frame, "UIPanelButtonTemplate")
	okButton:SetPoint("CENTER", 0, -185)
	okButton:SetWidth(100)
	okButton:SetHeight(20)
	okButton:SetText("OK")
	okButton:SetScript("OnClick", okButtonOnClick)


	return frame
end

function okButtonOnClick(self, button, ...)
	_frame:Hide()
	--log("click")
end

function minmapicon_create()
	local mmicon = CreateFrame("Button", "ltdm.addon.minimapicon", Minimap)
	mmicon:SetFrameStrata("MEDIUM")
	mmicon:ClearAllPoints()
	mmicon:SetPoint("CENTER", Minimap, "CENTER", -76, -22)
	mmicon:SetSize(31, 31)
	mmicon:SetFrameLevel(8)
	mmicon:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

	overlay = mmicon:CreateTexture(nil, "OVERLAY")
	overlay:SetSize(53, 53)
	overlay:SetTexture(136430)
	overlay:SetPoint("TOPLEFT")

	mmicon.bg = mmicon:CreateTexture(nil, "BACKGROUND")
	mmicon.bg:SetTexture("Interface\\Addons\\LegionTODOMini\\media\\icon.tga")
	mmicon.bg:SetSize(20, 20)
	mmicon.bg:SetPoint("CENTER", 0, 0)

	mmicon.border = mmicon:CreateTexture(nil, "ARTWORK")
	mmicon.border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	mmicon.border:SetTexCoord(0,0.6,0,0.6)
	mmicon.border:SetAllPoints()

	mmicon:RegisterForClicks("anyUp")

	mmicon:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
		GameTooltip:AddLine("Legion TODO mini")
		GameTooltip:AddLine("\nClick to open addon window.")
		GameTooltip:Show()
		end)
	mmicon:SetScript("OnLeave", function(self)
		GameTooltip:Hide()
	end)
	mmicon:SetScript("OnClick", function()
		if _frame.update~=nil then
			_frame.update()
			_frame:Show()
		end

	end)
end


local function dungeonProgressColor(text)
	p = mysplit(text, "/")
	if p[2]=="8" then
		p[2] = "3"
	end
	if p[1]==p[2] then
		if p[1]=="-" then 
			return "poor"
		else
			return "rare"
		end
	else
		return "uncommon"
	end

end

local function raidProgressColor(text)
	p = mysplit(text, "/")
	if p[4]=="-" then
		return "poor"
	end
	if p[3]==p[4] then
		return "legendary"
	elseif p[2]==p[4] then
		return "epic"
	elseif p[1]==p[4] then
		return "rare"
	else
		return "uncommon"
	end
end

local function ilvlColor(text)
	p = mysplit(text, "/")
	ilvl = tonumber(p[1])
	if ilvl<800.0 then
		return "poor"
	elseif ilvl<830 and ilvl>=800 then
		return "uncommon"
	elseif ilvl<845 and ilvl>=830 then
		return "rare"
	elseif ilvl<880 and ilvl>=845 then
		return "epic"
	elseif ilvl>880 then
		return "legendary"
	end

end

local _colors = {
	{["name"]="white", 		["r"]=1, 		["g"]=1, 		["b"]=1},
	{["name"]="red", 		["r"]=1, 		["g"]=0, 		["b"]=0},
	{["name"]="green", 		["r"]=0, 		["g"]=1, 		["b"]=0},

	{["name"]="PALADIN", 	["r"]=0.96, 		["g"]=0.55, 		["b"]=0.73},
	{["name"]="DRUID", 		["r"]=1.00, 		["g"]=0.49, 		["b"]=0.04},
	{["name"]="SHAMAN", 	["r"]=0.00, 		["g"]=0.44, 		["b"]=0.87},
	{["name"]="MAGE", 		["r"]=0.41, 		["g"]=0.80, 		["b"]=0.94},
	{["name"]="ROGUE", 		["r"]=1.00, 		["g"]=0.96, 		["b"]=0.41},
	{["name"]="HUNTER", 	["r"]=0.67, 		["g"]=0.83, 		["b"]=0.45},
	{["name"]="DEATHKNIGHT", 		["r"]=0.77, 		["g"]=0.12, 		["b"]=0.23},
	{["name"]="DEMONHUNTER", 		["r"]=0.64, 		["g"]=0.19, 		["b"]=0.79},
	{["name"]="WARLOCK",	["r"]=0.58, 		["g"]=0.51, 		["b"]=0.79},
	{["name"]="WARRIOR",		["r"]=0.78, 		["g"]=0.61, 		["b"]=0.43},
	{["name"]="PRIEST",		["r"]=1.00, 		["g"]=1.00, 		["b"]=1.00},
	{["name"]="MONK",		["r"]=0.33, 		["g"]=0.54, 		["b"]=0.52},
	
}

local _quality_names = {
	"poor", "common", "uncommon", "rare", "epic", "legendary", "artifact", "heirloom", "wow_token"
}

local function colorByName(name)
	for i=1, #_quality_names do
		if name==_quality_names[i] then
			--log(name)
			r, g, b, hex = GetItemQualityColor(i-1)
			local color = {}
			color["name"] = name; color["r"] = r; color["g"] = g; color["b"] = b
			return color
		end
	end
	for i=1, #_colors do
		if _colors[i]["name"]==name then
			return _colors[i]
		end
	end
end

local function _setColorText(frame, colorname)
	c = colorByName(colorname)
	if c~=nil then
		frame:SetTextColor(c["r"], c["g"], c["b"], 1)
	else
		r, g, b, hex = GetItemQualityColor(3)
		frame:SetTextColor(r, g, b, 1)
	end
end

local function showTextLabel(frame, row, col, text, color)
	local label = nil
	if _labels[row+1][col+1]==nil then
		label = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	else
		label = _labels[row+1][col+1]
	end
	x = row * 150 + 20
	y = 200 - ((1+col) * 16)

	if row>0 then
		x = x + 50
	end

	label:SetPoint("LEFT", x, y)
	label:SetSize(140, 20)
	if _localization[4]=="1" then
		label:SetFont("Interface\\Addons\\LegionTODOMini\\media\\myriad.ttf", 16)
	end
	label:SetJustifyH("LEFT")
	--label:SetJustifyV("CENTER")
	label:SetText(text)
	_setColorText(label, color)
	_labels[row+1][col+1] = label

end

local function main()
	if check_locale() then
		local frame = showui()
		C_Garrison.RequestLandingPageShipmentInfo();
		frame:RegisterEvent("ADDON_LOADED")
		frame:RegisterEvent("GARRISON_LANDINGPAGE_SHIPMENTS")
		frame:RegisterEvent("GARRISON_SHIPMENT_RECEIVED")
		frame:RegisterEvent("PLAYER_LOGOUT")
		frame:RegisterEvent("ARTIFACT_UPDATE")
		frame:SetScript("OnEvent", frame_OnEvent)
		_frame = frame
	end
end

local function test_grid()
	for i = 1, 10 do 
		showTextLabel(_frame, 0, i, getCharName(), "white")
		showTextLabel(_frame, 1, i, getCharName(), "white")
		showTextLabel(_frame, 2, i, getCharName(), "white")
		showTextLabel(_frame, 3, i, getCharName(), "white")
		showTextLabel(_frame, 4, i, getCharName(), "white")
		showTextLabel(_frame, 5, i, getCharName(), "white")
	end
end

local function print_chars(char)
	for i=1, #_chars do
		print(_chars[i]["name"])
	end
end

local function update_ui()

	local disp_chars = {}

	for i=1, #_chars do
		if _chars[i]["level"] >= _options["display_level"] then
			disp_chars[#disp_chars+1] = _chars[i]
		end
	end
	_frame:SetSize((#disp_chars+1)*180+20, 420)
	showTextLabel(_frame, 0, 0, "Legion TODO mini", 'wow_token')
	showTextLabel(_frame, 0, 1, _localization[1], 'white')
	showTextLabel(_frame, 0, 2, _localization[2], 'white')
	showTextLabel(_frame, 0, 3, _localization[3], 'white')
	showTextLabel(_frame, 0, 23, "0.53-beta", 'poor')
	--showTextLabel(_frame, 0, 10, "Last update", 'white')
	for i=1, #_raids_names do
		showTextLabel(_frame, 0, 16+i, _raids_names[i], 'white')
	end

	for i=1, #_instances_names do
		showTextLabel(_frame, 0, 4+i, _instances_names[i], 'white')
	end


	--test_grid()
	for i=1, #disp_chars do
		showTextLabel(_frame, i, 0, disp_chars[i]["name"], disp_chars[i]["class"])
		showTextLabel(_frame, i, 1, disp_chars[i]["ilvl"], ilvlColor(disp_chars[i]["ilvl"]))
		
		for ii=1, 4 do
			if disp_chars[i]["art"][ii] == nil then
				disp_chars[i]["art"][ii]="-"
			end
		end
		art = string.format("%s/%s/%s/%s", disp_chars[i]["art"][1], disp_chars[i]["art"][2], disp_chars[i]["art"][3], disp_chars[i]["art"][4])

		showTextLabel(_frame, i, 2, art, disp_chars[i]["class"])
		showTextLabel(_frame, i, 3, disp_chars[i]["coins"], 'white')
		--showTextLabel(_frame, i, 10, _chars[i]["update_time"], 'white')
		for ii=1, #disp_chars[i]["instance_info"] do
			showTextLabel(_frame, i, 4+ii, disp_chars[i]["instance_info"][ii], dungeonProgressColor(disp_chars[i]["instance_info"][ii]))
		end
		for ii=1, #disp_chars[i]["raid_info"] do
			showTextLabel(_frame, i, 16+ii, disp_chars[i]["raid_info"][ii], raidProgressColor(disp_chars[i]["raid_info"][ii]))
		end
	end
end


local function getCharIndex(name)
	-- return index new char if not found
	for i = 1, #_chars do
		if _chars[i]["name"]==name then
			return i
		end
	end
	return #_chars+1
end

local function getChars()
	return _chars
end

local function updateChar(char)
	index = getCharIndex(char["name"])
	_chars[index] = char
end



local function update()
	_frame.update = update
	local unit = {}
	unit["class"] = getCharClass()
	unit["level"] = getCharLevel()
	log(unit["level"])
	unit["name"] = getCharName()
	unit["ilvl"] = getCharGS()
	unit["coins"] = getCoinsInfo()
	unit["update_time"] = getCurrentTimeString()
	unit["instance_info"] = getInstancesInfo2()
	unit["raid_info"] = getRaidInfo()
	if _chars[getCharIndex(unit["name"])]~=nil then
		unit["art"] = _chars[getCharIndex(unit["name"])]["art"]
	end
	if unit["art"]==nil then
		unit["art"] = {}
	end
	artinfo = getArtifactInfo()
	if artinfo~=nil then
		unit["art"][getCurrentSpec()] = artinfo
	end

	--GetBountyInfo()


	updateChar(unit)
	--unit["name"] = "test"
	--updateChar(unit)
	--unit["name"] = "test2"
	--updateChar(unit)

	update_ui()
end

function frame_OnEvent(self, event, arg1)
	if arg1=="LegionTODOMini" then
		log("hello")
		_chars = _charsdb
		 if _chars==nil then
		 	_chars = {}
		 end
		update()
	elseif event=="GARRISON_LANDINGPAGE_SHIPMENTS" or event=="GARRISON_SHIPMENT_RECEIVED" or event=="ARTIFACT_UPDATE" then
		log(event)
		update()
	elseif event=="PLAYER_LOGOUT" then
		_charsdb = _chars
	end
end

main()
