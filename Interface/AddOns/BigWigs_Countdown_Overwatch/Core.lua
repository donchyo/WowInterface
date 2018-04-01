
local heroes = {
	"Announcer",
	"Ana",
	"Bastion",
	"Brigitte",
	"D.Va",
	"Doomfist",
	"Genji",
	"Hanzo",
	"Junkrat",
	"Lucio",
	"McCree",
	"Mei",
	"Mercy",
	"Moira",
	"Orisa",
	"Pharah",
	"Reaper",
	"Reinhardt",
	"Roadhog",
	"Soldier76",
	"Sombra",
	"Symmetra",
	"Torbjorn",
	"Tracer",
	"Widowmaker",
	"Winston",
	"Zarya",
	"Zenyatta",
}
local key = "English: Overwatch: %s"
local path = "Interface\\AddOns\\BigWigs_Countdown_Overwatch\\enUS\\%s_%d.ogg"

for i = 1, #heroes do
	local hero = heroes[i]
	BigWigsAPI:RegisterCountdown(key:format(hero), {
		path:format(hero, 1),
		path:format(hero, 2),
		path:format(hero, 3),
		path:format(hero, 4),
		path:format(hero, 5),
	})
end
