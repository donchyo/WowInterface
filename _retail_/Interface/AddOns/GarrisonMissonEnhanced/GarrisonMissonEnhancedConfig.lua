local config = CreateFrame("Frame");
local config_follower = CreateFrame("Frame");
local config_work = CreateFrame("Frame");
local config_mission = CreateFrame("Frame");
local config2 = CreateFrame("Frame");
local colorconfig = CreateFrame("Frame");
GarrionMissonEnhanceConfig = config;
local defaultconf = {["GlobalConf"]=true,["TimeOnMission"]=true,["CounterTraits"]=true,["AutoPlace"]=true,["ShowTimeLeft"]=true,["FollowerRequired"]=true,["QuickAssign"]=true,
					["HideAlert"]=false,["ShowCounterFollower"]=true,["ShowItemlevelFollower"]=true,["ShowQuickAssignWorker"]=true,["ShowWorkOrderTimes"]=true,["HideFollowerUpgrade"]=true,
					["HideGarrisonAbility"]=false,["BodyguardGossipHide"]=false,["AutoCompleteMissions"]=false,["ShowSalvage"]=true,};
local event_changer = {["BodyguardGossipHide"]="GOSSIP_SHOW"};					
local defaultcolors = {["available"]={0,1,0,1},["onmission"]={0.8,0.83,0.03,1},["working"]={0,0,1,1},["inactive"]={0,0,0,1},["nocounter"]={1,0,0,1},}					
local ns = select( 2, ... )
local L = ns.L;
local lastattached={};
local lastcolorattached;

ns.config = {};
ns.colors = {};

local metatable = {};
local metatablecolors = {};
metatable.__index = function( inTable, inKey )
  value = defaultconf[inKey];
  inTable[ inKey ] = value;
  return value;
end


metatablecolors.__index = function( inTable, inKey )
  value = defaultcolors[inKey];
  inTable[ inKey ] = value;
  return value;
end


local function changedCallback(restore)

 local newR, newG, newB, newA;
 if restore then
 
   newR, newG, newB, newA = unpack(restore);
 else
  
   newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
 end

  local r, g, b, a = newR, newG, newB, newA;
  colorconfig[ColorPickerFrame.tochange.."swatch"]:SetVertexColor(r,g,b,a);

  ns.colors[ColorPickerFrame.tochange] = {r, g, b, a};
end

function colorconfig:ConfigColor_OnClick()
	
	local r,g,b,a = unpack(ns.colors[self.id]);
	ColorPickerFrame.tochange = self.id;
	ColorPickerFrame:SetColorRGB(r,g,b);
	ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (a ~= nil), a;
	ColorPickerFrame.previousValues = {r,g,b,a};
	
	ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc = 
	changedCallback, changedCallback, changedCallback;
	ColorPickerFrame:Hide(); 
	ColorPickerFrame:Show();

end

function config:CreateColorChoice(colorname,colortext)

	local  ConfigColor = CreateFrame( "Button", "GarrisonMissionEnhanced_Color"..colorname, colorconfig );
	colorconfig[colorname] = ConfigColor;
	ConfigColor.id = colorname;
	ConfigColor:SetHeight(40);
	ConfigColor:SetWidth(40);
	ConfigColor:SetScript("OnClick", colorconfig.ConfigColor_OnClick)
	if( not lastcolorattached) then
		ConfigColor:SetPoint( "TOPLEFT", 16, -16 );
	else
		ConfigColor:SetPoint("TOPLEFT", lastcolorattached,"BOTTOMLEFT", 0, 0);
	end
	
	
	local colorSwatch = ConfigColor:CreateTexture("GarrisonMissionEnhanced_ColorSwatch"..colorname, "OVERLAY")
	colorconfig[colorname.."swatch"] = colorSwatch;
	colorSwatch:SetWidth(19)
	colorSwatch:SetHeight(19)
	colorSwatch:SetTexture("Interface\\ChatFrame\\ChatFrameColorSwatch")
	colorSwatch:SetPoint("LEFT")
	colorSwatch:SetVertexColor(unpack(ns.colors[colorname]));
	
	
	local texture = ConfigColor:CreateTexture(nil, "BACKGROUND")
	texture:SetWidth(16)
	texture:SetHeight(16)
	texture:SetTexture(1, 1, 1)
	texture:SetPoint("CENTER", colorSwatch)
	texture:Show()
	
	local ConfigColorLabel = colorconfig:CreateFontString( nil, "ARTWORK", "GameFontHighlightSmall" );
	colorconfig[colorname.."label"]= ConfigColorLabel;
	ConfigColorLabel:SetText( "|c00dfb802"..colortext );
	ConfigColorLabel:SetPoint( "LEFT" , ConfigColor, "RIGHT",0,0);
	
	ConfigColor:Show();
	lastcolorattached = ConfigColor;
	
