local _, ns = ...

if ns:IsSameLocale("itIT") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "itIT"

L["ALLOW_IN_LFD"] = "Abilita in Ricerca delle Incursioni"
L["ALLOW_IN_LFD_DESC"] = "Fai clic con il pulsante destro del mouse su gruppi o candidati in Ricerca delle Incusioni per copiare l'URL del Profilo Raider.IO"
L["ALLOW_ON_PLAYER_UNITS"] = "Consenti su Frame Unità Giocatore"
L["ALLOW_ON_PLAYER_UNITS_DESC"] = "Fare clic con il tasto destro del mouse sui Frame dell'Unità Giocatore per Copiare l'URL del Profilo Raider.IO."
L["ALWAYS_SHOW_EXTENDED_INFO"] = "Mostra sempre Punteggi di Ruolo"
L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = "Tenere premuto un tasto (maiusc / ctrl / alt) per mostrare i Punteggi del Ruolo del Giocatore nel Tooltip. Se abiliti questa Opzione, le Descrizioni Comandi includeranno sempre i Punteggi del Ruolo."
L["API_DEPRECATED"] = "| cffFF0000Warning! | r L'addon | cffFFFFFF% s | r sta chiamando una funzione deprecata RaiderIO.% s. Questa funzione verrà rimossa nelle versioni future. Si prega di incoraggiare l'autore di% s per aggiornare il loro addon. Stack di chiamata:% s"
L["API_DEPRECATED_UNKNOWN_ADDON"] = "<AddOn Sconosciuto>"
L["API_DEPRECATED_UNKNOWN_FILE"] = "<File AddOn Sconosciuto>"
L["API_DEPRECATED_WITH"] = "| cffFF0000Warning! | r L'addon | cffFFFFFF% s | r sta chiamando una funzione deprecata RaiderIO.% s. Questa funzione verrà rimossa nelle versioni future. Si prega di incoraggiare l'autore di% s ad aggiornare alla nuova API RaiderIO.% S invece. Stack di chiamata:% s"
L["API_INVALID_DATABASE"] = "| cffFF0000Warning! | r Rilevato un database RaiderIO non valido in | cffffffff% s | r. Si prega di aggiornare tutte le regioni e le fazioni nel client RaiderIO o reinstallare manualmente l'addon."
L["BEST_FOR_DUNGEON"] = "Migliore Questa Spedizione"
L["BEST_RUN"] = "Miglior Spedizione"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[Le tue modifiche sono state salvate, ma devi ricaricare la tua interfaccia affinché abbiano effetto.

Vuoi farlo ora?]=]
L["CHECKBOX_DISPLAY_WEEKLY"] = "Visualizza Settimanale"
L["CONFIG_SHOW_TOOLTIPS_HEADER"] = "Mythic+ e Raid Tooltips"
L["COPY_RAIDERIO_PROFILE_URL"] = "Copia URL Raider.IO"
L["COPY_RAIDERIO_URL"] = "Copia URL Raider.IO"
L["DPS"] = "DPS"
L["DPS_SCORE"] = "Punteggio DPS"
L["DUNGEON_SHORT_NAME_AD"] = "AD"
L["DUNGEON_SHORT_NAME_ARC"] = "ARC"
L["DUNGEON_SHORT_NAME_BRH"] = "FC"
L["DUNGEON_SHORT_NAME_COEN"] = "CDNE"
L["DUNGEON_SHORT_NAME_COS"] = "CDS"
L["DUNGEON_SHORT_NAME_DHT"] = "BC"
L["DUNGEON_SHORT_NAME_EOA"] = "ODA"
L["DUNGEON_SHORT_NAME_FH"] = "CDL"
L["DUNGEON_SHORT_NAME_HOV"] = "SDV"
L["DUNGEON_SHORT_NAME_KR"] = "RDR"
L["DUNGEON_SHORT_NAME_LOWR"] = "KINF"
L["DUNGEON_SHORT_NAME_ML"] = "VM"
L["DUNGEON_SHORT_NAME_MOS"] = "FDA"
L["DUNGEON_SHORT_NAME_NL"] = "ADN"
L["DUNGEON_SHORT_NAME_SEAT"] = "SDT"
L["DUNGEON_SHORT_NAME_SIEGE"] = "ADB"
L["DUNGEON_SHORT_NAME_SOTS"] = "SDT"
L["DUNGEON_SHORT_NAME_TD"] = "TD"
L["DUNGEON_SHORT_NAME_TM"] = "VM"
L["DUNGEON_SHORT_NAME_TOS"] = "TDS"
L["DUNGEON_SHORT_NAME_UNDR"] = "GRO"
L["DUNGEON_SHORT_NAME_UPPR"] = "KSUP"
L["DUNGEON_SHORT_NAME_VOTW"] = "SDC"
L["DUNGEON_SHORT_NAME_WM"] = "MDC"
L["ENABLE_AUTO_FRAME_POSITION"] = "Posiziona Automaticamente la Cornice del Profilo RaiderIO"
L["ENABLE_AUTO_FRAME_POSITION_DESC"] = "Abilitando questa Opzione manterrai la Descrizione del Profilo M+ accanto Finestra della Ricerca delle Incursioni o al Tooltip del Giocatore."
L["ENABLE_LOCK_PROFILE_FRAME"] = "Blocca Finestra del Profilo RaiderIO"
L["ENABLE_LOCK_PROFILE_FRAME_DESC"] = "Impedisce il Trascinamento della Finestra del Profilo M+. Questo non ha alcun Effetto se la Finestra del Profilo M+ è impostata per essere Posizionata Automaticamente."
L["ENABLE_NO_SCORE_COLORS"] = "Disabilita Colori Punteggio"
L["ENABLE_NO_SCORE_COLORS_DESC"] = "Disabilita la Colorizzazione dei Punteggi. Tutti i Punteggi verranno visualizzati in Bianco."
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS"] = "Consenti Miglioramenti del client RaiderIO"
L["ENABLE_RAIDERIO_CLIENT_ENHANCEMENTS_DESC"] = "Abilitare questa opzione ti permetterà di visualizzare i in maniera dettagliata i dati del Profilo RaiderIO scaricati per i tuoi Personaggi."
L["ENABLE_SIMPLE_SCORE_COLORS"] = [=[Usa i Colori dei Punteggi Semplici
]=]
L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = [=[Mostra i Punteggi solo con Colori Standard utilizzati per gli Oggetti. Ciò può rendere più facile per chi ha problemi di visione dei colori a distinguere i livelli di punteggio.
]=]
L["EXPORTJSON_COPY_TEXT"] = "Copia quanto segue e ncollalo ovunque su | cff00C8FFhttps: //raider.io | r per Cercare tutti i Giocatori."
L["GUILD_BEST_SEASON"] = "Gilda: Stagionale"
L["GUILD_BEST_TITLE"] = "Raider.IO Records"
L["GUILD_BEST_WEEKLY"] = "Gilda: Settimanale"
L["HEALER"] = "Curatore"
L["HEALER_SCORE"] = "Punteggio Curatore"
L["HIDE_OWN_PROFILE"] = "Nascondi Informazioni Personali dal Tooltip"
--[[Translation missing --]]
--[[ L["HIDE_OWN_PROFILE_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["INVERSE_PROFILE_MODIFIER"] = ""--]] 
L["INVERSE_PROFILE_MODIFIER_DESC"] = "Abilitando questo si inverte il comportamento del modificatore del tooltip profilo RaiderIO (shift / ctrl / alt): tieni premuto per alternare la visualizzazione tra profilo personale / leader o profilo leader / personale."
--[[Translation missing --]]
--[[ L["KEYSTONE_COMPLETED_10"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEYSTONE_COMPLETED_15"] = ""--]] 
--[[Translation missing --]]
--[[ L["KEYSTONE_COMPLETED_5"] = ""--]] 
L["LEGION_MAIN_SCORE"] = "Punteggio PG Principale \"Legion\""
L["LEGION_SCORE"] = "Punteggio \"Legion\""
L["LOCKING_PROFILE_FRAME"] = "RaiderIO: Blocco della finestra Profilo M+."
L["MAINS_RAID_PROGRESS"] = "Progresso PG Principale"
L["MAINS_SCORE"] = "Punteggio PG Principale"
L["MAINS_SCORE_COLON"] = "Punteggio PG Principale:"
L["MODULE_AMERICAS"] = "America"
L["MODULE_EUROPE"] = "Europa"
L["MODULE_KOREA"] = "Korea"
L["MODULE_TAIWAN"] = "Taiwan"
L["MY_PROFILE_TITLE"] = "Profilo RaiderIO"
L["MYTHIC_PLUS_DB_MODULES"] = "Mythic+ Moduli Database"
L["MYTHIC_PLUS_SCORES"] = "Mythic+ Tooltip Punteggio"
L["NO_GUILD_RECORD"] = "Nessun Record di Gilda"
L["OPEN_CONFIG"] = "Apri Configurazione"
L["OUT_OF_SYNC_DATABASE_S"] = "| cffFFFFFF% s | r ha dati di fazione di Orda / Alleanza che non sono sincronizzati. Aggiorna le impostazioni del client RaiderIO per sincronizzare entrambe le fazioni."
L["OUTDATED_DATABASE"] = "Punteggi aggiornati a %d Giorni fa."
L["OUTDATED_DATABASE_HOURS"] = "Punteggi aggiornati a %d Ore fa."
L["OUTDATED_DATABASE_S"] = "| cffFFFFFF% s | r sta utilizzando dati | cffFF6666% d | r giorni precedenti. Si prega di aggiornare l'addon per risultati più accurati di Mitiche Chiavi del Potere."
L["PLAYER_PROFILE_TITLE"] = "Profilo M+ Giocatore"
L["PREV_SEASON_SUFFIX"] = "(*)"
L["PROFILE_BEST_RUNS"] = "Miglior Corsa per Spedizione"
L["RAID_ABBREVIATION_ULD"] = "ULD"
L["RAID_BOSS_ABT_1"] = "Garothi"
L["RAID_BOSS_ABT_10"] = "Aggramar"
L["RAID_BOSS_ABT_11"] = "Argus"
L["RAID_BOSS_ABT_2"] = "Vilsegugi"
L["RAID_BOSS_ABT_3"] = "Guardiana dei Portali"
L["RAID_BOSS_ABT_4"] = "Alto Comando"
L["RAID_BOSS_ABT_5"] = "Eonar"
L["RAID_BOSS_ABT_6"] = "Imonar"
L["RAID_BOSS_ABT_7"] = "Kin'garoth"
L["RAID_BOSS_ABT_8"] = "Varimathras"
L["RAID_BOSS_ABT_9"] = "Congrega delle Shivarra"
L["RAID_BOSS_ULD_1"] = "Taloc"
L["RAID_BOSS_ULD_2"] = "MADRE"
L["RAID_BOSS_ULD_3"] = "Divoratore Fetido"
L["RAID_BOSS_ULD_4"] = "Zek'voz"
L["RAID_BOSS_ULD_5"] = "Vectis"
L["RAID_BOSS_ULD_6"] = "Zul, Rinato"
L["RAID_BOSS_ULD_7"] = "Mythrax"
L["RAID_BOSS_ULD_8"] = "G'huun"
L["RAID_DIFFICULTY_NAME_HEROIC"] = "Eroica"
L["RAID_DIFFICULTY_NAME_MYTHIC"] = "Mitica"
L["RAID_DIFFICULTY_NAME_NORMAL"] = "Normale"
L["RAID_DIFFICULTY_SUFFIX_HEROIC"] = "HC"
L["RAID_DIFFICULTY_SUFFIX_MYTHIC"] = "M"
L["RAID_DIFFICULTY_SUFFIX_NORMAL"] = "NM"
L["RAID_ENCOUNTERS_DEFEATED_TITLE"] = "Boss Incursione Sconfitti"
L["RAID_PROGRESS_TITLE"] = "Progresso Incursione"
--[[Translation missing --]]
--[[ L["RAIDERIO_AVERAGE_PLAYER_SCORE"] = ""--]] 
--[[Translation missing --]]
--[[ L["RAIDERIO_CLIENT_CUSTOMIZATION"] = ""--]] 
--[[Translation missing --]]
--[[ L["RAIDERIO_MP_BASE_SCORE"] = ""--]] 
L["RAIDERIO_MP_SCORE"] = "Raider.IO Punteggio M+"
L["RAIDERIO_MP_SCORE_COLON"] = "Raider.IO Punteggio M+:"
L["RAIDERIO_MYTHIC_OPTIONS"] = "Raider.IO Opzioni Addon"
L["RAIDING_DATA_HEADER"] = "Raider.IO Progresso Incursione"
L["RAIDING_DB_MODULES"] = "Moduli Database Incursione"
L["RELOAD_LATER"] = "Ricaricherò Più Tardi"
L["RELOAD_NOW"] = "Ricarica Ora"
L["SHOW_AVERAGE_PLAYER_SCORE_INFO"] = "Visualizza il Punteggio Medio Per Corse In Tempo"
--[[Translation missing --]]
--[[ L["SHOW_AVERAGE_PLAYER_SCORE_INFO_DESC"] = ""--]] 
L["SHOW_CLIENT_GUILD_BEST"] = "Mostra i Record nella Ricerca Gruppi per Spedizioni Mitiche"
L["SHOW_CLIENT_GUILD_BEST_DESC"] = "Abilitando questa Opzione verranno visualizzate le 5 migliori Corse della tua Gilda (Stagionale o Settimanale) nella Scheda Spedizioni Mitiche della finestra di Ricerca Gruppi."
L["SHOW_IN_FRIENDS"] = "Mostra in Elenco Amici"
L["SHOW_IN_FRIENDS_DESC"] = "Mostra il Punteggio M+ quando passi il Mouse sopra i tuoi Amici"
L["SHOW_IN_LFD"] = "Mostra in Ricerca delle Spedizioni"
L["SHOW_IN_LFD_DESC"] = "Mostra Punteggio M+ quando passi il mouse sopra i gruppi o le richieste di "
--[[Translation missing --]]
--[[ L["SHOW_IN_SLASH_WHO_RESULTS"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_IN_WHO_UI"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_IN_WHO_UI_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_KEYSTONE_INFO"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_KEYSTONE_INFO_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_LEADER_PROFILE"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_LEADER_PROFILE_DESC"] = ""--]] 
L["SHOW_MAINS_SCORE"] = "Mostra Punteggio del Personaggio Principale e Progresso Incursione"
--[[Translation missing --]]
--[[ L["SHOW_MAINS_SCORE_DESC"] = ""--]] 
L["SHOW_ON_GUILD_ROSTER"] = "Mostra nell'elenco Membri di Gilda"
--[[Translation missing --]]
--[[ L["SHOW_ON_GUILD_ROSTER_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_ON_PLAYER_UNITS"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_ON_PLAYER_UNITS_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_RAID_ENCOUNTERS_IN_PROFILE"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_RAID_ENCOUNTERS_IN_PROFILE_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_RAIDERIO_PROFILE"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_RAIDERIO_PROFILE_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_SCORE_IN_COMBAT"] = ""--]] 
--[[Translation missing --]]
--[[ L["SHOW_SCORE_IN_COMBAT_DESC"] = ""--]] 
L["TANK"] = "Difensore"
L["TANK_SCORE"] = "Punteggio Difensore"
L["TIMED_10_RUNS"] = "+10-14 In Tempo"
L["TIMED_15_RUNS"] = "+15 In Tempo"
L["TIMED_5_RUNS"] = "+5-9 In Tempo"
L["TOOLTIP_CUSTOMIZATION"] = "Personalizzazione Finestra Tooltip"
L["TOOLTIP_PROFILE"] = "Personalizzazione Finestra Tooltip del Profilo RaiderIO"
L["TOTAL_MP_SCORE"] = "Punteggio Mythic+"
L["TOTAL_RUNS"] = "Corse Totali in \"BFA\""
L["UNKNOWN_SCORE"] = "Sconosciuto"
L["UNKNOWN_SERVER_FOUND"] = "| cffFFFFFF% s | r ha rilevato un nuovo server. Si prega di scrivere queste informazioni | cffFF9999 {| r | cffFFFFFF% s | r | cffFF9999, | r | cffFFFFFF% s | r | cffFF9999} | r e segnalarlo agli sviluppatori. Grazie!"
L["UNLOCKING_PROFILE_FRAME"] = "RaiderIO: Sblocco della Finetra Profilo M+"
L["WARNING_LOCK_POSITION_FRAME_AUTO"] = "RaiderIO: Devi prima Disabilitare \"Posizionamento Automatico\" per il Profilo RaiderIO."


	ns.L = L
end
