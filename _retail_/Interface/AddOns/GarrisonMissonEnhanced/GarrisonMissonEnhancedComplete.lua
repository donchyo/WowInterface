local f = CreateFrame("Frame");
local ns = select( 2, ... )
local L = ns.L;
ns.completer = f
local completed;
local counter;
local startedid;
local rechecktimer;
function f:CreateButton()

	f.button =  CreateFrame("button",nil, GarrisonMissionFrameMissions.CompleteDialog,"OptionsButtonTemplate");
	f.button:SetText(L.COMPLETE_ALL_BUTTON);
	f.button:SetWidth(f.button:GetTextWidth()+20);
	f.button:SetPoint("BOTTOM",GarrisonMissionFrameMissions.CompleteDialog.BorderFrame.ViewButton,"BOTTOM",0,-40);
	f.button:Show();
	f.button:SetScript("onclick",f.CompleteAll);
	f.button:SetFrameStrata("DIALOG")
	--f:RegisterEvent("GARRISON_MISSION_COMPLETE_RESPONSE");
end



function f:EventHandler(event,...)

	if ( event == "GARRISON_MISSION_COMPLETE_RESPONSE" ) then
		local missionID, canComplete, succeeded=...
		if(missionID==startedid  or startedid==0) then
	
				if(counter==0) then
					f:UnregisterEvent("GARRISON_MISSION_COMPLETE_RESPONSE");
					rechecktimer:Cancel();
					print(L.MISSION_FINISH_STOP);
				else
					C_Garrison.MarkMissionComplete(completed[counter]["missionID"]);
					C_Garrison.MissionBonusRoll(completed[counter]["missionID"]);
					startedid=completed[counter]["missionID"];
				
				end
		
		end
	end
end

function f:Recheck()
	startedid=0;
	
	completed = C_Garrison.GetCompleteMissions();
	counter = #completed
	f:EventHandler("GARRISON_MISSION_COMPLETE_RESPONSE",0);
	
end



--C_Garrison.MarkMissionComplete(
function f:CompleteAll()
	print(L.MISSION_FINISH_START);
	GarrisonMissionFrameMissions.CompleteDialog:Hide();
	f:RegisterEvent("GARRISON_MISSION_COMPLETE_RESPONSE");
	rechecktimer = C_Timer.NewTicker(0.2,f.Recheck )
	
end


 f:SetScript("OnEvent",f.EventHandler);
f:RegisterEvent("GARRISON_MISSION_COMPLETE_RESPONSE");