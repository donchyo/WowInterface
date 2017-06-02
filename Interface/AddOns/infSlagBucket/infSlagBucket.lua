----------------------------------------------
-- infSlagBucket
----------------------------------------------

infSlagBucket = LibStub("AceAddon-3.0"):NewAddon("infSlagBucket")

function infSlagBucket:OnInitialize()
	--HelmSaver
	self.db = LibStub("AceDB-3.0"):New("infSlagBucketDB")

	local function refreshConfig()
		self.callbacks:Fire("OnProfileUpdate")
	end

	self.db.RegisterCallback(self, "OnProfileChanged", refreshConfig)
	self.db.RegisterCallback(self, "OnProfileCopied", refreshConfig)
	self.db.RegisterCallback(self, "OnProfileReset", refreshConfig)	

	self:MakeShitHappen()
end

function infSlagBucket:MakeShitHappen()
	local function Update()
		local helm = infSlagBucket.hcb:GetChecked()
		local cloak = infSlagBucket.ccb:GetChecked()
		ShowHelm(helm)
		ShowCloak(cloak)
	end

	local OnCheckBoxClick = function()
		Update()
		if PaperDollEquipmentManagerPane.selectedSetName then
			PaperDollEquipmentManagerPaneSaveSet:Enable()
			PaperDollEquipmentManagerPaneEquipSet:Enable()
		end
	end
    
	local hcb = CreateFrame("CheckButton", nil, CharacterHeadSlot, "UICheckButtonTemplate")
	hcb:SetSize(26, 26)
	hcb:SetPoint("RIGHT", CharacterHeadSlotPopoutButton, "LEFT", -13, 0)
	hcb:SetScript("OnClick", OnCheckBoxClick)
	hcb:SetChecked(ShowingHelm())
	infSlagBucket.hcb = hcb
    
	local ccb = CreateFrame("CheckButton", nil, CharacterBackSlot, "UICheckButtonTemplate")
	ccb:SetSize(26, 26)
	ccb:SetPoint("RIGHT", CharacterBackSlotPopoutButton, "LEFT", -13, 0)
	ccb:SetScript("OnClick", OnCheckBoxClick)
	ccb:SetChecked(ShowingCloak())
	infSlagBucket.ccb = ccb

	PaperDollFrame:HookScript("OnShow", function(self, btn)
		hcb:SetChecked(ShowingHelm())
		ccb:SetChecked(ShowingCloak())
	end)

	hooksecurefunc("GearSetButton_OnClick", function(self, btn)
		PaperDollEquipmentManagerPaneEquipSet:Enable()
	end)

	hooksecurefunc("UseEquipmentSet", function(name)
		if self.db.profile[name] and not InCombatLockdown() then
			hcb:SetChecked(self.db.profile[name]["helm"])
			ccb:SetChecked(self.db.profile[name]["cloak"])
			Update()
		end
	end)

	hooksecurefunc("SaveEquipmentSet", function(name, icon)
		self.db.profile[name] = self.db.profile[name] or {}
		self.db.profile[name]["helm"] = hcb:GetChecked()
		self.db.profile[name]["cloak"] = ccb:GetChecked()
	end)

	hooksecurefunc("DeleteEquipmentSet", function(name)
		self.db.profile[name] = nil
	end)
end

