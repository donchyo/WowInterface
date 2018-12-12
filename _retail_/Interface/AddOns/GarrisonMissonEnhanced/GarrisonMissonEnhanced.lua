local _,ns = ...;
local L = ns.L;
local f  = CreateFrame("frame",nil,UIParent);
local lwin = LibStub("LibWindow-1.1")
ns.main = f;
--local GarrisonMissonEnhancedSave = {};
local pname = "";
local save="";
local starttime = time();
local old_scroll;
local traiticons = {};
local counters = {};
local showfollowercounter = false;
local addfollower = {};
local hidemissionavailstuff = false;
--GarrisionMissionEnhancedDebug = addfollower;
local oldfollowerrightclick,old_GarrisonMissionAlertFrame_ShowAlert;
local missionavail = {};
local statusframe = {};
local bodyguards = {1740, 1738, 1733, 1741, 1737, 1736, 1739};
local garrion_events_active = true;
local salvage_ids = {[114116]=true,[114119]=true,[114120]=true}
local secure_buttons = {}
local secure_button_count;

--GarrisionMissionEnhancedDebug = statusframe;
f.version = 1;
f.rightclickhook = false;
GarrionMissonEnhanceConfig = {};
local function round(num, idp)
		local mult = 10^(idp or 0)
		return math.floor(num * mult + 0.5) / mult
end

function f:OnLoad()
   
	f:SetScript("OnEvent",f.EventHandler);
	
	f:RegisterEvent("ADDON_LOADED");
	f:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	--zone changed new area dont trigger on reload ui so registering zone changed by default
	f:RegisterEvent("ZONE_CHANGED")
end
StaticPopupDialogs["GarrisonMissonEnhancedChange"] = {
  text = "|c0000FF00 Garrison Mission Enhanced |r |n"..L.COLOR_CHANGE,
  button1 = "Ok",
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
  preferredIndex = 3,  
}

--C_Garrison.CastSpellOnFollower(self.data);
StaticPopupDialogs["CONFIRM_FOLLOWER_UPGRADE"] = {
text = CONFIRM_GARRISON_FOLLOWER_UPGRADE,
	button1 = YES,
	button2 = NO,
  OnShow = function (self)
	if(ns.config["HideFollowerUpgrade"]==true) then
		C_Garrison.CastSpellOnFollower(self.data);
		self:Hide();
	end
end,
	OnAccept = function(self)
		C_Garrison.CastSpellOnFollower(self.data);
	end,
	showAlert = 1,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1
 
}


local errortext="";
local dialogwasshown = false;
StaticPopupDialogs["GarrisonMissonEnhancedError"] = {
 text = "|c0000FF00 Garrison Mission Enhanced |r encountered an error |n Please copy the text in the editbox and report it. |n Just press ctrl+c to copy it and ctrl+v to paste. ",
  button1 = "Ok",
  timeout = 0,
  whileDead = true,
  hideOnEscape = true,
  preferredIndex = 3,  
  OnShow = function (self, data)
    self.editBox:SetText(errortext)
	self.editBox:HighlightText();
end,
  Onclick = function (self, data)
    
	self.editBox:HighlightText();
end,
OnAccept = function (self, data, data2)
    local text = self.editBox:GetText()
	self.editBox:HighlightText();
    -- do whatever you want with it
end,
hasEditBox = true
}

----temp








----endtemp

local printr_string="";


local function print_r (t, indent, done)
  done = done or {}
  indent = indent or ''
  local nextIndent -- Storage for next indentation value
  for key, value in pairs (t) do
    if type (value) == "table" and not done [value] then
      nextIndent = nextIndent or
          (indent .. string.rep(' ',string.len(tostring (key))+2))
          -- Shortcut conditional allocation
      done [value] = true
      printr_string=printr_string.. (indent .. "[" .. tostring (key) .. "] => Table {");
      printr_string=printr_string..  (nextIndent .. "{");
      print_r (value, nextIndent .. string.rep(' ',2), done)
      printr_string=printr_string..(nextIndent .. "}");
    else
      printr_string = printr_string..  (indent .. "[" .. tostring (key) .. "] => " .. tostring (value).."")
    end
  end
end





function f:CheckMission(accurate)
	local missions = C_Garrison.GetAvailableMissions(LE_FOLLOWER_TYPE_GARRISON_6_0)
	local curtime = time()
	missionavail = {}
	
	for _,v in pairs(missions) do
	--print(v["name"]);
		missionavail[v["missionID"]]=1
		--if(v["name"]=="Worth Its Weight") then
		--	print(v["missionID"]);
		--end
		
		if not save[pname][v["missionID"]] then
			--print("doing");
			save[pname][v["missionID"]] = {};
			save[pname][v["missionID"]]["time"] = curtime;
			save[pname][v["missionID"]]["accurate"] = accurate;
		end
	
	end
	--event fires on reload or login with 1 mission avail, then 2 etc so wait at least 20 seconds before wiping missions
	
	
	
end


