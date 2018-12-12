_instances_names = {}
_raids_names = {}
_localization = {}
function check_locale()
	local locale = GetLocale()
	if locale=="ruRU" then
		_instances_names = {"Казематы Стражей", "Утроба душ", "Катакомбы Сурамара", "Крепость Черной Ладьи", "Квартал Звезд", "Штурм Аметистовой крепости", "Чаща Темного Сердца", "Чертоги Доблести", "Логово Нелтариона", "Око Азшары", "Возвращение в Каражан"}
		_raids_names = {"Изумрудный Кошмар", "Испытание Доблести", "Цитадель Ночи"}
		_localization = {"ilvl", "Artifact", "Coins", "1"}
		return true
	elseif locale=="enUS" then
		_instances_names = {"Vault of the Wardens", "Maw of Souls", "The Arcway", "Black Rook Hold", "Court of Stars", "Assault on Violent Hold", "Darkheart Thicket", "Halls of Valor", "Neltharion's Lair", "Eye of Azshara", "Return to Karazhan"}
		_raids_names = {"The Emerald Nightmare", "Trial of Valor", "The Nighthold"}
		_localization = {"ilvl", "Artifact", "Coins", "1"}
		return true
	elseif locale=="zhCN" then
		_instances_names = {"守望者地窟", "噬魂之喉", "魔法回廊", "黑鸦堡垒", "群星庭院", "突袭紫罗兰监狱", "黑心林地", "英灵殿", "奈萨里奥的巢穴", "艾萨拉之眼", "重返卡拉赞"}
		_raids_names = {"翡翠梦魇", "勇气试炼", "暗夜要塞"}
		_localization = {"物品等级", "神器等级", "破碎命运印记", "0"}
		return true
	else
		local message = string.format("Legion TODO mini error: %s locale dont support!", locale)
		print(message)
		return false
	end

end