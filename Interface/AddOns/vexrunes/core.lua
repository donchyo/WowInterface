vexrunes = {}
vexrunes.show = false
vexrunes.infight = false
vexrunes.maxwidth=0
vexrunes.AceConfigDialog = LibStub("AceConfigDialog-3.0", true)
vexrunes.AceConfig = LibStub("AceConfig-3.0", true)
vexrunes.AceConsole= LibStub("AceConsole-3.0", true)
vexrunes.LSM = LibStub("LibSharedMedia-3.0", true)
vexrunes.LSMWidgets = LibStub("AceGUI-3.0-SharedMediaWidgets", true)
vexrunes.started = false
vexrunes.inVehicle = false
vexrunes.targetSet = false
vexrunes.runeRdy = {false, false, false, false, false, false}
vexrunes.inPetBattleFight = false
vexrunes.runeCDs = {0, 0, 0, 0, 0, 0}
vexrunes.runeOrder = {1, 2, 3, 4, 5, 6}
vexrunes.frame = {}

SLASH_vexrunes1 = "/vexrunes"
SLASH_vexrunes2 = "/vexr"
function SlashCmdList.vexrunes(msg, editbox)
	if vexrunes.started then
		if 	msg == "options" or msg == "option" or msg == "config" or msg == "configs" or msg == "" then
			InterfaceOptionsFrame_OpenToCategory(vexrunes.options.main)
		elseif 	msg == "test" then
			-- vexdebugs.print("vexrunes.targetSet", vexrunes.targetSet)
		elseif 	msg == "defaults" then
			vexrunes_loaddefaults(true)
			print("|CFFFF7D0AVex Runes|r - defaults loaded")
		elseif msg == "enable" then 
			if vexrunes_parameters["enable"] then
				vexrunes_parameters["enable"] = false
				print("|CFFFF7D0AVex Runes|r - Addon disabled")
			else
				vexrunes_parameters["enable"] = true
				print("|CFFFF7D0AVex Runes|r - Addon enabled")
			end
		else print("|CFFFF7D0AVex Runes|r - cmd not found")
			print ("|CFFFF7D0AVex Runes|r cmd list - /vexrunes and /vexr can be used")
			print ("|CFFFF7D0A/vexrunes|r option/options/config/configs - opens the option frame")
			print ("|CFFFF7D0A/vexrunes|r defaults - resets the addon to defaults")
			print ("|CFFFF7D0A/vexrunes|r enable - enable/disable the addon")
		end
	end
end

function vexrunes_onEvent(self, event, arg1, ...)
	if select(2, UnitClass("player")) == "DEATHKNIGHT" then
		if event == "PLAYER_LOGIN" then
			vexrunes.initialize(false)
			vexrunes.started=true
		elseif event == "PLAYER_TARGET_CHANGED" and vexrunes.started then
			vexrunes.targetSet= UnitName("target")~=nil
			vexrunes.showEnergybars()
		elseif event == "LOADING_SCREEN_DISABLED" and vexrunes.started then
			vexrunes.changeRuneType()
		elseif event == "PLAYER_ENTERING_WORLD" and vexrunes.started then
			vexrunes.infight=false
			vexrunes.showEnergybars()
		elseif event == "PLAYER_REGEN_DISABLED" and vexrunes.started then
			vexrunes.infight=true
			vexrunes.showEnergybars()
		elseif event == "PLAYER_REGEN_ENABLED" and vexrunes.started then
			vexrunes.infight = false
			vexrunes.showEnergybars()
		elseif (event == "RUNE_TYPE_UPDATE" or event == "ACTIVE_TALENT_GROUP_CHANGED") and vexrunes.started then
			vexrunes.changeRuneType()
		elseif event == "UNIT_ENTERED_VEHICLE" or event == "UNIT_EXITED_VEHICLE" then
			vexrunes.setGlobalInVehicle(arg1, event == "UNIT_ENTERED_VEHICLE")
			if vexrunes.started then
				vexrunes.showEnergybars()
			end
		elseif event == "PET_BATTLE_OPENING_START" and vexrunes.started then
			vexrunes.inPetBattleFight = true
			vexrunes.showEnergybars()
		elseif event == "PET_BATTLE_CLOSE" and vexrunes.started then
			vexrunes.inPetBattleFight = false
			vexrunes.showEnergybars()
		end
	end
