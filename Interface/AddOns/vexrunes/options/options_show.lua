function vexrunes.panel_show()
	return { 
		type = "group",
		order= 5,
		args = {
			grpallow = {
				name = "General Settings",
				order=1, type ="group", dialogInline = true,
				args = {
					activate = {
						name = "Enable addon",
						order=10, type = "toggle", width="full",
						desc = "Show",
						set = function(self,key) vexrunes_parameters["enable"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["enable"] end,
						},
					},
				},
			frame_space1 = {name ="\n", type = "description", order=2},
			
			grpshow = {
				name = "Show Settings",
				order=3, type ="group", dialogInline = true,
				args = {	
					vehiclehide = {
						name = "Hide in vehicle",
						order=1, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["vehiclehide"]=key vexrunes_initialize(true) end,
						get = function() return vexrunes_parameters["vehiclehide"] end,
						},
					infightonly = {
						name = "Hide when 'out of combat'",
						order=30, type = "toggle", width="double",
						set = function(self,key) vexrunes_parameters["infightshow"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["infightshow"] end,
						},
					targetOverride = {
						name = "But show when targeting any unit",
						order=40, type = "toggle", width="double", disabled=not(vexrunes_parameters["infightshow"]),
						set = function(self,key) vexrunes_parameters["targetSetShow"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["targetSetShow"] end,
						},
					targetAttOverride = {
						name = "But show when targeting an attackable unit",
						order=41, type = "toggle", width="double", disabled=not(vexrunes_parameters["infightshow"]),
						set = function(self,key) vexrunes_parameters["targetAttackableSetShow"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["targetAttackableSetShow"] end,
						},
					space = {name ="\n\n\n", type = "description", order=45},
					petBattleHide = {
						name = "Hide when in a pet battle",
						order=50, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["petBattleHide"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["petBattleHide"] end,
						},
					space2 = {name ="\n\n\n", type = "description", order=51},
					vehiclehide = {
						name = "Hide in vehicle",
						order=60, type = "toggle", width="full",
						set = function(self,key) vexrunes_parameters["vehiclehide"]=key vexrunes.initialize(true) end,
						get = function() return vexrunes_parameters["vehiclehide"] end,
						},
					},
				},
			}
		}
end