function f:HideAllTraits()
	--traiticons[mission['missionID']][buttoncount]
	for _,v in pairs(traiticons) do
		for _,v2 in pairs(v) do
			v2:Hide();
		end
	
	end
	for _,v in pairs(statusframe) do
		for _,v2 in pairs(v) do
			v2:Hide();
		end
	
	end
	
end

local function RGBPercToHex(r, g, b, a)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	a = a <= 1 and a >= 0 and a or 0
	return string.format("%02x%02x%02x%02x",a*255, r*255, g*255, b*255)
end

function f:ShowTooltipCounter()
	--traiticons[mission['missionID']][buttoncount].Icon:SetTexture(v2["icon"]);
	--traiticons[mission['missionID']][buttoncount].missionid = mission["missionID"];
	--traiticons[mission['missionID']][buttoncount].traitcounter = buttoncount;
	--traiticons[mission['missionID']][buttoncount].countername = v2["name"];
	--local text = self.Icon:GetTexture().." "..self.countername;
	local inprogress = C_Garrison.GetInProgressMissions();
	
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT") 
	GameTooltip:SetText(self.countername, nil, nil, nil, nil, true);
	GameTooltip:AddLine(" ");
	GameTooltip:AddLine(L.COUNTERED_BY..":");
	GameTooltip:AddLine(" ");
	local mission_counter = C_Garrison.GetBuffedFollowersForMission(self.missionid);
	local hexcolor = "";
	
	local reward = C_Garrison.GetMissionRewardInfo(self.missionid);
	
	
	for k,v in pairs(mission_counter) do
		for _,v2 in pairs(v) do
			if(v2["name"]==self.countername) then
				local status = C_Garrison.GetFollowerStatus(k);
				local followerinfo = C_Garrison.GetFollowerInfo(k);
				--name,quality, iLevel,level
				
				local addtext =  ITEM_QUALITY_COLORS[followerinfo.quality].hex..followerinfo.name..FONT_COLOR_CODE_CLOSE
				if(status==GARRISON_FOLLOWER_ON_MISSION) then
					local timeleft;
					local found = false;
					for _,v3 in pairs(inprogress)  do
						for _,v4 in pairs(v3.followers) do
							
							if (v4 == k) then
								
								timeleft=v3.timeLeft;
								found = true;
								break;
							end
							
						end
						if(found == true) then
							break;
						end
					end
					
				hexcolor = RGBPercToHex(unpack(ns.colors['onmission']));
				addtext=addtext.." (|c"..hexcolor..L.CONFIG_ONMISSION.."-"..timeleft.."|r)";
					
				elseif(status==GARRISON_FOLLOWER_INACTIVE) then
					hexcolor = RGBPercToHex(unpack(ns.colors['inactive']));
					addtext=addtext.." (|c"..hexcolor..L.CONFIG_INACTIVE.."|r)";
					
				elseif(status==GARRISON_FOLLOWER_WORKING) then
					hexcolor = RGBPercToHex(unpack(ns.colors['working']));
					addtext=addtext.." (|c"..hexcolor..L.CONFIG_WORKING.."|r)";
				else
					hexcolor = RGBPercToHex(unpack(ns.colors['available']));
					addtext=addtext.." (|c"..hexcolor..L.CONFIG_AVAILABLE.."|r)";
				end
				addtext=addtext.." ";
				if (not followerinfo.iLevel or followerinfo.iLevel==600) then
					addtext=addtext..L.LEVEL..": "..followerinfo.level;
				else
					addtext=addtext..L.ITEM_LEVEL..": "..followerinfo.iLevel;
				end
					for _,rew in pairs(reward) do
						if (rew['currencyID'] == 824) then
							
							local traits = C_Garrison.GetFollowerAbilities(k);
							
							for _,trait in pairs(traits) do
								if(trait['id']==79) then
										addtext=addtext..' ('..L.SCAVENGER..')';
								end
							
							end
						end
					end
				 
			GameTooltip:AddLine(addtext);
			end
			
		end
	
	end
	
	--Set our button as the tooltip's owner and attach it to the top right corner of the button.
									--GameTooltip:SetText(text, nil, nil, nil, nil, true) --Set the tooltip's text using the default RGBA values (fully opaque gold text) with text wrapping on.
									GameTooltip:Show() --Show the tooltip

end

--0 available
--1 onmission
--2 working
--3 inactive

function f:CreateCounter(missionid)

	
	counters = {};
	addfollower[missionid] = {};
	local mission_counter = C_Garrison.GetBuffedFollowersForMission(missionid,false);
	for k,v in pairs(mission_counter) do
		for _,v2 in pairs(v) do
			if not counters[v2["name"]] then
				counters[v2["name"]] = {}
			end
			local status = C_Garrison.GetFollowerStatus(k);			
			if(status==GARRISON_FOLLOWER_ON_MISSION) then
				counters[v2["name"]][k] = 1;
			elseif(status==GARRISON_FOLLOWER_INACTIVE) then
				counters[v2["name"]][k] = 3;
			elseif(status==GARRISON_FOLLOWER_WORKING) then
				counters[v2["name"]][k] = 2;
			else
				counters[v2["name"]][k] = 0;
			end
		end
	
	end
	--print_r(counters);
end