end

function vexrunes_onUpdate()
	if vexrunes.started then
		local changedRune = false
		if vexrunes_parameters["enable"] then
			changedRune = vexrunes.setRunes()
		end
		
		vexrunes.setRuneTexts()
		
		if vexrunes_parameters["layout"]["runes"]["sortByCD"] and changedRune then
			vexrunes.sortRunes()
		end
	end
end

function vexrunes.initialize(refresh)
	vexrunes_loaddefaults()
	
	vexrunes.runes = {1, 1, 1, 1, 1, 1}
	
	if vexrunes.frame.background ~= nil then 	for i in ipairs(vexrunes.frame.background) do	vexrunes.frame.background[i]:Hide()		end			end
	vexrunes.frame.background = {}
	
	
	if vexrunes.frame.rune ~= nil then 			for i in ipairs(vexrunes.frame.rune) do			vexrunes.frame.rune[i]:Hide()			end			end
	vexrunes.frame.rune = {}
	
	
	if vexrunes.frame.blink ~= nil then 		for i in ipairs(vexrunes.frame.blink) do		vexrunes.frame.blink[i]:Hide()			end			end
	vexrunes.frame.blink = {}
	
	
	if vexrunes.frame.text ~= nil then 			for i in ipairs(vexrunes.frame.text) do			vexrunes.frame.text[i]:Hide()			end			end
	vexrunes.frame.text = {}
	
	
	if vexrunes.frame.fillEffect ~= nil then	for i in ipairs(vexrunes.frame.fillEffect) do	vexrunes.frame.fillEffect[i]:Hide()		end			end
	vexrunes.frame.fillEffect = {}
	
	
	if vexrunes.textfields ~= nil then 			for i in ipairs(vexrunes.textfields) do			vexrunes.textfields[i]:Hide()			end			end
	vexrunes.textfields = {}
	
	vexrunes.blinkAniGrp = {}
	vexrunes.blinkAni = {}

	for i=1,6 do
		vexrunes.frame.background[i] = CreateFrame("Frame", nil, vexrunes_bar_main)
		vexrunes.frame.rune[i] = CreateFrame("Frame", nil, vexrunes.frame.background[i])
		vexrunes.frame.text[i] = CreateFrame("Frame", nil, vexrunes.frame.background[i])
		vexrunes.frame.fillEffect[i] = CreateFrame("Frame", nil, vexrunes.frame.rune[i])
		vexrunes.frame.blink[i] = CreateFrame("Frame", nil, vexrunes.frame.text[i])
		vexrunes.textfields[i] = vexrunes.frame.text[i]:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	end
	
	vexrunes.setGlobalMaxWidth()
	vexrunes.setGlobalMaxHeight()
	vexrunes.setMainFrame()
	vexrunes.configureFrames()
	vexrunes.configurRuneFrameBGs()
	vexrunes.configurFillEffectFrames()
	vexrunes.showEnergybars()
	
	if not(refresh) then
		vexrunes.options = {}
		vexrunes.options.main = vexrunes.AceConfigDialog:AddToBlizOptions("Vex Runes", "Vex Runes")
		vexrunes.options.general = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Design", "Design", "Vex Runes")
		vexrunes.options.positions = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Rune Positions", "Positions", "Vex Runes")
		vexrunes.options.cds = vexrunes.AceConfigDialog:AddToBlizOptions("VexR CD Text", "Textfields", "Vex Runes")
		vexrunes.options.show = vexrunes.AceConfigDialog:AddToBlizOptions("VexR Show/Enable", "Show Conditions", "Vex Runes")
	end
	
	vexrunes.AceConfig:RegisterOptionsTable("Vex Runes", vexrunes.panel_main(), {})
	vexrunes.AceConfig:RegisterOptionsTable("VexR Design", vexrunes.panel_general(), {})
	vexrunes.AceConfig:RegisterOptionsTable("VexR Rune Positions", vexrunes.panel_positions(), {})
	vexrunes.AceConfig:RegisterOptionsTable("VexR CD Text", vexrunes.panel_cds(), {})
	vexrunes.AceConfig:RegisterOptionsTable("VexR Show/Enable", vexrunes.panel_show(), {})
end

