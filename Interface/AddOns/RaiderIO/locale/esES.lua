local _, ns = ...

if ns:IsSameLocale("esES") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "esES"

L["ALLOW_IN_LFD"] = "Habilitar en el buscador de grupos"
L["ALLOW_IN_LFD_DESC"] = "Permite hacer clic derecho sobre grupos ya creados del buscador o jugadores que soliciten unirse a tu grupo para copiar la dirección de su perfil de Raider.IO."
L["ALLOW_ON_PLAYER_UNITS"] = "Habilitar en marcos de unidad de jugadores"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "Permite hacer clic derecho sobre los marcos de unidad de los jugadores para copiar la dirección de su perfil de Raider.IO."
L["ALWAYS_SHOW_EXTENDED_INFO"] = "Mostrar siempre puntuaciones de rol"
L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = "Puedes mantener pulsado Mayús, Control o Alt para mostrar las puntuaciones de rol de un jugador en la ventana emergente. Si activas esta opción, las ventanas emergentes incluirán siempre las puntuaciones de rol."
L["BEST_FOR_DUNGEON"] = "Mejor M+ en esta mazmorra"
L["BEST_RUN"] = "Mejor M+"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[Se han guardado los cambios, pero se necesita reiniciar la interfaz para que surtan efecto.

¿Quieres reiniciarla ahora?]=]
L["COPY_RAIDERIO_PROFILE_URL"] = "Copiar dirección de Raider.IO"
L["COPY_RAIDERIO_URL"] = "Copiar dirección de Raider.IO"
L["DPS"] = "DPS"
L["DPS_SCORE"] = "Puntuación de DPS"
L["DUNGEON_SHORT_NAME_ARC"] = "Arquería"
L["DUNGEON_SHORT_NAME_BRH"] = "Torreón"
L["DUNGEON_SHORT_NAME_COEN"] = "Catedral"
L["DUNGEON_SHORT_NAME_COS"] = "Corte"
L["DUNGEON_SHORT_NAME_DHT"] = "Arboleda"
L["DUNGEON_SHORT_NAME_EOA"] = "Ojo"
L["DUNGEON_SHORT_NAME_HOV"] = "Valor"
L["DUNGEON_SHORT_NAME_LOWR"] = "Kara-I"
L["DUNGEON_SHORT_NAME_MOS"] = "Fauce"
L["DUNGEON_SHORT_NAME_NL"] = "Guarida"
L["DUNGEON_SHORT_NAME_SEAT"] = "Trono"
L["DUNGEON_SHORT_NAME_UPPR"] = "Kara-S"
L["DUNGEON_SHORT_NAME_VOTW"] = "Celadoras"
L["ENABLE_NO_SCORE_COLORS"] = "Desactivar colores de puntuación"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "Desactiva los colores de las puntuaciones. Todas las puntuaciones se mostrarán de color blanco."
L["ENABLE_SIMPLE_SCORE_COLORS"] = "Usar colores de puntuación simples"
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = "Muestra las puntuaciones usando solo los colores estándar de calidad de objeto. Facilita la distinción de puntuaciones para personas con defectos de visión cromática."
L["HEALER"] = "Sanador"
L["HEALER_SCORE"] = "Puntuación de sanador"
L["KEYSTONE_COMPLETED_10"] = "+10-14 (completadas)"
L["KEYSTONE_COMPLETED_15"] = "+15 (completadas)"
L["MAINS_SCORE"] = "Puntuación de personaje principal"
L["MAINS_SCORE_COLON"] = "Puntuación de personaje principal:"
L["MODULE_AMERICAS"] = "América"
L["MODULE_EUROPE"] = "Europa"
L["MODULE_KOREA"] = "Corea"
L["MODULE_TAIWAN"] = "Taiwan"
L["MYTHIC_PLUS_DB_MODULES"] = "Módulos de la base de datos"
L["MYTHIC_PLUS_SCORES"] = "Puntuaciones de M+"
L["OPEN_CONFIG"] = "Abrir configuración"
L["OUTDATED_DATABASE"] = "Estas puntuaciones son de hace %d día(s)"
L["OUTDATED_DATABASE_S"] = "|cffFFFFFF%s|r está usando datos de hace |cffFF6666%d|r día(s). Por favor, actualiza el addon para disponer de las puntuaciones de M+ más recientes."
L["PREV_SEASON_SUFFIX"] = "(*)"
--[[Translation missing --]]
--[[ L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = ""--]] 
L["RAIDERIO_MP_BASE_SCORE"] = "Puntuación de M+ base"
L["RAIDERIO_MP_SCORE"] = "Puntuación de M+"
L["RAIDERIO_MP_SCORE_COLON"] = "Puntuación de M+:"
L["RAIDERIO_MYTHIC_OPTIONS"] = "Opciones de Raider.IO Mythic Plus"
L["RELOAD_LATER"] = "La reiniciaré más tarde"
L["RELOAD_NOW"] = "Reiniciarla ahora"
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = ""--]] 
L["SHOW_IN_FRIENDS"] = "Mostrar en la lista de amigos"
L["SHOW_IN_FRIENDS_DESC"] = "Muestra la puntuación de M+ de tus amigos cuando pasas el ratón por encima."
L["SHOW_IN_LFD"] = "Mostrar en el buscador de grupos"
L["SHOW_IN_LFD_DESC"] = "Muestra la puntuación de M+ cuando pasas el ratón por encima de grupos ya creados del buscador o jugadores que soliciten unirse a tu grupo."
L["SHOW_IN_SLASH_WHO_RESULTS"] = "Mostrar en resultados de /who"
L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = "Muestra la puntuación de M+ cuando usas \"/who\" con un jugador específico."
L["SHOW_IN_WHO_UI"] = "Mostrar en la interfaz de ¿Quién?"
L["SHOW_IN_WHO_UI_DESC"] = "Muestra la puntuación de M+ cuando pasas el ratón por encima de los resultados de la ventana ¿Quién?"
L["SHOW_KEYSTONE_INFO"] = "Mostrar información de piedras angulares"
L["SHOW_KEYSTONE_INFO_DESC"] = "Muestra la puntuación base de cada piedra angular en su descripción emergente. También muestra la mejor M+ de esa mazmorra de cada jugador en tu grupo."
L["SHOW_MAINS_SCORE"] = "Mostrar puntuación de personaje principal"
L["SHOW_MAINS_SCORE_DESC"] = "Muestra la puntuación en la temporada actual del personaje principal del jugador inspeccionado. El jugador en cuestión debe estar registrado en Raider.IO y haber seleccionado su personaje principal."
L["SHOW_ON_GUILD_ROSTER"] = "Mostrar en lista de hermandad"
L["SHOW_ON_GUILD_ROSTER_DESC"] = "Muestra la puntuación de M+ de los miembros de tu hermandad cuando pasas el ratón por encima de ellos en la lista de hermandad."
L["SHOW_ON_PLAYER_UNITS"] = "Mostrar en marcos de jugador"
L["SHOW_ON_PLAYER_UNITS_DESC"] = "Muestra la puntuación de M+ de los jugadores en su ventana emergente cuando pasas el ratón sobre ellos."
L["SHOW_SCORE_IN_COMBAT"] = "Mostrar puntuación en combate"
L["SHOW_SCORE_IN_COMBAT_DESC"] = "Desactiva esta opción para mejorar el rendimiento al pasar el ratón por encima de jugadores cuando estás en combate."
L["TANK"] = "Tanque"
L["TANK_SCORE"] = "Puntuación de tanque"
L["TIMED_10_RUNS"] = "+10-14 en tiempo"
L["TIMED_15_RUNS"] = "+15 en tiempo"
L["TOOLTIP_CUSTOMIZATION"] = "Personalización de ventanas emergentes"
L["UNKNOWN_SCORE"] = "Desconocida"
L["UNKNOWN_SERVER_FOUND"] = "|cffFFFFFF%s|r ha encontrado un nuevo servidor. Por favor, apunta esta información |cffFF9999{|r |cffFFFFFF%s|r |cffFF9999,|r |cffFFFFFF%s|r |cffFF9999}|r y envíasela a los desarrolladores. ¡Gracias!"


	ns.L = L
end