local function checkempty(tabl)
	for k,_ in pairs(tabl) do
		return 1;
	end
	return 0;
end


--0 available
--1 onmission
--2 working
--3 inactive
function f:CheckCounter(trait,missionid,statusframe)
	if  not counters[trait] or checkempty(counters[trait])==0 then
		statusframe.color[1]:SetVertexColor(unpack(ns.colors["nocounter"]));
		statusframe.color[1]:Show();
	else
		
		local statusshow = {};
		local showcounter = 1;
		--addfollower[missionid][trait] = {};
		for k,v in pairs(counters[trait]) do
			
			--if not on mission directly return otherwise check if there is one not on mission
			
			if(v==0) then
				if (not statusshow[v]) then
					
					statusframe.color[showcounter]:SetVertexColor(unpack(ns.colors["available"]));
					statusframe.color[showcounter]:Show();
					statusshow[v] = 1;
					showcounter=showcounter+1;
					counters[trait][k] = nil;
				end
				if (not addfollower[missionid][trait]) then
					addfollower[missionid][trait] = {};
				end
				addfollower[missionid][trait][k] = 1;
			elseif(v==1) then
				if (not statusshow[v]) then
					statusframe.color[showcounter]:SetVertexColor(unpack(ns.colors["onmission"]));
					statusframe.color[showcounter]:Show();
					statusshow[v] = 1;
					showcounter=showcounter+1;
					counters[trait][k] = nil;
				end
			
			elseif(v==2) then
				if (not statusshow[v]) then
					statusframe.color[showcounter]:SetVertexColor(unpack(ns.colors["working"]));
					statusframe.color[showcounter]:Show();
					statusshow[v] = 1;
					showcounter=showcounter+1;
					counters[trait][k] = nil;
				end
			
			elseif(v==3) then
				if (not statusshow[v]) then
					statusframe.color[showcounter]:SetVertexColor(unpack(ns.colors["inactive"]));
					statusframe.color[showcounter]:Show();
					statusshow[v] = 1;
					showcounter=showcounter+1;
					counters[trait][k] = nil;
				end
						
			end
			
		end
		
		--print_r(addfollower[missionid]);
	end
	--this is needed for double encounters maybe
	--return 0;
end

--C_Garrison.AddFollowerToMission

local function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function f:CheckMoreThanOneCounter(missionid)
	
	for k,v in pairs(addfollower[missionid]) do
		if(tablelength(v)>1) then
			addfollower[missionid][k] = nil;
		end
	
	end

end

function f:CreateStatusFrame(button,index,index2)
	if not(statusframe[index]) then
		statusframe[index] = {};
	end
	local curstat;
	if not(statusframe[index][index2]) then
		statusframe[index][index2]=CreateFrame("Frame", nil);
		curstat = statusframe[index][index2];
		curstat:SetPoint("BOTTOM",button,"BOTTOM",0,-38);
		curstat:SetSize(32,32);
		curstat.color = {};
		curstat.color[1] = curstat:CreateTexture(nil, "OVERLAY");
		curstat.color[1]:SetWidth(16);
		curstat.color[1]:SetHeight(16);
		curstat.color[1]:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
		curstat.color[1]:SetPoint("TOPLEFT",curstat);
	
		
		curstat.color[2] = curstat:CreateTexture(nil, "OVERLAY");
		curstat.color[2]:SetWidth(16);
		curstat.color[2]:SetHeight(16);
		curstat.color[2]:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
		curstat.color[2]:SetPoint("TOPRIGHT",curstat)

		
		curstat.color[3] = curstat:CreateTexture(nil, "OVERLAY");
		curstat.color[3]:SetWidth(16);
		curstat.color[3]:SetHeight(16);
		curstat.color[3]:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
		curstat.color[3]:SetPoint("BOTTOMLEFT",curstat)
	
		
		curstat.color[4] = curstat:CreateTexture(nil, "OVERLAY");
		curstat.color[4]:SetWidth(16);
		curstat.color[4]:SetHeight(16);
		curstat.color[4]:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
		curstat.color[4]:SetPoint("BOTTOMRIGHT",curstat)
	
		
		
		
		curstat:Show();
		
	else
		curstat = statusframe[index][index2];
		
	end
	curstat:SetParent(button);
	for i=1,4 do
		curstat.color[i]:Hide();
	
	end
	return curstat;
end

function f:CalcTimeLeft(calctime)
	
	local extratext = ""
	if calctime<60 then
		extratext = extratext..calctime.."s";
	elseif calctime < 3600 then
		extratext = extratext..floor(calctime/60,0).."m";
	elseif calctime < 86400 then
		local hours = floor(calctime/60/60);
		local minutes = floor((calctime/60) % 60);
		extratext = extratext..hours.."h "..minutes.."m";
	else
		local days = floor(calctime/60/60/24);
		calctime=calctime-(days*60*60*24);
		local hours = floor(calctime/60/60);
		local minutes = floor((calctime/60) % 60);
		extratext = extratext..days.."d "..hours.."h "..minutes.."m";
		
	end
	return extratext
end