end

local function CreateCheckbox(wframe,button_name,button_text,button_helper_text)
	 local newcheckbox = CreateFrame( "CheckButton", "GarrisonMissionEnhanced_"..button_name, wframe, "InterfaceOptionsCheckButtonTemplate" );
	 wframe[button_name] = newcheckbox;
	 newcheckbox.id = button_name;
	 if( not lastattached[wframe.name]) then
		newcheckbox:SetPoint( "TOPLEFT", 16, -16 );
	else
		newcheckbox:SetPoint("TOPLEFT", lastattached[wframe.name],"BOTTOMLEFT", 0, -5);
	end
	 newcheckbox:SetScript("onClick",config.ChangeState);
	 _G[ newcheckbox:GetName().."Text" ]:SetText( "|c00dfb802"..button_text );
	 
	 lastattached[wframe.name] = newcheckbox;
	 
	 if(button_helper_text) then
		local newcheckboxexplain = wframe:CreateFontString( nil, "OVERLAY", "GameFontHighlight" );
		wframe[button_name.."Explain"] = newcheckboxexplain;
		newcheckboxexplain:SetPoint("TOPLEFT", lastattached[wframe.name],"BOTTOMLEFT", 0, 0)
		newcheckboxexplain:SetWidth(InterfaceOptionsFramePanelContainer:GetRight() - InterfaceOptionsFramePanelContainer:GetLeft() - 30);
		newcheckboxexplain:SetJustifyH("LEFT");
		newcheckboxexplain:SetText( button_helper_text);
		lastattached[wframe.name] = newcheckboxexplain;
	 end

end



function config:Init()
	
	if not(GarrisonMissonEnhancedColors) then
		GarrisonMissonEnhancedColors = defaultcolors;
		
	end
	
	setmetatable(GarrisonMissonEnhancedColors,metatablecolors);
	ns.colors = GarrisonMissonEnhancedColors;
	
	
	config2.name = "Garrison Enhanced";
	config2:SetScript("OnShow",function () InterfaceOptionsFrame_OpenToCategory(config); end);
	InterfaceOptions_AddCategory(config2);
	
	config.name = L.CONFIG_BASIC;
	config.parent="Garrison Enhanced";
	
	CreateCheckbox(config,"GlobalConf",L.CONFIG_GLOBAL_SAVE,L.CONFIG_GLOBAL_SAVE_EXPLAIN);
 	--CONFIG_HIDE_GARRISON_ABILITY
	CreateCheckbox(config,"HideGarrisonAbility",L.CONFIG_HIDE_GARRISON_ABILITY,L.CONFIG_REALOAD_UI);
	--CONFIG_SHOW_SALVAGE
	CreateCheckbox(config,"ShowSalvage",L.CONFIG_SHOW_SALVAGE,L.CONFIG_SHOW_SALVAGE_EXPLAIN);
	
	
	
	
	
	InterfaceOptions_AddCategory(config);
	
	config_mission.name = L.CONFIG_MISSION;
	config_mission.parent = config2.name;
	
	CreateCheckbox(config_mission,"TimeOnMission",L.CONFIG_ON_MISSION);
	CreateCheckbox(config_mission,"CounterTraits",L.CONFIG_COUNTER_TRAIT,L.CONFIG_COUNTER_TRAIT_EXPLAIN);
	CreateCheckbox(config_mission,"AutoPlace",L.CONFIG_AUTO_PLACE_SIMPLE,L.CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN);
	CreateCheckbox(config_mission,"FollowerRequired",L.CONFIG_FOLLOWER_REQUIRED);
	CreateCheckbox(config_mission,"QuickAssign",L.CONFIG_FAST_ASSIGN,L.CONFIG_FAST_ASSIGN_EXPLAIN);
	CreateCheckbox(config_mission,"HideAlert",L.CONFIG_HIDE_ALERT);
	--AutoCompleteMissions
	CreateCheckbox(config_mission,"AutoCompleteMissions",L.CONFIG_MISSION_COMPLETE_BUTTON,L.CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN.."|n"..L.CONFIG_REALOAD_UI);
	
	InterfaceOptions_AddCategory(config_mission);
	
	
	config_follower.name = L.CONFIG_FOLLOWER;
	config_follower.parent = config2.name;
	
	CreateCheckbox(config_follower,"ShowTimeLeft",L.CONFIG_SHOW_TIME_LEFT);
	CreateCheckbox(config_follower,"ShowCounterFollower",L.CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB);
	CreateCheckbox(config_follower,"ShowItemlevelFollower",L.CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB);
	--HideFollowerUpgrade
	CreateCheckbox(config_follower,"HideFollowerUpgrade",L.CONFIG_HIDE_FOLLOWER_UPGRADE);
	--BodyguardGossipHide
	CreateCheckbox(config_follower,"BodyguardGossipHide",L.CONFIG_BODYGUARD_GOSSIP);
	
	InterfaceOptions_AddCategory(config_follower);
	
	config_work.name = L.CONFIG_WORK_ORDER;
	config_work.parent = config2.name;
	
	CreateCheckbox(config_work,"ShowQuickAssignWorker",L.CONFIG_QUICK_ASSIGN_WORKER.."|n("..L.CONFIG_REALOAD_UI..")");
	CreateCheckbox(config_work,"ShowWorkOrderTimes",L.CONFIG_WORK_ORDER_TIMES.."|n("..L.CONFIG_REALOAD_UI..")");
	
	InterfaceOptions_AddCategory(config_work);
	
	colorconfig.name = L.CONFIG_COLORS;
	colorconfig.parent = config2.name;
	colorconfig:SetHeight(10);
	
	config:CreateColorChoice("available",L.CONFIG_AVAILABLE);	
	config:CreateColorChoice("onmission",L.CONFIG_ONMISSION);
	
	config:CreateColorChoice("working",L.CONFIG_WORKING);
	config:CreateColorChoice("inactive",L.CONFIG_INACTIVE);
	config:CreateColorChoice("nocounter",L.CONFIG_NOCOUNTER);


	InterfaceOptions_AddCategory(colorconfig);

	if not(GarrisonMissonEnhancedGlobalConfig) then
		GarrisonMissonEnhancedGlobalConfig =  defaultconf;
		GarrisonMissonEnhancedLocalConfig = defaultconf;
	end
	if not(GarrisonMissonEnhancedLocalConfig) then
		GarrisonMissonEnhancedLocalConfig = defaultconf;
	end
	
	
	setmetatable(GarrisonMissonEnhancedGlobalConfig,metatable);
	setmetatable(GarrisonMissonEnhancedLocalConfig,metatable);
	
		
	
	if(GarrisonMissonEnhancedLocalConfig.GlobalConf==true) then
		ns.config = GarrisonMissonEnhancedGlobalConfig;
	else
		ns.config = GarrisonMissonEnhancedLocalConfig;
	end
	config:SetCurrentConfig();
	if (ns.config["HideGarrisonAbility"] == true) then
		DraenorZoneAbilityFrame:Hide()
		DraenorZoneAbilityFrame.SpellButton:Hide()
	end
	if not ns.config.frame_secure_pos then
		ns.config.frame_secure_pos = {};
	end
