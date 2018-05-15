if not(GetLocale() == "esES") then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	L[" (Channeling)"] = "(Canalizando)"
	L[" (Healing received increase)"] = "(Curación recibida incrementada)"
	L["- Any"] = "- Cualquiera"
	L["- Holy Word: Chastise"] = "- Palabra sagrada: condena"
	L["- Holy Word: Sanctify"] = "- Palabra sagrada: santificar"
	L["- Holy Word: Serenity"] = "- Palabra sagrada: serenidad"
	L["(Pet)"] = "(Mascota)"
	L["(Water Elemental)"] = "(Elemental de agua)"
	--[[Translation missing --]]
	--[[ L["Ability Charges"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Absorb Shield"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Add Triggers"] = ""--]] 
	L["Always Active"] = "Siempre activo"
	--[[Translation missing --]]
	--[[ L["Back"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Bleed"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Bloodlust/Heroism"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Buff"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["buff"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Buffs"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Cancel"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Cast"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Concordance of the Legionfall"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["cooldown"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Cooldowns"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Crimson Vial Item Count"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Damage Trinkets"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Death Knight 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Death Knight Unholy 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["debuff"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Debuffs"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Discipline Priest"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Druid"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Effuse"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Enchants"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Enveloping Mist"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Essence Font"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["General"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Healer Trinkets"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Health"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Holy Priest"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Keeps existing triggers intact"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Legendaries"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Monk"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Monk Windwalker 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Netherlight Crucible"] = ""--]] 
	L["Nimble Brew Item Count"] = "Contador de objetos - Brebaje Avezado"
	--[[Translation missing --]]
	--[[ L["Paladin"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Paladin Protection 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Paladin Retribution 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Pantheon Trinkets"] = ""--]] 
	L["Pet alive"] = "Mascota viva"
	L["Pet Behavior"] = "Comportamiento de mascota"
	--[[Translation missing --]]
	--[[ L["PVP Set"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["PvP Talents"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["PVP Trinkets"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Renewing Mist"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Replace all existing triggers"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Replace Triggers"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Resources"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Resources and Shapeshift Form"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Rogue Assassination/Outlaw 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Rogue Subtlety 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Rooted"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Runes"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Secondary Effect"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Set Bonus"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Shaman"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Shaman Elemental 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Shaman Enhancement 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Shapeshift Form"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Slowed"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Stagger"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Stun"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T19 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T19 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T20 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T20 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T21 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["T21 4P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Tank Trinkets"] = ""--]] 
	L["Totem"] = "Tótem"
	L["Totems"] = "Tótems"
	--[[Translation missing --]]
	--[[ L["Unknown Item"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Unknown Spell"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Vivify"] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Warlock Affliction 4P/Demonology 2P Bonus - "] = ""--]] 
	--[[Translation missing --]]
	--[[ L["Warrior 2P Bonus - "] = ""--]] 