function f:GarrisonMissionList_Update()
	--traiticons = {};
	--print("ja");
	local missions;
	local self = GarrisonMissionFrame.MissionTab.MissionList;
	if (self.showInProgress) then
		if(hidemissionavailstuff==true) then
			local scrollFrame = self.listScroll;
			local buttons = scrollFrame.buttons;
			local numButtons = #buttons;
			for i = 1, numButtons do
				if(buttons[i].extraEnhancedText) then
					buttons[i].extraEnhancedText:Hide();
				
				end
			end
			
			
			f:HideAllTraits();
			hidemissionavailstuff=false;
		end
	else
		
		hidemissionavailstuff = true;
		f:HideAllTraits();
		missions = self.availableMissions;
		local numMissions = #missions;
		local scrollFrame = self.listScroll;
		local offset = HybridScrollFrame_GetOffset(scrollFrame);
		local buttons = scrollFrame.buttons;
		local numButtons = #buttons;
		for i = 1, numButtons do
			local button = buttons[i];
			local index = offset + i; -- adjust index
			if ( index <= numMissions) then
				
				local mission = missions[index];
				
				if(ns.config["TimeOnMission"]==true or ns.config["FollowerRequired"]==true) then
				
					if not (button.extraEnhancedText) then
						button.extraEnhancedText = button:CreateFontString( nil, "OVERLAY", "GameFontNormal" );
						button.extraEnhancedText:SetTextHeight(12);
						--button.extraEnhancedText:SetFont("Fonts\\FRIZQT__.ttf", 12)
						button.extraEnhancedText:SetPoint("BOTTOMLEFT", 165, 5);
						
					end
					button.extraEnhancedText:Show();
					local extratext="";
					if(ns.config["TimeOnMission"] == true) then
						extratext=L.MISSION_AVAILABLE..": ";
						local timeon = time()-save[pname][mission['missionID']]['time']
						extratext = extratext..f:CalcTimeLeft(timeon)
						
						if (save[pname][mission['missionID']]["accurate"] == false) then
							extratext = extratext.."*";					
						end
						extratext = extratext.."  ";
						
					end
					if(ns.config["FollowerRequired"] == true) then
						extratext = extratext..L.FOLLOWER_REQUIRED..": "..mission['numFollowers'];
					end
					button.extraEnhancedText:SetText("|cFFFFFFFF"..extratext);
					
				else

					if (button.extraEnhancedText~=nil) then
						button.extraEnhancedText:Hide();
					end					
					
				end
				
				
				if(ns.config["CounterTraits"]==true) then
				
					f:CreateCounter(mission['missionID']);
					if not traiticons[mission['missionID']] then 
						traiticons[mission['missionID']] = {}
					end
					
					local missionbosses = select(8,C_Garrison.GetMissionInfo(mission['missionID']));
					local buttoncount = 1;
					for _,v in pairs(missionbosses) do
						
						for _,v2 in pairs(v["mechanics"]) do
							--print_r(v2);
							if not traiticons[mission['missionID']][buttoncount] then
								traiticons[mission['missionID']][buttoncount] = {};
								traiticons[mission['missionID']][buttoncount]   = CreateFrame("Frame", nil, button, "GarrisonMissionEnemyLargeMechanicTemplate");
								traiticons[mission['missionID']][buttoncount]:SetScript("OnEnter", f.ShowTooltipCounter);
								--traiticons[mission['missionID']][buttoncount]:SetFrameStrata("TOOLTIP");
								--print("yup");
								
							end
							local statusframe = f:CreateStatusFrame(traiticons[mission['missionID']][buttoncount],mission['missionID'],buttoncount);
							local cancounter = f:CheckCounter(v2["name"],mission['missionID'],statusframe);
							traiticons[mission['missionID']][buttoncount]:SetPoint("TOP",button,"TOP",0,-10);
							statusframe:Show();
							traiticons[mission['missionID']][buttoncount]:SetParent(button);
							
							
							
							traiticons[mission['missionID']][buttoncount].Icon:SetTexture(v2["icon"]);
							traiticons[mission['missionID']][buttoncount].missionid = mission["missionID"];
							traiticons[mission['missionID']][buttoncount].traitcounter = buttoncount;
							traiticons[mission['missionID']][buttoncount].countername = v2["name"];
							if(buttoncount == 1) then
							
								traiticons[mission['missionID']][buttoncount]:SetPoint("LEFT",button.Rewards[mission['numRewards']], "LEFT", -40, 0);
							else
								traiticons[mission['missionID']][buttoncount]:SetPoint("LEFT",traiticons[mission['missionID']][buttoncount-1], "LEFT", -40, 0);
							end
							--print("traiticonshow");
							traiticons[mission['missionID']][buttoncount]:Show(true);
							buttoncount=buttoncount+1
							
							
						end
					end
					f:CheckMoreThanOneCounter(mission['missionID']);
				end
			end
		end
	end
end




function f:ScanForRemoval()
	for k,_ in pairs(save[pname]) do

		if not missionavail[k] then

			f:RemoveMission(k);
			
		end
	end

end

function f:RemoveMission(id)
	save[pname][id] = nil;
	
end

function f:doscroll(...)
	old_scroll(...);
	 f:GarrisonMissionList_Update();
	
