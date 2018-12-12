----------------------------------------------
-- infBinds
----------------------------------------------

BINDING_HEADER_infBinds = "infBinds"
BINDING_CATEGORY_infAddons = "infAddons"

BINDING_NAME_INFBINDS0 = "Focus"
BINDING_NAME_INFBINDS1 = "Clear"
BINDING_NAME_INFBINDS2 = "Cancel"

_G["BINDING_NAME_CLICK infBinds0:LeftButton"] = "Focus"
_G["BINDING_NAME_CLICK infBinds1:LeftButton"] = "Clear"
_G["BINDING_NAME_CLICK infBinds2:LeftButton"] = "Cancel"

local function make(name, command)
	local btn = CreateFrame("Button", name, nil, "SecureActionButtonTemplate")
	btn:SetAttribute("type", "macro")
	btn:SetAttribute("macrotext", command)
	btn:RegisterForClicks("AnyDown")
end

make("infBinds0", "/focus [@mouseover,exists][]")
make("infBinds1", "/cleartarget\n/stopcasting")
make("infBinds2", "/cancelaura Path of Frost\n/cancelaura Hand of Protection\n/cancelaura Ice Block\n/cancelaura Bladestorm\n/cancelaura Dispersion\n/cancelaura Deterrence\n/script ToggleSheath()")