function vexrunes.setGlobalInVehicle(player, entered)
	if player == "player" then
		if entered then
			vexrunes.inVehicle = true
		else
			vexrunes.inVehicle = false
		end
	end
end

function vexrunes.setRuneTexts()
	for i=1,6 do
		local starttime, spellduration, runeReady = GetRuneCooldown(i)
		if runeReady then
			vexrunes.runeCDs[i] = 0
			
			if vexrunes_parameters["layout"]["text"]["show"] then
				vexrunes.textfields[i]:SetText("")
			end
		else
			local currenttime = GetTime()
			local durationleft = starttime+spellduration-currenttime
			local durationleft_f = ""
			if durationleft > 0 then	durationleft_f = string.sub(durationleft, 1,3) end
			
			vexrunes.runeCDs[i] = durationleft
			
			if vexrunes_parameters["layout"]["text"]["show"] then
				vexrunes.textfields[i]:SetText(durationleft_f)
			end
		end
	end
end

function vexrunes.sortRunes()
	local CurrentRuneOrder = vexrunes.getRuneOrder()
	if vexrunes.runeOrder ~= CurrentRuneOrder then
		for i=1, 6 do
			vexrunes.configurRuneFramePosition(CurrentRuneOrder[i], i)
			vexrunes.configurTextfieldPosition(CurrentRuneOrder[i], i)
		end
		vexrunes.runeOrder = CurrentRuneOrder
	end
end

function vexrunes.getRuneOrder()
	local returnvalue = {0, 0, 0, 0, 0, 0}
	local array = {}
	
	for i=1, 6 do
		array[i] = {vexrunes.runeCDs[i], i}
	end
	
	if vexrunes_parameters["layout"]["runes"]["sortByCDInvert"] then
		table.sort(array, function(a,b) return a[1]>b[1] end)
	else
		table.sort(array, function(a,b) return a[1]<b[1] end)
	end
	
	for i=1, 6 do
		returnvalue[i] = array[i][2]
	end
	
	return returnvalue
end

function vexrunes.setGlobalMaxWidth()
	vexrunes.maxwidth = vexrunes_parameters["layout"]["runes"]["size"]["width"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2)
end

function vexrunes.setGlobalMaxHeight()
	vexrunes.maxheight = vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2)
end

function vexrunes.changeRuneType()
	for i=1, 6 do
		vexrunes.configurRuneFrameBG(i)
		vexrunes.configurBackgroundFrame(i)
	end
end

function vexrunes.setRunes()
	local changedRune = false
	
	for i=1, 6 do
		local starttime, duration, runeReady = GetRuneCooldown(i)
		local runeRdy_prev = vexrunes.runeRdy[i]
		local scaleFactor = 0
		local timeRemaining = 0
		local fillEffect_scaleFactor = 0
		local fillEffect_Duration = vexrunes_parameters["layout"]["runes"]["fillEffect"]["duration"]
		
		if runeReady then
			scaleFactor = 1
			if not(vexrunes.runeRdy[i]) then
				vexrunes.runeRdy[i] = true
				changedRune = true
			end
			vexrunes.frame.rune[i]:Show()
		else
			if vexrunes.runeRdy[i] then
				vexrunes.runeRdy[i] = false
				changedRune = true
			end			
			if duration ~= 0 then
				local timer = GetTime()-starttime
				scaleFactor = timer/duration
				timeRemaining = duration-timer
				fillEffect_scaleFactor = 1-(timeRemaining/fillEffect_Duration)
			end
			
			if scaleFactor <= 0 then
				scaleFactor = 0
				vexrunes.frame.rune[i]:Hide()
			elseif scaleFactor>1 then
				scaleFactor = 1
				vexrunes.frame.rune[i]:Show()
			else
				vexrunes.frame.rune[i]:Show()
			end
		end
		
		-- Setting Size of the fillEffect
		if vexrunes_parameters["layout"]["runes"]["fillEffect"]["active"] then
			if timeRemaining > 0 and timeRemaining <= fillEffect_Duration then
				vexrunes.frame.fillEffect[i]:Show()
				if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
					vexrunes.frame.fillEffect[i]:SetHeight(fillEffect_scaleFactor*vexrunes.maxheight)
				else
					vexrunes.frame.fillEffect[i]:SetWidth(fillEffect_scaleFactor*vexrunes.maxwidth)
				end
			else
				vexrunes.frame.fillEffect[i]:Hide()
				if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
					vexrunes.frame.fillEffect[i]:SetHeight(1)
				else
					vexrunes.frame.fillEffect[i]:SetWidth(1)
				end
			end
		else
			vexrunes.frame.fillEffect[i]:Hide()
		end
		
		-- Setting size of the rune
		if vexrunes_parameters["layout"]["runes"]["verticalfill"] then
			if scaleFactor <=0 then
				vexrunes.frame.rune[i]:SetHeight(1)
			else
				vexrunes.frame.rune[i]:SetHeight(scaleFactor*vexrunes.maxheight)
			end
		else
			if scaleFactor <=0 then
				vexrunes.frame.rune[i]:SetWidth(1)
			else
				vexrunes.frame.rune[i]:SetWidth(scaleFactor*vexrunes.maxwidth)
			end
		end
		
		if not(runeRdy_prev) and vexrunes.runeRdy[i] then
			vexrunes.playBlink(i)
		end
	end
	
	return changedRune