end

local function UpdateFollowerTimeLeft(self)
	if(ns.config["ShowTimeLeft"]==false) then
		return;
	end
	local followerFrame = self;
	local followers = followerFrame.FollowerList.followers;
	local followersList = followerFrame.FollowerList.followersList;
	local numFollowers = #followersList;
	local scrollFrame = followerFrame.FollowerList.listScroll;
	local offset = HybridScrollFrame_GetOffset(scrollFrame);
	local buttons = scrollFrame.buttons;
	local numButtons = #buttons;
	local showCounters = followerFrame.FollowerList.showCounters;
	local canExpand = followerFrame.FollowerList.canExpand;
	local inprogress = C_Garrison.GetInProgressMissions();
	for i = 1, numButtons do
		local button = buttons[i];
		local index = offset + i; -- adjust index
		if ( index <= numFollowers ) then
			local follower = followers[followersList[index]];
			if (follower.status == GARRISON_FOLLOWER_ON_MISSION) then
				local found = false;
				for _,v in pairs(inprogress)  do
					for _,v2 in pairs(v.followers) do
						
						if (v2 == follower.followerID) then
							
							button.Status:SetText(follower.status.." ("..v.timeLeft..")");
							found = true;
							break;
						end
						
					end
					if(found == true) then
						break;
					end
				end
			end
		end
	end
	
	


end

local function ShowMission(mission)
--make it visible in the config that this depens on show counter abilities
	--print("showmission");
	if(ns.config["AutoPlace"]==false or ns.config["CounterTraits"]==false or addfollower[mission['missionID']]==nil) then
		return;
	end
	--local i = 1;
	for _,k in pairs(addfollower[mission['missionID']]) do
		for v,_ in pairs (k) do
			local followerFrame = GarrisonMissionFrame.MissionTab.MissionPage.Followers[i];
		
			local followerInfo = C_Garrison.GetFollowerInfo(v);
			--GarrisonMissionPage_SetFollower(followerFrame, followerInfo);
			--print_r(followerInfo);
			--GarrisonMissionFrame.followerCounters = C_Garrison.GetBuffedFollowersForMission(MISSION_PAGE_FRAME.missionInfo.missionID);
			--delay it for a moment so counter icons are shown
			C_Timer.After(0.2, function () GarrisonMissionPage_AddFollower(followerInfo.followerID) end);
			--i=i+1;
		end
		--C_Garrison.AddFollowerToMission(mission['missionID'],k);	
	end
end

--local function MissionComplete()

	--GarrisonMissionFrame.MissionComplete.NextMissionButton:Enable();
--end

local function FollowerRightClick (...)

	local MISSION_PAGE_FRAME = GarrisonMissionFrame.MissionTab.MissionPage;
	local self,button = ...;	
	if ( MISSION_PAGE_FRAME:IsVisible() and MISSION_PAGE_FRAME.missionInfo and button == "RightButton") then
		
		if(self.info.status == nil) then
			GarrisonFollowerMissionPageMixin:AddFollower(self.id);
			
		elseif(self.info.status == GARRISON_FOLLOWER_IN_PARTY) then
			for i = 1, #MISSION_PAGE_FRAME.Followers do
			local followerFrame = MISSION_PAGE_FRAME.Followers[i];
			if ( followerFrame.info ) then
			
				if(followerFrame.info.followerID == self.id) then
					GarrisonMissionPage_ClearFollower(followerFrame,true);
					break;
				end
			end
	end
		else
			return oldfollowerrightclick(...);
		end
		
		
	else
		return oldfollowerrightclick(...);
	end	


end

function f:ActivateFollowerHook()
	
	GarrisonFollowerListButton_OnClick = FollowerRightClick;
	f.rightclickhook = true;

end

function f:DeactivateFollowerHook()
	
	GarrisonFollowerListButton_OnClick = oldfollowerrightclick;
	f.rightclickhook = false;
end

local function new_GarrisonMissionAlertFrame_ShowAlert(...)
	
	if (IsInInstance()==false and ns.config["HideAlert"]==true) then
		--print ("return");
		return old_GarrisonMissionAlertFrame_ShowAlert(...);
		
	end
	--print ("noreturn");
	--return;
end



