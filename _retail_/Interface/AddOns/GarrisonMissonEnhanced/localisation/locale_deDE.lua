if ( GetLocale() ~= "deDE" ) then
	return;
end
local ns = select( 2, ... );
ns.L = {
	ARMOR = "Rüstung", -- Needs review
	ASSIGN_WORK = "Weise Anhänger", -- Needs review
	COLOR_CHANGE = "Diese einmalige Nachricht soll darüber informieren, dass Status und Verfügbarkeit von Anhängern, die eine Bedrohung kontern könnten, von jetzt an durch verschiedene Farben gekennzeichnet sein werden -> eigene Farben einstellbar unter 'Farbeinstellungen'. Es besteht derzeit noch ein Problem, über das man unter 'Grundeinstellungen' weiteres nachlesen kann.", -- Needs review
	COMPLETE_ALL_BUTTON = "Alle Missionen abgeschlossen", -- Needs review
	CONFIG_AUTO_PLACE_SIMPLE = "Setzt Anhänger automatisch ein. (Mission startet nicht automatisch.)",
	CONFIG_AUTO_PLACE_SIMPLE_EXPLAIN = "Kontert nur ein vorhandener Anhänger eine Missionseigenschaft, wird er automatisch eingesetzt - bei mehreren möglichen Kontern bleibt der Slot frei und muss manuell besetzt werden.",
	CONFIG_AVAILABLE = "verfügbar", -- Needs review
	CONFIG_BASIC = "Grundeinstellungen",
	CONFIG_BODYGUARD_GOSSIP = "Dont show the gossip frame for the body guard on click,|n you can override this with holding down ctrl while clicking", -- Requires localization
	CONFIG_COLORS = "Farbeinstellungen", -- Needs review
	CONFIG_COUNTER_TRAIT = "Zeigt die Gegnereigenschaften einer Mission an und ob ein Anhänger sie kontern kann.", -- Needs review
	CONFIG_COUNTER_TRAIT_EXPLAIN = "Ob ein konternder Anhänger gerade arbeitet, unterwegs ist, deaktiviert oder verfügbar, wird durch verschiedene, einstellbare Farben gekennzeichnet. Derzeit gibt es leider noch folgendes Problem: Tritt bei einer Mission eine Gegnereigenschaft doppelt auf und man hat 2 konternde Anhänger, von denen einer frei verfügbar ist und einer unterwegs, dann wird unter dem einen Icon angezeigt, dass ein Konter frei ist und ein Konter auf Mission - für das zweite (identische) Icon wird angezeigt, dass man überhaupt keinen konternden Anhänger in den eigenen Reihen hat. Haben beide konternde Anhänger den gleichen Status, funktioniert die Anzeige korrekt.", -- Needs review
	CONFIG_FAST_ASSIGN = "Ermöglicht das Zuweisen/Zurückziehen eines Anhängers per Rechtsklick.",
	CONFIG_FAST_ASSIGN_EXPLAIN = "Bei einer geöffneten Mission lassen sich freie Anhänger nun per rechtem Mausklick der Mission zuweisen oder von der Mission zurückziehen. In allen anderen Fällen (z.B unterwegs/keine geöffnete Einzelmission) öffnet sich durch Rechtsklick weiterhin das normale Kontextmenü.",
	CONFIG_FOLLOWER = "Anhänger", -- Needs review
	CONFIG_FOLLOWER_REQUIRED = "Zeigt an, wieviele Anhänger eine Mission benötigt.",
	CONFIG_GLOBAL_SAVE = "Globale Einstellungen",
	CONFIG_GLOBAL_SAVE_EXPLAIN = "Bei gesetztem Häkchen gelten die Einstellungen für alle Charaktere. Entferne das Häkchen, wenn für diesen Charakter individuelle Einstellungen gelten sollen.",
	CONFIG_HIDE_ALERT = "Verbirgt Pop-up-Nachrichten, während man in einer Instanz ist.", -- Needs review
	CONFIG_HIDE_FOLLOWER_UPGRADE = "Hide the follower confirmation dialog on upgrading", -- Requires localization
	CONFIG_HIDE_GARRISON_ABILITY = "Verstecke den Garnison-Spezialfähigkeits Button", -- Needs review
	CONFIG_INACTIVE = "deaktiviert", -- Needs review
	CONFIG_MISSION = "Mission", -- Needs review
	CONFIG_MISSION_COMPLETE_BUTTON = "Zeige den \"Alle Missionen abschließen\" Button", -- Needs review
	CONFIG_MISSION_COMPLETE_BUTTON_EXPLAIN = "This will add a button to complete all missions with 1 click on the mission complete window|n|n ATTENTION: This is not verbose by design, it only shows that it started to complete and when it is done, not what the outcome is!", -- Requires localization
	CONFIG_NOCOUNTER = "kein Konter", -- Needs review
	CONFIG_ONMISSION = "auf Mission", -- Needs review
	CONFIG_ON_MISSION = "Zeigt an, wieviel Zeit seit dem erstmaligen Vorfinden der Mission vergangen ist.", -- Needs review
	CONFIG_QUICK_ASSIGN_WORKER = "Show the buttons to quickly assign/unassign all workers at architect table", -- Requires localization
	CONFIG_REALOAD_UI = "Das ändern dieser Einstellung erfordert das neuladen der Benutzeroberfläche.", -- Needs review
	CONFIG_SHOW_COUNTER_ON_FOLLOWER_TAB = "Zeigt auf der Anhänger-Seite im linken, scrollbaren Bereich die Fähigkeiten der Anhänger mit an.", -- Needs review
	CONFIG_SHOW_GOLD_EXP = "Zeigt innerhalb des Belohnungssymbols den Wert an Gold/Erfahrung an, den eine Mission gewährt.", -- Needs review
	CONFIG_SHOW_ITEMLEVEL_ON_FOLLOWER_TAB = "Zeigt auf der Anhänger-Seite im linken, scrollbaren Bereich die Itemlevel von Waffe und Rüstung mit an.", -- Needs review
	CONFIG_SHOW_SALVAGE = "Show buttons for the salvage crates when being at the salvage yard", -- Requires localization
	CONFIG_SHOW_SALVAGE_EXPLAIN = "With using shift and holding down left mouse button on the first button you can change the position of the buttons.|n|nIn order for this to work the localisation for the Salvage Yard is needed, if you dont see the buttons then it is most likely not translated for your language, you can find on the addon website a link where to translate it.", -- Requires localization
	CONFIG_SHOW_TIME_LEFT = "Zeigt an, wie lange ein Anhänger noch auf einer Mission ist.",
	CONFIG_WORKING = "arbeitet", -- Needs review
	CONFIG_WORK_ORDER = "Arbeitsauftrag", -- Needs review
	CONFIG_WORK_ORDER_TIMES = "Zeige Zeiten der Arbeitsaufrträge auf der Berichtsseite an.", -- Needs review
	COUNTERED_BY = "gekontert von", -- Needs review
	FOLLOWER_REQUIRED = "Anhänger benötigt",
	ITEM_LEVEL = "Item-Level", -- Needs review
	LEVEL = "Level", -- Needs review
	MISSION_AVAILABLE = "Mission verfügbar seit", -- Needs review
	MISSION_FINISH_START = "Starte Missionen abzuschließen", -- Needs review
	MISSION_FINISH_STOP = "Alle Missionen abgeschlossen", -- Needs review
	SALVAGE_YARD = "Wiederverwertung", -- Needs review
	SCAVENGER = "Wiederverwertung", -- Needs review
	STARTING_ASSIGN = "Beginne Anhänger zuzuweisen", -- Needs review
	STARTING_UNASSIGN = "Beginne Anhängerzuweisungen aufzuheben", -- Needs review
	STOPPING_ASSIGN = "Anhängerzuweisung abgeschlossen", -- Needs review
	STOPPING_UNASSIGN = "Aufheben der Anhängerzuweisung abgeschlossen", -- Needs review
	UNASSIGN_WORK = "Unassign followers from work", -- Requires localization
	WEAPON = "Waffe", -- Needs review
	WORKER_ASSIGNED = "%s zu %s hinzugefühgt", -- Needs review
	WORKER_UNASSIGNED = "%s von %s entfernt", -- Needs review
}


--[===[@debug@ 
{}
--@end-debug@]===]