end

function config:hookhandler(enabled)
	if(ns.main.rightclickhook == true and enabled==false) then
		ns.main:DeactivateFollowerHook();
	elseif(ns.main.rightclickhook == false and enabled == true) then
		if (IsAddOnLoaded("Blizzard_GarrisonUI")) then
			ns.main:ActivateFollowerHook();
		end
	end
end

function config:SetCurrentConfig()
	for key, _ in pairs(defaultconf) do
		_G["GarrisonMissionEnhanced_"..key]:SetChecked(ns.config[key]);
		 if event_changer[key] then
			
			config:ChangeEvents(event_changer[key],ns.config[key])
		end
		
		if(key == "QuickAssign") then
			config:hookhandler(ns.config[key]);
			
			
		end
	end
end

function config:ChangeEvents(event,reg)

	if reg == true then
		ns.main:RegisterEvent(event)
	else
		ns.main:UnregisterEvent(event)
	end
end

function config:ChangeState()
	if(self.id=="GlobalConf") then
		GarrisonMissonEnhancedLocalConfig["GlobalConf"] = self:GetChecked();
		if(self:GetChecked()==true) then
			ns.config = GarrisonMissonEnhancedGlobalConfig;
		else
			if not(GarrisonMissonEnhancedLocalConfig) then
				GarrisonMissonEnhancedLocalConfig = GarrisonMissonEnhancedGlobalConfig;
				
				
			end
			ns.config = GarrisonMissonEnhancedLocalConfig;
		end
		config:SetCurrentConfig();
	else
		ns.config[self.id] = self:GetChecked();
		if event_changer[self.id] then
			config:ChangeEvents(event_changer[self.id],self:GetChecked())
			
		
		end
		if(self.id=="QuickAssign") then
			config:hookhandler(self:GetChecked());
		end
	end
end