function f:FollowerListShow()

	if(ns.config["ShowCounterFollower"] == false and ns.config["ShowItemlevelFollower"]==false) then 
		return;
	end

	local followerFrame = self;
	
	local canExpand = followerFrame.FollowerList.canExpand;
	local followers = followerFrame.FollowerList.followers;
		local followersList = followerFrame.FollowerList.followersList;
		local numFollowers = #followersList;
		local scrollFrame = followerFrame.FollowerList.listScroll;
		local offset = HybridScrollFrame_GetOffset(scrollFrame);
		local buttons = scrollFrame.buttons;
		local numButtons = #buttons;
		local showCounters = followerFrame.FollowerList.showCounters;
	
	for i = 1, numButtons do
		if(buttons[i].showileveldetails) then
			buttons[i].showileveldetails:Hide();
		end
		if(buttons[i].showcounters) then
			for _,v in pairs(buttons[i].showcounters) do
				v:Hide();
			end
				
		end
	end
	if(canExpand==true) then
		--if(showfollowercounter == true) then
			--hide
			
			--end
			
			
			showfollowercounter = false;
		
		return;
	else
		showfollowercounter = true;
		
		for i = 1, numButtons do
			local button = buttons[i];
			local index = offset + i; -- adjust index
			if ( index <= numFollowers ) then
				local follower = followers[followersList[index]];
				if ( follower.isCollected ) then
					if(ns.config["ShowItemlevelFollower"]==true) then
						if(not button.showileveldetails) then
							button.showileveldetails= button:CreateFontString( nil, "OVERLAY", "GameFontHighlightSmall" );
							--button.showileveldetails:SetTextHeight(10);
							-- r="0.745" g="0.745" b="0.745" a="1"/>
							button.showileveldetails:SetTextColor(0.745,0.745,0.745,1);
							button.showileveldetails:SetPoint("BOTTOMLEFT", 70, 6);
						end
						button.showileveldetails:Hide();
						
							--print("ja");
							--printr_string = "";
							--print_r(follower);
							--print(printr_string);
							
						if(follower.iLevel and follower.iLevel>600) then
								
								
							local _, weaponItemLevel, _, armorItemLevel = C_Garrison.GetFollowerItems(follower.followerID);
							button.showileveldetails:SetText(L.WEAPON..": "..weaponItemLevel.." "..L.ARMOR..": "..armorItemLevel);
							button.showileveldetails:Show();
						end
						
					end
					if(ns.config["ShowCounterFollower"]==true) then
						if(not button.showcounters) then
							button.showcounters = {};
						end
						local curindex=1;
						local abilities = C_Garrison.GetFollowerAbilities(follower.followerID);
						for k,v in pairs(abilities) do
							if(v["isTrait"]==false) then
																
								for k2,v2 in pairs(v["counters"]) do
									
									if(not button.showcounters[curindex]) then
										button.showcounters[curindex] = CreateFrame("Frame", nil, button, "GarrisonMissionEnemyMechanicTemplate");
										if(curindex==1) then
											button.showcounters[curindex]:SetPoint("TOPRIGHT",button,"TOPRIGHT",0,-8);
										else
											
											button.showcounters[curindex]:SetPoint("LEFT",button.showcounters[curindex-1],"LEFT",-25,0);
										end
									end
									button.showcounters[curindex].Icon:SetTexture(v2["icon"]);
									button.showcounters[curindex]:Show();
									curindex=curindex+1;
								end
							
							end
						
						end
						
					end
				end
			end
		end
		
	end
	

end

function f:GetCurrentMapId()
	local old = GetCurrentMapAreaID ()
	SetMapToCurrentZone();
	local current = GetCurrentMapAreaID ()
	SetMapByID(old)
	return current;

end

function f:SavePosition()
	local xOfs, yOfs = f:GetCenter() 
	local s = f:GetEffectiveScale()
	local uis = UIParent:GetScale()
	xOfs = xOfs * s - GetScreenWidth() * uis / 2
	yOfs = yOfs * s - GetScreenHeight() * uis / 2

	
end

function f:CreateSecureButttons()
		for i=1,3 do
			secure_buttons[i] = CreateFrame("Button", nil, UIParent, "SecureActionButtonTemplate,ActionButtonTemplate");
			local btn = secure_buttons[i];
			btn:SetWidth(50);
			btn:SetHeight(50);
			btn.counter = btn:CreateFontString(nil, "OVERLAY", "NumberFontNormal");
			btn.counter:SetPoint("BOTTOMRIGHT", btn);
			if(i==1) then
				--btn:SetPoint("Center",UIParent)
				btn:SetMovable(true);
				lwin.RegisterConfig(btn, ns.config.frame_secure_pos)
				lwin.RestorePosition(btn)  -- restores scale also
				btn:RegisterForDrag("LeftButton");
				
				btn:SetScript("OnDragStart", function(self) if IsShiftKeyDown() then self:StartMoving() end end)
				btn:SetScript("OnDragStop", function(self) self:StopMovingOrSizing(); lwin.SavePosition(self); end);
			end
			
			if i > 1 then
				btn:SetPoint("RIGHT",secure_buttons[i-1],50,0);
			
			end
			
		
			btn:Hide();	
		end
end


function f:CreateUseButton(itemid,itemcount)
		if secure_button_count > 0 then
		
			for i=1,secure_button_count do
				if secure_buttons[i].itemid == itemid then
					
					secure_buttons[i].counter:SetText(secure_buttons[i].counter:GetText()+itemcount);
					
					return
				end
			
			end	
		end
		secure_button_count=secure_button_count+1;
		
		local btn = secure_buttons[secure_button_count];
				
		btn.itemid = itemid;
		btn:SetAttribute("type1", "item");
		btn:SetAttribute("item1", "item:"..itemid);
		
		btn.icon:SetTexture(GetItemIcon(itemid));
		btn.icon:SetAllPoints(true);
		btn:SetWidth(50);
		btn.counter:SetText(itemcount);
		
		

		btn:Show();
	
	
end