end

function vexrunes.playBlink(rune)
	if vexrunes_parameters["layout"]["runes"]["sortByCD"] then
		rune = vexrunes.getRuneForBlink()
	end
	vexrunes.frame.blink[rune]:SetBackdropColor(1,1,1,1)
	vexrunes.blinkAniGrp[rune]:SetScript("OnFinished", function () vexrunes.setBlinkDefaults(rune) end)
	vexrunes.blinkAniGrp[rune]:Play()
end

function vexrunes.getRuneForBlink()
	local returnvalue = 0
	for i in ipairs(vexrunes.runeRdy) do
		if vexrunes.runeRdy[i] then returnvalue = returnvalue + 1 end
	end
	
	if vexrunes_parameters["layout"]["runes"]["sortByCDInvert"] then
		returnvalue = 7 - returnvalue
	end
	
	return returnvalue 
end

function vexrunes.setBlinkDefaults(number)
	vexrunes.frame.blink[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"])
	vexrunes.frame.blink[number]:Hide()
end

function vexrunes.setMainFrame()
	vexrunes_bar_main:SetBackdrop({bgFile="Interface\\Buttons\\WHITE8X8", edgeFile="", tile=false, edgeSize=1})
	vexrunes_bar_main:SetBackdropColor(1, 1, 1, 0)
	vexrunes_bar_main:SetBackdropBorderColor(1, 1, 1, 0)
	vexrunes_bar_main:SetWidth(100)
	vexrunes_bar_main:SetHeight(100)
	
	local parent = UIParent
	if vexrunes_parameters["layout"]["runes"]["position"]["claptovexp"] and vexrunes.checkForVexPower() then 
		parent = vexpower.powerBar.frames.barBG
	end
	vexrunes_bar_main:SetPoint("CENTER", parent, "CENTER",
		vexrunes_parameters["layout"]["runes"]["position"]["main"]["x"],
		vexrunes_parameters["layout"]["runes"]["position"]["main"]["y"])
end

function vexrunes.checkForVexPower()
	local returnvalue = false
	if vexpower ~= nil then
		if vexpower.powerBar ~= nil then
			if vexpower.powerBar.frames ~= nil then
				if vexpower.powerBar.frames.barBG ~= nil then
					returnvalue = true
				end
			end
		end
	end
	return returnvalue
end

function vexrunes.configureFrames(rank)
	if rank == "shadow" then
		for i=1,6 do
			vexrunes.configurBackgroundFrame(i)
		end
	elseif rank == "used" then
		for i=1,6 do
			vexrunes.configurBlinkFrame(i)
		end
	elseif rank == "rune" then
		for i=1,6 do
			vexrunes.configurRuneFrame(i)
		end
	elseif rank == "text" then
		for i=1,6 do
			vexrunes.configurTextFrame(i)
			vexrunes.configurTextfield(i)
		end
	else
		for i=1,6 do
			vexrunes.configurBackgroundFrame(i)
			vexrunes.configurBlinkFrame(i)
			vexrunes.configurRuneFrame(i)
			vexrunes.configurTextFrame(i)
			vexrunes.configurTextfield(i)
		end
	end
end

function vexrunes.configurFillEffectFrames()
	for i=1,6 do
		if vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2usage"] then
			vexrunes.frame.fillEffect[i]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("statusbar", vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2"]),
							edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
							edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
		else
			vexrunes.frame.fillEffect[i]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture"]),
							edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
							edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
		end
		
		vexrunes.frame.fillEffect[i]:SetBackdropColor(1, 1, 1, 1)
		vexrunes.frame.fillEffect[i]:SetBackdropBorderColor(0, 0, 0, 0)
		vexrunes.frame.fillEffect[i]:SetWidth(vexrunes.maxwidth)
		vexrunes.frame.fillEffect[i]:SetHeight(vexrunes.maxheight)
		
		vexrunes.frame.fillEffect[i]:ClearAllPoints()
		if vexrunes_parameters["layout"]["runes"]["fillbottom"] then
			vexrunes.frame.fillEffect[i]:SetPoint("BOTTOMRIGHT", vexrunes.frame.rune[i])	
		else
			vexrunes.frame.fillEffect[i]:SetPoint("TOPLEFT", vexrunes.frame.rune[i])	
		end
		
		vexrunes.configurFillEffectFrameBG(i)
	end
end

function vexrunes.configurFillEffectFrameBG(number)
	local spec = vexrunes.getSpec()
	vexrunes.frame.fillEffect[number]:SetBackdropColor(vexrunes_parameters["layout"]["runes"]["fillEffect"][spec]["r"],
													vexrunes_parameters["layout"]["runes"]["fillEffect"][spec]["g"],
													vexrunes_parameters["layout"]["runes"]["fillEffect"][spec]["b"],
													vexrunes_parameters["layout"]["runes"]["fillEffect"][spec]["a"])
end

function vexrunes.configurBackgroundFrame(number)
	number_string = tostring(number)
	if vexrunes_parameters["layout"]["runes"]["bg"]["texture2usage"] then
		vexrunes.frame.background[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("statusbar", vexrunes_parameters["layout"]["runes"]["bg"]["texture2"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	else
		vexrunes.frame.background[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	end
	vexrunes.frame.background[number]:SetBackdropColor(vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["r"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["g"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["b"],
													vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["a"])
													
	if vexrunes_parameters["layout"]["runes"]["border"]["likebg"] then
		local spec = vexrunes.getSpec()
		vexrunes.frame.background[number]:SetBackdropBorderColor(vexrunes_parameters["layout"]["runes"]["bg"][spec]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"][spec]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"][spec]["b"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"])
	else
		vexrunes.frame.background[number]:SetBackdropBorderColor(vexrunes_parameters["layout"]["runes"]["border"]["color"]["r"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["g"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["b"],
												vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"])
		
	end
	vexrunes.frame.background[number]:SetWidth(vexrunes_parameters["layout"]["runes"]["size"]["width"])
	vexrunes.frame.background[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"])
	vexrunes.frame.background[number]:SetPoint("CENTER", vexrunes_bar_main, "CENTER",
						vexrunes_parameters["layout"]["runes"]["position"][number_string]["x"],
						vexrunes_parameters["layout"]["runes"]["position"][number_string]["y"])	
end

function vexrunes.configurRuneFrame(number)
	number_string = tostring(number)

	if vexrunes_parameters["layout"]["runes"]["bg"]["texture2usage"] then
		vexrunes.frame.rune[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("statusbar", vexrunes_parameters["layout"]["runes"]["bg"]["texture2"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	else
		vexrunes.frame.rune[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	end
	vexrunes.frame.rune[number]:SetBackdropColor(1, 1, 1, 1)
	vexrunes.frame.rune[number]:SetBackdropBorderColor(0, 0, 0, 0)
	vexrunes.frame.rune[number]:SetWidth(vexrunes.maxwidth)
	vexrunes.frame.rune[number]:SetHeight(vexrunes.maxheight)
	vexrunes.configurRuneFramePosition(number)
end

function vexrunes.configurRuneFramePosition(number, position)
	if position ~=nil then
		if vexrunes_parameters["layout"]["runes"]["fillbottom"] then
			vexrunes.frame.rune[number]:SetPoint("BOTTOMRIGHT", vexrunes.frame.background[position], "BOTTOMRIGHT",
												-vexrunes_parameters["layout"]["runes"]["border"]["size"],
												vexrunes_parameters["layout"]["runes"]["border"]["size"])	
		else
			vexrunes.frame.rune[number]:SetPoint("TOPLEFT", vexrunes.frame.background[position], "TOPLEFT",
												vexrunes_parameters["layout"]["runes"]["border"]["size"],
												-vexrunes_parameters["layout"]["runes"]["border"]["size"])	
		end
	else
		if vexrunes_parameters["layout"]["runes"]["fillbottom"] then
			vexrunes.frame.rune[number]:SetPoint("BOTTOMRIGHT", vexrunes.frame.background[number], "BOTTOMRIGHT",
												-vexrunes_parameters["layout"]["runes"]["border"]["size"],
												vexrunes_parameters["layout"]["runes"]["border"]["size"])	
		else
			vexrunes.frame.rune[number]:SetPoint("TOPLEFT", vexrunes.frame.background[number], "TOPLEFT",
												vexrunes_parameters["layout"]["runes"]["border"]["size"],
												-vexrunes_parameters["layout"]["runes"]["border"]["size"])	
		end
	end
end

function vexrunes.configurBlinkFrame(number)
	number_string = tostring(number)

	if vexrunes_parameters["layout"]["runes"]["bg"]["texture2usage"] then
		vexrunes.frame.blink[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("statusbar", vexrunes_parameters["layout"]["runes"]["bg"]["texture2"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	else
		vexrunes.frame.blink[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	end
						
	vexrunes.frame.blink[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"],
												vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"])
	vexrunes.frame.blink[number]:SetBackdropBorderColor(1,1,1,0)
	vexrunes.frame.blink[number]:SetWidth(vexrunes.maxwidth)
	vexrunes.frame.blink[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes.configurBlinkFramePosition(number)
	vexrunes.frame.blink[number]:Hide()
		
	local animationduration_used = 0.3
	vexrunes.blinkAniGrp[number] = vexrunes.frame.blink[number]:CreateAnimationGroup("vexrunes.blinkAniGrp["..number.."]")
	vexrunes.blinkAniGrp[number]:SetLooping("NONE")
	vexrunes.blinkAniGrp[number]:SetScript("OnPlay", function () vexrunes.frame.blink[number]:Show() end)
	vexrunes.blinkAniGrp[number]:SetScript("OnFinished", function () vexrunes.frame.blink[number]:Hide() end)
	vexrunes.blinkAni[number] = vexrunes.blinkAniGrp[number]:CreateAnimation("Alpha")
	vexrunes.blinkAni[number]:SetDuration(animationduration_used)
	vexrunes.blinkAni[number]:SetOrder(1)
	vexrunes.blinkAni[number]:SetToAlpha(0)
	vexrunes.blinkAni[number]:SetFromAlpha(1)
end

function vexrunes.configurBlinkFramePosition(number, position)
	-- if position ~= nil then
		-- vexrunes.frame.blink[number]:SetPoint("TOPLEFT", vexrunes.frame.background[position], "TOPLEFT",
										-- vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-- -vexrunes_parameters["layout"]["runes"]["border"]["size"])
	-- else
		vexrunes.frame.blink[number]:SetPoint("TOPLEFT", vexrunes.frame.background[number], "TOPLEFT",
										vexrunes_parameters["layout"]["runes"]["border"]["size"],
										-vexrunes_parameters["layout"]["runes"]["border"]["size"])
	-- end
end

function vexrunes.configurTextFrame(number)
	number_string = tostring(number)
	vexrunes.frame.text[number]:SetBackdrop({bgFile=vexrunes.LSM:Fetch("background", vexrunes_parameters["layout"]["runes"]["bg"]["texture"]),
						edgeFile="Interface\\Buttons\\WHITE8X8", tile=false,
						edgeSize=vexrunes_parameters["layout"]["runes"]["border"]["size"]})
	vexrunes.frame.text[number]:SetBackdropColor(0,0,0,0)
	vexrunes.frame.text[number]:SetBackdropBorderColor(1,1,1,0)
	vexrunes.frame.text[number]:SetWidth(vexrunes.maxwidth)
	vexrunes.frame.text[number]:SetHeight(vexrunes_parameters["layout"]["runes"]["size"]["height"]-(vexrunes_parameters["layout"]["runes"]["border"]["size"]*2))
	vexrunes.frame.text[number]:SetPoint("TOPLEFT", vexrunes.frame.background[number], "TOPLEFT",
											vexrunes_parameters["layout"]["runes"]["border"]["size"],
											-vexrunes_parameters["layout"]["runes"]["border"]["size"])
	vexrunes.frame.text[number]:SetFrameStrata("MEDIUM")
end

function vexrunes.configurTextfield(number)
	vexrunes.configurTextfieldPosition(number)
	vexrunes.textfields[number]:SetPoint("CENTER", vexrunes.frame.background[number], "CENTER" , vexrunes_parameters["layout"]["text"]["x"], vexrunes_parameters["layout"]["text"]["y"])
	vexrunes.textfields[number]:SetTextColor(vexrunes_parameters["layout"]["text"]["color"]["r"],
											vexrunes_parameters["layout"]["text"]["color"]["g"],
											vexrunes_parameters["layout"]["text"]["color"]["b"],
											vexrunes_parameters["layout"]["text"]["color"]["a"])
	vexrunes.textfields[number]:SetText("")
	vexrunes.textfields[number]:SetFont(vexrunes.LSM:Fetch("font", vexrunes_parameters["layout"]["text"]["font"]), vexrunes_parameters["layout"]["text"]["size"], vexrunes_parameters["layout"]["text"]["effect"])	
	vexrunes.textfields[number]:SetWidth(vexrunes.maxwidth)	
	vexrunes.textfields[number]:SetJustifyH(vexrunes_parameters["layout"]["text"]["align"])
end

function vexrunes.configurTextfieldPosition(number, position)
	if position ~= nil then
		vexrunes.textfields[number]:SetPoint("CENTER", vexrunes.frame.background[position], "CENTER" , vexrunes_parameters["layout"]["text"]["x"], vexrunes_parameters["layout"]["text"]["y"])
	else
		vexrunes.textfields[number]:SetPoint("CENTER", vexrunes.frame.background[number], "CENTER" , vexrunes_parameters["layout"]["text"]["x"], vexrunes_parameters["layout"]["text"]["y"])
	end
end

function vexrunes.configurRuneFrameBGs()
	for i=1,6 do
		vexrunes.configurRuneFrameBG(i)
	end
end

function vexrunes.getSpec()	
	local spec = 0
	if GetSpecialization() ~= nil then
		if GetSpecializationInfo(GetSpecialization()) ~= nil then
			spec = select(1, GetSpecializationInfo(GetSpecialization()))
		end
	end
	
	local returnvalue = "blood"
	if 		spec == 251 then returnvalue = "frost"
	elseif 	spec == 252 then returnvalue = "unholy"
	end
	
	return returnvalue
end

function vexrunes.configurRuneFrameBG(number)
	local spec = vexrunes.getSpec()
	vexrunes.frame.rune[number]:SetBackdropColor(	vexrunes_parameters["layout"]["runes"]["bg"][spec]["r"],
													vexrunes_parameters["layout"]["runes"]["bg"][spec]["g"],
													vexrunes_parameters["layout"]["runes"]["bg"][spec]["b"],
													vexrunes_parameters["layout"]["runes"]["bg"][spec]["a"])
end

function vexrunes.showEnergybars()
	local show = true
	--check for enabled addon
	if vexrunes_parameters["enable"] and not(vexrunes.inVehicle and vexrunes_parameters["vehiclehide"]) then
		--check for infight
		if vexrunes_parameters["infightshow"] and vexrunes.infight then
			show = true
		elseif not(vexrunes_parameters["infightshow"]) then
			show = true
		else
			show = false
		end	
		
		if vexrunes_parameters["targetAttackableSetShow"] and vexrunes.targetSet and UnitCanAttack("player", "target") then
			show = true
		elseif vexrunes_parameters["targetSetShow"] and vexrunes.targetSet then
			show = true
		end
		
		--check for petBattle
		-- if vexrunes.inPetBattleFight and vexrunes_parameters["petBattleHide"] then
			-- returnvalue = false
		-- end
	else
		show = false
	end
	
	
	--react to 'show'
	if vexrunes.show ~= show then
		if show then 	UIFrameFadeOut(vexrunes_bar_main, 0.1, 0, 1) 
		else			UIFrameFadeOut(vexrunes_bar_main, 1, 1, 0)  end
	else
		if show then 	vexrunes_bar_main:Show() 
		else			vexrunes_bar_main:Hide() end
	end
	vexrunes.show = show
end