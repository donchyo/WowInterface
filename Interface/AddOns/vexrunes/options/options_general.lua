function vexrunes.panel_general()
	return { 
		type = "group",
		args = {
			grpfill = {
				name = "Rune filling and sorting behavior",
				order=10, type ="group", dialogInline = true,
				args = {
					fill = {
						name = "Filling",
						order=1, type = "select", style = "dropdown",
						values = {["A"]="Left to right", ["B"]="Right to left", ["C"]="Top to bottom", ["D"]="Bottom to top"},
						set = function(self,key) vexrunes_setRuneFilling(key) vexrunes.initialize(true) end,
						get = function() return vexrunes_getRuneFilling() end,
						},
					order = {
						name = "Sort Runes by cooldown",
						order=2, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["layout"]["runes"]["sortByCD"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["sortByCD"] end,
						},
					orderInvert = {
						name = "Invert sort order",
						order=3, type = "toggle", width="full",
						disabled = not(vexrunes_parameters["layout"]["runes"]["sortByCD"]),
						set = function(self,key) vexrunes_parameters["layout"]["runes"]["sortByCDInvert"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["sortByCDInvert"] end,
						},
					},
				},
			spaceruneorder = {name = "\n", type="description", order=21},
			
			grpsize = {
				name = "Rune Size",
				order=30, type ="group", dialogInline = true,
				args = {
					width = {
						name = "Width",
						order=13, type = "range",
						desc = "Sets the width of the runes",
						step = 1, min = 1, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["size"]["width"]=val vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["size"]["width"] end
						},
					height = {
						name = "Height",
						order=14, type = "range",
						desc = "Sets the height of the runes",
						step = 1, min = 1, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["size"]["height"]=val vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["size"]["height"] end
						},
					},
				},
			spacesize = {name = "\n", type="description", order=31},
			
			grpbg = {
				name = "Background (Shown wenn rune is on cooldown)",
				order=40, type ="group", dialogInline = true,
				args = {
					background = {
						name = "Color",
						desc = "Color for the background that is shown when a rune is reloading",
						order=1, type = "color",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["r"],
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["g"],
							vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["b"] end,
						},
					bgopacity = {
						name = "Opacity %",
						order=2, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["shadow"]["a"]*100 end
						},
					shadowdefault = {
						name = "Set to default",
						order=3, type = "execute",
						func = function(info,val) vexrunes_load_color("shadow") vexrunes.initialize(true) end,
						},
					},
				},
			space_4 = {name = "\n", type="description", order=41},
							
			grprunes = {
				name = "Rune Colors",
				order=50, type ="group", dialogInline = true,
				args = {
					texture = {
						name = "Texture Pack 1",
						order=1, type = "select",
						dialogControl = "LSM30_Background",
						desc = "Sets the frame's background",
						values = vexrunes.LSM:HashTable("background"),
						set = function(self,key)
							vexrunes_parameters["layout"]["runes"]["bg"]["texture"] = key
							vexrunes_parameters["layout"]["runes"]["bg"]["texture2"] = ""
							vexrunes_parameters["layout"]["runes"]["bg"]["texture2usage"] = false
							vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["texture"] end,
						},
					texture2 = {
						name = "Texture Pack 2",
						order=2, type = "select",
						dialogControl = "LSM30_Statusbar",
						desc = "Sets the frame's background-texture",
						values = vexrunes.LSM:HashTable("statusbar"),
						set = function(self,key)
							vexrunes_parameters["layout"]["runes"]["bg"]["texture"] = ""
							vexrunes_parameters["layout"]["runes"]["bg"]["texture2"] = key
							vexrunes_parameters["layout"]["runes"]["bg"]["texture2usage"] = true
							vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["texture2"] end,
						},
					texturebreak = {name ="\n", type = "description", order=3},
					usedcolor = {
						name = "Blink color",
						order=10, type = "color",
						desc = "Color for the blink when a rune has been used",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["r"],
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["g"],
							vexrunes_parameters["layout"]["runes"]["bg"]["used"]["b"] end,
						},
					usedopacity = {
						name = "Opacity %",
						order=11, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["used"]["a"]*100 end
						},
					useddefault = {
						name = "Set to default",
						order=12, type = "execute",
						func = function(info,val) vexrunes_load_color("used") vexrunes.initialize(true) end,
						},
					blood = {
						name = "Blood Rune",
						order=21, type = "color",
						desc = "Color for the blood Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["r"],
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["g"],
							vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["b"] end,
						},
					bloodopacity = {
						name = "Opacity %",
						order=22, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["blood"]["a"]*100 end
						},
					blooddefault = {
						name = "Set to default",
						order=23, type = "execute",
						func = function(info,val) vexrunes_load_color("blood") vexrunes.initialize(true) end,
						},
					frost = {
						name = "Frost Rune",
						order=31, type = "color",
						desc = "Color for the frost Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["r"],
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["g"],
							vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["b"] end,
						},
					frostopacity = {
						name = "Opacity %",
						order=32, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["frost"]["a"]*100 end
						},
					frostdefault = {
						name = "Set to default",
						order=33, type = "execute",
						func = function(info,val) vexrunes_load_color("frost") vexrunes.initialize(true) end,
						},
					unholy = {
						name = "Unholy Rune",
						order=41, type = "color",
						desc = "Color for the unholy Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["r"],
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["g"],
							vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["b"] end,
						},
					unholytopacity = {
						name = "Opacity %",
						order=42, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["bg"]["unholy"]["a"]*100 end
						},
					unholydefault = {
						name = "Set to default",
						order=43, type = "execute",
						func = function(info,val) vexrunes_load_color("unholy") vexrunes.initialize(true) end,
						},
					},
				},	
			space_5 = {name = "\n", type="description", order=51},
					
			grprunesFillEffect = {
				name = "Fill Effect",
				order=60, type ="group", dialogInline = true,
				args = {
					info = {name ="This Effect pops up on the runes when they're reload animation is nearly done.\n", type = "description", order=1},
					hide = {
						name = "Activate this effect",
						order=2, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["layout"]["runes"]["fillEffect"]["active"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["active"] end,
						},
					texture = {
						name = "Texture Pack 1",
						order=3, type = "select",
						dialogControl = "LSM30_Background",
						desc = "Sets the frame's background",
						values = vexrunes.LSM:HashTable("background"),
						set = function(self,key)
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture"] = key
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2"] = ""
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2usage"] = false
							vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture"] end,
						},
					texture2 = {
						name = "Texture Pack 2",
						order=4, type = "select",
						dialogControl = "LSM30_Statusbar",
						desc = "Sets the frame's background-texture",
						values = vexrunes.LSM:HashTable("statusbar"),
						set = function(self,key)
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture"] = ""
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2"] = key
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2usage"] = true
							vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["texture2"] end,
						},
					duration = {
						name = "Duration of the effect",
						order=5, type = "range",
						desc = "Shows x Seconds before the rune is off colldown",
						step = 0.1, min = 0.1, max = 5,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["fillEffect"]["duration"]=val vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["duration"] end
						},
					texturebreak = {name ="\n", type = "description", order=6},
					blood = {
						name = "Blood Rune",
						order=21, type = "color",
						desc = "Color for the blood Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["r"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["g"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["b"] end,
						},
					bloodopacity = {
						name = "Opacity %",
						order=22, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["blood"]["a"]*100 end
						},
					blooddefault = {
						name = "Set to default",
						order=23, type = "execute",
						func = function(info,val) vexrunes_load_FillEffectColor("blood") vexrunes.initialize(true) end,
						},
					frost = {
						name = "Frost Rune",
						order=31, type = "color",
						desc = "Color for the frost Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["r"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["g"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["b"] end,
						},
					frostopacity = {
						name = "Opacity %",
						order=32, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["frost"]["a"]*100 end
						},
					frostdefault = {
						name = "Set to default",
						order=33, type = "execute",
						func = function(info,val) vexrunes_load_FillEffectColor("frost") vexrunes.initialize(true) end,
						},
					unholy = {
						name = "Unholy Rune",
						order=41, type = "color",
						desc = "Color for the unholy Rune",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["r"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["g"],
							vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["b"] end,
						},
					unholytopacity = {
						name = "Opacity %",
						order=42, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["fillEffect"]["unholy"]["a"]*100 end
						},
					unholydefault = {
						name = "Set to default",
						order=43, type = "execute",
						func = function(info,val) vexrunes_load_FillEffectColor("unholy") vexrunes.initialize(true) end,
						},
					},
				},		
			space_6 = {name = "\n", type="description", order=61},
					
			grpborder = {
				name = "Border",
				order=70, type ="group", dialogInline = true,
				args = {
					color = {
						name = "Color",
						order=1, type = "color",
						set = function(info,r,g,b,a)
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["r"]=r
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["g"]=g
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["b"]=b
							vexrunes.initialize(true) end,
						get = function() return 
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["r"],
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["g"],
							vexrunes_parameters["layout"]["runes"]["border"]["color"]["b"] end,
						},
					opacity = {
						name = "Opacity %",
						order=2, type = "range",
						desc = "Sets the opacity",
						step = 5, min = 0, max = 100,
						set = function(info,val) vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"]=val/100 vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["border"]["color"]["a"]*100 end
						},
					hide = {
						name = "Color the borders like the runes",
						order=3, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["layout"]["runes"]["border"]["likebg"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["layout"]["runes"]["border"]["likebg"] end,
						},
					},
				},
			space_7 = {name = "\n", type="description", order=71},
			
			}
		}
end

function vexrunes_setRuneFilling(val)
	if val == "A" then 		-- Left to right
		vexrunes_parameters["layout"]["runes"]["verticalfill"] = false
		vexrunes_parameters["layout"]["runes"]["fillbottom"] = false
	elseif val == "B" then 	-- Right to Left
		vexrunes_parameters["layout"]["runes"]["verticalfill"] = false
		vexrunes_parameters["layout"]["runes"]["fillbottom"] = true
	elseif val == "C" then 	-- Top to bottom
		vexrunes_parameters["layout"]["runes"]["verticalfill"] = true
		vexrunes_parameters["layout"]["runes"]["fillbottom"] = false
	else 					-- Bottom to top
		vexrunes_parameters["layout"]["runes"]["verticalfill"] = true
		vexrunes_parameters["layout"]["runes"]["fillbottom"] = true
	end
end

function vexrunes_getRuneFilling()
	if not(vexrunes_parameters["layout"]["runes"]["verticalfill"]) and not(vexrunes_parameters["layout"]["runes"]["fillbottom"]) then 	-- Left to right
		return "A"
	elseif not(vexrunes_parameters["layout"]["runes"]["verticalfill"]) and vexrunes_parameters["layout"]["runes"]["fillbottom"] then 	-- Right to Left
		return "B"
	elseif vexrunes_parameters["layout"]["runes"]["verticalfill"] and not(vexrunes_parameters["layout"]["runes"]["fillbottom"]) then 	-- Top to bottom
		return "C"
	else 																																-- Bottom to top
		return "D"
	end
end

function vexrunes_load_color(color)
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["r"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["r"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["g"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["g"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["b"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["b"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["a"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["a"]
end
function vexrunes_load_FillEffectColor(color)
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["r"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["r"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["g"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["g"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["b"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["b"]
	vexrunes_parameters["layout"]["runes"]["fillEffect"][color]["a"]=vexrunes_defaults["layout"]["runes"]["fillEffect"][color]["a"]
end

function vexrunes_setrune(number, key)
	vexrunes_parameters["layout"]["runes"]["order"][tostring(number)] = tonumber(key)
	vexrunes.configurRuneFrameBG(number)
end

function vexrunes_getrune(number)
	return tostring(vexrunes_parameters["layout"]["runes"]["order"][tostring(number)])
end