function f:CheckBags(what)
	if ns.config.ShowSalvage == false then return; end
	for bag = 0, 4 do
		
		for slot = 1, GetContainerNumSlots(bag) do
			local itemid = GetContainerItemID(bag, slot)
				if(what=="salvage") then
					if salvage_ids[itemid] then
						local _, itemCount = GetContainerItemInfo(bag, slot);
						f:CreateUseButton(itemid,itemCount);
					end
				end
		end
	end

end

function f:EventHandler(event,...)
	
	if(event=="ZONE_CHANGED_NEW_AREA") then
		
		if(f:GetCurrentMapId() ~= 976 and f:GetCurrentMapId() ~= 971) then
			if(garrion_events_active==true) then
				f:UnregisterEvent("ZONE_CHANGED");
				garrion_events_active = false;
				
			end
		elseif(garrion_events_active==false) then
			f:RegisterEvent("ZONE_CHANGED");
			garrion_events_active = true;
			
		end
	
	elseif(event=="ZONE_CHANGED") then
		if(secure_buttons) then
			for i=1,3 do
				secure_buttons[i]:Hide();
			end
		end
		secure_button_count = 0;
		if(f:GetCurrentMapId() ~= 976 and f:GetCurrentMapId() ~= 971) then
			--work arround for the reloadui issue for now
			f:UnregisterEvent("ZONE_CHANGED");
			garrion_events_active = false;
			
		elseif(GetRealZoneText() ==L.SALVAGE_YARD) then
			f:RegisterEvent("BAG_UPDATE_DELAYED");			
			f:CheckBags("salvage");
		end
		
		
	elseif(event=="BAG_UPDATE_DELAYED") then
		if GetRealZoneText() ~=L.SALVAGE_YARD then
			f:UnregisterEvent("BAG_UPDATE_DELAYED");
		else
			 for i=1,3 do
				secure_buttons[i].counter:SetText(0);
				secure_buttons[i]:Hide();
			 end
			 secure_button_count = 0;
			 f:CheckBags("salvage");
		end
	
	elseif(event=="GARRISON_MISSION_LIST_UPDATE") then
		
		f:CheckMission(true);
	
	elseif(event=="GARRISON_MISSION_STARTED") then
		local missionid = ...;
		f:RemoveMission(missionid);
		
	elseif(event=="PLAYER_LOGOUT") then
		f:ScanForRemoval();
		
	elseif(event=="GOSSIP_SHOW") then
		if IsControlKeyDown() then return end
		if not UnitFactionGroup("target") then return end
		
		local bgid = GetFriendshipReputation();

		if bgid then
			for _,v in pairs(bodyguards) do
			  if v == bgid then
				CloseGossip();
				
			  end
			end
	
		end
		
	elseif(event=="ADDON_LOADED") then
		local arg1 = ...;
		--print (arg1);
		if(arg1 == "GarrisonMissonEnhanced") then	
			
			pname = GetUnitName("player", false).."-"..GetRealmName();
			save = GarrisonMissonEnhancedSave;
			if not GarrisonMissonEnhancedSave then 
				GarrisonMissonEnhancedSave = {};
				
				
			end
			if not GarrisonMissonEnhancedSave[pname] then
				GarrisonMissonEnhancedSave[pname] = {};
				
			end
			
			save = GarrisonMissonEnhancedSave;
			f:CheckMission(false);
			--f:UnregisterEvent("ADDON_LOADED");
			f:RegisterEvent("GARRISON_MISSION_LIST_UPDATE");
			f:RegisterEvent("GARRISON_MISSION_STARTED");
			f:RegisterEvent("PLAYER_LOGOUT");
			GarrionMissonEnhanceConfig:Init();
			f:CreateSecureButttons();
		
		elseif(arg1=="Blizzard_GarrisonUI") then
			--old_GarrisonMissionList_Update = GarrisonMissionList_Update;
			--GarrisonMissionList_Update = f.GarrisonMissionList_Update;
			if (not save["showchange"]) then
				StaticPopup_Show ("GarrisonMissonEnhancedChange");
				save["showchange"] = 1;
			end
			old_scroll = GarrisonMissionFrame.MissionTab.MissionList.listScroll.update;
			
			
				GarrisonMissionFrame.MissionTab.MissionList.listScroll.update = f.doscroll;
			
			hooksecurefunc(GarrisonMission,"OnShowMainFrame", f.GarrisonMissionList_Update);
			hooksecurefunc(GarrisonFollowerList,"UpdateData",UpdateFollowerTimeLeft);
			hooksecurefunc(GarrisonMission,"OnShowMainFrame",ShowMission);
			--UpdateData
			hooksecurefunc(GarrisonFollowerList,"UpdateData",f.FollowerListShow);
			hooksecurefunc("GarrisonLandingPageReport_GetShipments",f.UpdateShipments);
			--hooksecurefunc("GarrisonMissionComplete_Initialize",MissionComplete);
			--add only hook if activated
			oldfollowerrightclick = GarrisonFollowerListButton_OnClick;
			--todo unhook if not used, but first write a function who can handle all those hooks
			old_GarrisonMissionAlertFrame_ShowAlert = GarrisonMissionAlertFrame_ShowAlert;
			GarrisonMissionAlertFrame_ShowAlert = new_GarrisonMissionAlertFrame_ShowAlert;
			if(ns.config["QuickAssign"] == true) then
				f:ActivateFollowerHook();
			end
			if(ns.config["ShowQuickAssignWorker"] == true) then
			
				f.unassignworkbutton =  CreateFrame("button",nil, GarrisonBuildingFrame,"OptionsButtonTemplate");
				f.unassignworkbutton:SetText(L.UNASSIGN_WORK);
				f.unassignworkbutton:SetWidth(f.unassignworkbutton:GetTextWidth()+20);
				f.unassignworkbutton:SetPoint("BOTTOMRIGHT",GarrisonBuildingFrame,"BOTTOMRIGHT",0,0);
				f.unassignworkbutton:Show();
				f.unassignworkbutton:SetScript("onclick",f.unassignworker);
				f.assignworkbutton =  CreateFrame("button",nil, GarrisonBuildingFrame,"OptionsButtonTemplate");
				f.assignworkbutton:SetText(L.ASSIGN_WORK);
				f.assignworkbutton:SetWidth(f.assignworkbutton:GetTextWidth()+20);
				f.assignworkbutton:SetPoint("BOTTOMRIGHT",GarrisonBuildingFrame,"BOTTOMRIGHT",-(f.unassignworkbutton:GetWidth()),0);
				f.assignworkbutton:Show();
				f.assignworkbutton:SetScript("onclick",f.assignworker);
				
			end
			if ns.config["AutoCompleteMissions"] then
				ns.completer:CreateButton();
			end
		
		
		end
	
		
	
	end
		
	
	
