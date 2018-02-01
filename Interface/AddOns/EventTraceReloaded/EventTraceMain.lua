ETR = LibStub("AceAddon-3.0"):NewAddon("EventTraceReloaded", "AceHook-3.0","AceEvent-3.0","AceTimer-3.0");
ETR_Frame = nil;

local AceGUI = LibStub("AceGUI-3.0");
local ETR_SimpleGrp = nil;
local scroll = nil
local WoWversion = 60200
local ETRdb = nil;
local timer = nil

function ETR:OnInitialize()
	ETRdb = LibStub("AceDB-3.0"):New("EventTraceReloaded",nil,"Default")
end

function ETR:EventTraceFrameOnShow(frame)
	ETR:ShowFrame()
	timer = ETR:ScheduleRepeatingTimer("Timersub", 5)
end

function ETR:Timersub()
	ETR:Load_Ignored_Events()
end

function ETR:EventTraceFrameOnHide(frame)
	if ETR_Frame:IsVisible() then
		ETR_Frame:Release()
	end
	--AceGUI:Release(ETR_Frame)
	self:CancelTimer(timer)
	ETRdb.global.startup = nil
end

function ETR:OnEnable()
	UIParentLoadAddOn("Blizzard_DebugTools");
	
	-- Posthooks
	self:SecureHook("EventTraceFrame_RemoveEvent")
	
	-- Prehooks, lets us know we modified the state of the EVT frame
	ETR:HookScript(EventTraceFrame,"OnShow","EventTraceFrameOnShow")
	ETR:HookScript(EventTraceFrame,"OnHide","EventTraceFrameOnHide")
	
	if (ETRdb.global.startup) then
		EventTraceFrame_HandleSlashCmd("")
		ETR:ShowFrame()
		timer = ETR:ScheduleRepeatingTimer("Timersub", 5)
	end
	
	EventTraceFrame_Update();
end

-- Create the main frame
function ETR:ShowFrame()
	
	-- Prevent redrawing of the same frame
	if (not ETR_Frame or ETR_Frame:IsVisible() == nil) then
		ETR_Frame = AceGUI:Create("Frame")
		ETR_Frame:SetTitle("ETR")
		ETR_Frame:SetCallback("OnClose", function(widget) ETRdb.global.startup = nil AceGUI:Release(widget) end)
		ETR_Frame:SetLayout("Flow")
		ETR_Frame:SetWidth("250")
		ETR_Frame:SetHeight("400")
		
		-- Checkbox
		local ETRstartup_checkbox = AceGUI:Create("CheckBox")
		ETRstartup_checkbox:SetLabel("Load at start")
		ETRstartup_checkbox:SetType("checkbox")
		ETRstartup_checkbox:SetValue(ETRdb.global.startup)
		ETRstartup_checkbox:SetCallback("OnValueChanged", function() ETRdb.global.startup = ETRstartup_checkbox:GetValue() end)
		ETR_Frame:AddChild(ETRstartup_checkbox)
		
		-- Scroll container
		ETR_SimpleGrp = AceGUI:Create("SimpleGroup")
		ETR_SimpleGrp:SetFullWidth(true)
		ETR_SimpleGrp:SetFullHeight(true)
		ETR_SimpleGrp:SetLayout("Fill")
		ETR_Frame:AddChild(ETR_SimpleGrp)
		
		
		
		-- Scroll frame
		scroll = AceGUI:Create("ScrollFrame")
		scroll:SetLayout("Flow")
		ETR_SimpleGrp:AddChild(scroll)
		
		-- Load saved ignored events
		ETR:Load_Ignored_Events()
		
	end
	
	
	ETR:UpdateFrame()
end


-- Loads from DB to EventTraceFrame.ignoredEvents
function ETR:Load_Ignored_Events()
	for event,_ in pairs(ETRdb.profile) do
			if (event ~= "__orderedIndex") then
				EventTraceFrame.ignoredEvents[event] = 1
				
				-- Remove matching all events of this type [BLIZZARD CODE]
				for i = EventTraceFrame.lastIndex, 1, -1  do
					if (EventTraceFrame.events[i] == event) then
						EventTraceFrame_RemoveEvent(i);
					end
				end
				
				-- Consolidate "Elapsed" lines [BLIZZARD CODE]
				local lastWasElapsed = false;
				for i = EventTraceFrame.lastIndex, 1, -1  do
					if (EventTraceFrame.times[i] == "Elapsed") then
						if (lastWasElapsed) then
							EventTraceFrame.timeSinceLast[i] = EventTraceFrame.timeSinceLast[i] + EventTraceFrame.timeSinceLast[i+1];
							EventTraceFrame.framesSinceLast[i] = EventTraceFrame.framesSinceLast[i] + EventTraceFrame.framesSinceLast[i+1];
							EventTraceFrame.events[i] = string.format(string.format("%.3f sec", EventTraceFrame.timeSinceLast[i]) .. " - %d frame(s)", EventTraceFrame.framesSinceLast[i]);
							EventTraceFrame_RemoveEvent(i+1);
						end
						lastWasElapsed = true;
					else
						lastWasElapsed = false;
					end
				end
			end
	end
end

-- Iterates "EventTraceFrame.ignoredEvents" and populates the main ETR frame
function ETR:UpdateFrame()
	scroll:ReleaseChildren()
	for i,v in orderedPairs(EventTraceFrame.ignoredEvents) do
		local editbox = AceGUI:Create("InteractiveLabel")
		editbox:SetText(i)
		--editbox:SetImage("Interface\\Battlefieldframe\\Battleground-Horde.blp")
		editbox:SetCallback("OnClick", function() 
		EventTraceFrame.ignoredEvents[i] = nil;
		ETRdb.profile[i] = nil
		EventTraceFrame_Update();
		ETR:UpdateFrame() end)
		scroll:AddChild(editbox)
	end
end
   
function ETR:EventTraceFrame_RemoveEvent(i)
	
	-- Save newly removed event to DB
	for i,v in orderedPairs(EventTraceFrame.ignoredEvents) do
		ETRdb.profile[i] = 1
	end
	
	ETR:UpdateFrame()
end

