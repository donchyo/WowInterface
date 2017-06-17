--//Unsure if this even works as intended, seems to work, needs more testing
SS_savedVariables = {
	-- {"savedvar", defaultValue, "valueinherit"}
	SS_ScannerInterval = {"scantimer", 5, "SS_ScannerIntervalSlider"},
	SS_NotificationInterval = {"notificationtimer", 10, "SS_NotificationIntervalSlider"},
	SS_addonVersion = {"version", 7.21},
	SS_satchelsReceived = {"satchels", 0},
	SS_showUI = {"showMainFrame", true},
	-- Buttons
	SS_scanInDungeon = {"scanInDungeon", false, "SS_scanInDungeonButton"},
	SS_scanInGroup = {"scanInGroup", false, "SS_scanInGroupButton"},	
	SS_raidWarnNotify = {"raidwarning", true, "SS_raidWarningButton"},
	SS_playSound = {"sounds", true, "SS_playSoundButton"},
	Instance_Trigger = {"InstanceTrigger"},
};

function SS_datacall(data)
	if not SatchelScannerDB then
		SatchelScannerDB = {};
		SS_datacall("reset");
	elseif data == "reset" then
		SatchelScannerDB = {};
		SS_printmm("Your settings have been reset!");
		for i, var in pairs(SS_savedVariables) do
			if string.find(var[1], "satchels") and not (_G[var[1]] == nil) then
				SatchelScannerDB[var[1]] = _G[i];
			elseif string.find(i, "Instance_Trigger") then
				for j=1,3,1 do
					local role = {"_Tank","_Heal","_Dps"}
					for k=1, #SS_sortedDungeonsID do
						local saveVar = string.gsub(SS_sortedDungeonsID[k].name, " ", "")
						saveVar = string.gsub(saveVar, "'", "")
						saveVar = saveVar..role[j];
						SatchelScannerDB[saveVar] = false
					end
				end
			else
				SatchelScannerDB[var[1]] = var[2];
			end
		end
		SS_datacall("read");
	elseif data == "update" then
		for i, var in pairs(SS_savedVariables) do
			if string.find(var[3] or "", "Button") then
				SatchelScannerDB[var[1]] = SS_Globals[var[3]]:GetChecked();
			elseif string.find(i, "Instance_Trigger") then
				for j=1,3,1 do
					local role = {"_Tank","_Heal","_Dps"}
					for k=1, #SS_sortedDungeonsID do
						local nameVar = ("SS_" .. string.gsub(SS_sortedDungeonsID[k].name, " ", ""))
						local saveVar = string.gsub(SS_sortedDungeonsID[k].name, " ", "")
						nameVar = string.gsub(nameVar, "'", "")
						saveVar = string.gsub(saveVar, "'", "")
						saveVar = saveVar..role[j];
						SatchelScannerDB[saveVar] = SS_Globals.dungeonData[nameVar.."Box"..j]:GetChecked();
					end
				end
			elseif string.find(var[3] or "", "Slider") then
				SatchelScannerDB[var[1]] = SS_Globals[var[3]]:GetValue();
			else
				SatchelScannerDB[var[1]] = _G[i];
			end
		end
		SatchelScannerDB["showMainFrame"] = SS_showUI;
		SS_datacall("read");
	elseif SatchelScannerDB["version"] < 7.21 then
		_G["SS_satchelsReceived"] = SatchelScannerDB["satchels"];
		SS_datacall("reset");
	elseif data == "read" then
		for i, var in pairs(SS_savedVariables) do
			if string.find(var[3] or "", "Button") then
				SS_Globals[i] = SatchelScannerDB[var[1]];
				SS_Globals[var[3]]:SetChecked(SS_Globals[i]);
			elseif string.find(var[3] or "", "Slider") then
				_G[i] = SatchelScannerDB[var[1]];
				SS_Globals[var[3]]:SetValue(_G[i]);
			elseif string.find(i, "SS_satchelsReceived") then
				_G[i] = SatchelScannerDB[var[1]];
				_G["SS_bagCounterText"]:SetText(_G[i]);
			elseif string.find(i, "showUI") then
				_G[i] = SatchelScannerDB[var[1]];
				if SS_showUI then
					SatchelScannerDisplayWindow:Show();
				else
					SatchelScannerDisplayWindow:Hide();
				end
			elseif string.find(i, "Instance_Trigger") then
				for j=1,3,1 do
					local role = {"_Tank","_Heal","_Dps"}
					for k=1, #SS_sortedDungeonsID do
						local nameVar = ("SS_" .. string.gsub(SS_sortedDungeonsID[k].name, " ", ""))
						local saveVar = string.gsub(SS_sortedDungeonsID[k].name, " ", "")
						nameVar = string.gsub(nameVar, "'", "")
						saveVar = string.gsub(saveVar, "'", "")
						saveVar = saveVar..role[j];
						SS_Globals.dungeonData[nameVar.."Box"..j]:SetChecked(SatchelScannerDB[saveVar]);
					end
				end
			end
		end
	else
		SS_errorCollect("DATATABLE", data);
	end
end