end

function f:CreateOrderText(shipment,which)
	
	local extratext = shipment:CreateFontString( nil, "OVERLAY", "GameFontHighlightSmall" );
	if(which=="currentorder") then
		extratext:SetPoint("BOTTOM", 0, -45);
	else
		extratext:SetPoint("BOTTOM", shipment.currentorder,"BOTTOM",0,-12);
	end
	return extratext;
end

function f:UpdateShipments()
	if(ns.config["ShowWorkOrderTimes"]==false) then
		return
	end
	for i = 1, #self.Shipments do
	if(self.Shipments[i].buildingID) then
			local name, _, _, shipmentsReady, shipmentsTotal, creationTime, duration, timeleftString, _, _, _, _ = C_Garrison.GetLandingPageShipmentInfo(self.Shipments[i].buildingID);
			if (i>3) then
				local xpos = i%3
				if (xpos==0) then xpos=3 end
				self.Shipments[i]:SetPoint("TOPLEFT", -45+(105*xpos), -(115*math.ceil(i/3)));
			end
			if(name and shipmentsTotal and shipmentsReady<shipmentsTotal) then
				
				if not(self.Shipments[i].currentorder) then
					self.Shipments[i].currentorder = f:CreateOrderText(self.Shipments[i],"currentorder")
					self.Shipments[i].totalorder = f:CreateOrderText(self.Shipments[i],"totalorder")
				end
				local cur = duration-(time()-creationTime)
				self.Shipments[i].currentorder:SetText("next: "..f:CalcTimeLeft(cur));
				
				self.Shipments[i].totalorder:SetText("total: "..f:CalcTimeLeft(cur+((shipmentsTotal-shipmentsReady-1)*duration)));
			end
		end
	end
end


function f:assignworker()
	local buildings = C_Garrison.GetBuildings(LE_GARRISON_TYPE_6_0);
	local starttimer=0.1;
	for _,v in pairs(buildings) do
		local worker = C_Garrison.GetFollowerInfoForBuilding(v["plotID"]);
		if not (worker) then
			
			local workers = C_Garrison.GetPossibleFollowersForBuilding(LE_FOLLOWER_TYPE_GARRISON_6_0,v["plotID"]);
			for _,v2 in pairs(workers) do
				if not (v2["status"]) then
					C_Timer.After(starttimer, function ()
					
						C_Garrison.AssignFollowerToBuilding(v["plotID"],v2["followerID"]);
						local _,buildingname = C_Garrison.GetBuildingInfo(v["buildingID"]);
						
						print(string.format(L.WORKER_ASSIGNED,v2["name"],buildingname));
						end
					)
					
					starttimer=starttimer+0.6;
					break;
				end
			end
		end		
	end

end


function f:unassignworker()
	local buildings = C_Garrison.GetBuildings(LE_GARRISON_TYPE_6_0);
	local starttimer=0.1;
	for _,v in pairs(buildings) do
		local worker = C_Garrison.GetFollowerInfoForBuilding(v["plotID"]);
		if(worker) then
			C_Timer.After(starttimer, function ()
				local _,buildingname = C_Garrison.GetBuildingInfo(v["buildingID"]);
				C_Garrison.RemoveFollowerFromBuilding(v["plotID"]);
				print(string.format(L.WORKER_UNASSIGNED,worker,buildingname));
				end
				)
				starttimer=starttimer+0.6;
		end		
	end

end




f:OnLoad();
