local _, L = ...

setmetatable(L, {__index = function(L, key)
	local value = tostring(key)
	L[key] = value
	return value
end})

L['ALT key'] = ALT_KEY
L['CTRL key'] = CTRL_KEY
L['SHIFT key'] = SHIFT_KEY

L['Never'] = NEVER
L['Always'] = ALWAYS

L['enable'] = string.lower(ENABLE)
L['disable'] = string.lower(DISABLE)

local locale = GetLocale()
if(locale == 'deDE') then
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Nomis tägliche Quests immer akzeptieren (trotz niedrigem Level)"
L["Automatically pay Darkmoon Faire teleporting fees"] = "Dunkelmond-Jahrmarkt Teleport-Gebühr automatisch bezahlen"
L["Automatically select single gossip options"] = "Einzeloptionen in Dialogen automatisch auswählen"
L["Automatically share quests when picked up"] = "Quests beim Annehmen automatisch teilen"
L["Disable while doing the withered training scenario in Suramar"] = "Für Ausbildung der Verdorrtenarmee in Suramar deaktivieren"
L["Drag items into the window below to add more."] = "Items zum Hinzufügen ins Fenster unten ziehen."
L["Hold this key to to temporarily %s automation"] = "Halte diese Taste, um die Automatisierung vorübergehend zu %s "
L["Only select gossip option while not in a raid"] = "Dialoge in Raids nicht automatisieren"
L["Quests starting with and/or containing these items will not be automated."] = "Quests beginnend mit/enthaltend dieser Einträge werden nicht automatisiert"
L["Reverse the behaviour of the modifier key"] = "Verhalten der Moditfikatortaste umkehren"
L["Right-click to remove item"] = "Rechtsklick, um Gegenstand zu entfernen"
L["Soloing"] = "Ohne Gruppe"
L["The Collapse"] = "Der Kollaps"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'esES') then
	--Translation missing 
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Always accept and complete Nomi's daily quest, despite being low-level"
--Translation missing 
L["Automatically pay Darkmoon Faire teleporting fees"] = "Automatically pay Darkmoon Faire teleporting fees"
--Translation missing 
L["Automatically select single gossip options"] = "Automatically select single gossip options"
--Translation missing 
L["Automatically share quests when picked up"] = "Automatically share quests when picked up"
--Translation missing 
L["Disable while doing the withered training scenario in Suramar"] = "Disable while doing the withered training scenario in Suramar"
--Translation missing 
L["Drag items into the window below to add more."] = "Drag items into the window below to add more."
--Translation missing 
L["Hold this key to to temporarily %s automation"] = "Hold this key to to temporarily %s automation"
--Translation missing 
L["Only select gossip option while not in a raid"] = "Only select gossip option while not in a raid"
--Translation missing 
L["Quests starting with and/or containing these items will not be automated."] = "Quests starting with and/or containing these items will not be automated."
--Translation missing 
L["Reverse the behaviour of the modifier key"] = "Reverse the behaviour of the modifier key"
--Translation missing 
L["Right-click to remove item"] = "Right-click to remove item"
--Translation missing 
L["Soloing"] = "Soloing"
L["The Collapse"] = "El Derrumbamiento"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'esMX') then
	--Translation missing 
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Always accept and complete Nomi's daily quest, despite being low-level"
--Translation missing 
L["Automatically pay Darkmoon Faire teleporting fees"] = "Automatically pay Darkmoon Faire teleporting fees"
--Translation missing 
L["Automatically select single gossip options"] = "Automatically select single gossip options"
--Translation missing 
L["Automatically share quests when picked up"] = "Automatically share quests when picked up"
--Translation missing 
L["Disable while doing the withered training scenario in Suramar"] = "Disable while doing the withered training scenario in Suramar"
--Translation missing 
L["Drag items into the window below to add more."] = "Drag items into the window below to add more."
--Translation missing 
L["Hold this key to to temporarily %s automation"] = "Hold this key to to temporarily %s automation"
--Translation missing 
L["Only select gossip option while not in a raid"] = "Only select gossip option while not in a raid"
--Translation missing 
L["Quests starting with and/or containing these items will not be automated."] = "Quests starting with and/or containing these items will not be automated."
--Translation missing 
L["Reverse the behaviour of the modifier key"] = "Reverse the behaviour of the modifier key"
--Translation missing 
L["Right-click to remove item"] = "Right-click to remove item"
--Translation missing 
L["Soloing"] = "Soloing"
L["The Collapse"] = "El Derrumbamiento"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'frFR') then
	--Translation missing 
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Always accept and complete Nomi's daily quest, despite being low-level"
L["Automatically pay Darkmoon Faire teleporting fees"] = "Payer automatiquement pour aller à la foire de Sombrelune"
--Translation missing 
L["Automatically select single gossip options"] = "Automatically select single gossip options"
L["Automatically share quests when picked up"] = "Partager automatiquement les quêtes quand elles sont acceptée"
--Translation missing 
L["Disable while doing the withered training scenario in Suramar"] = "Disable while doing the withered training scenario in Suramar"
--Translation missing 
L["Drag items into the window below to add more."] = "Drag items into the window below to add more."
--Translation missing 
L["Hold this key to to temporarily %s automation"] = "Hold this key to to temporarily %s automation"
L["Only select gossip option while not in a raid"] = "Ne pas sélectionner le dialogue en raid"
--Translation missing 
L["Quests starting with and/or containing these items will not be automated."] = "Quests starting with and/or containing these items will not be automated."
L["Reverse the behaviour of the modifier key"] = "Inverser le comportement du modificateur"
--Translation missing 
L["Right-click to remove item"] = "Right-click to remove item"
--Translation missing 
L["Soloing"] = "Soloing"
L["The Collapse"] = "L’Effondrement"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'itIT') then
	--Translation missing 
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Always accept and complete Nomi's daily quest, despite being low-level"
--Translation missing 
L["Automatically pay Darkmoon Faire teleporting fees"] = "Automatically pay Darkmoon Faire teleporting fees"
--Translation missing 
L["Automatically select single gossip options"] = "Automatically select single gossip options"
--Translation missing 
L["Automatically share quests when picked up"] = "Automatically share quests when picked up"
--Translation missing 
L["Disable while doing the withered training scenario in Suramar"] = "Disable while doing the withered training scenario in Suramar"
--Translation missing 
L["Drag items into the window below to add more."] = "Drag items into the window below to add more."
--Translation missing 
L["Hold this key to to temporarily %s automation"] = "Hold this key to to temporarily %s automation"
--Translation missing 
L["Only select gossip option while not in a raid"] = "Only select gossip option while not in a raid"
--Translation missing 
L["Quests starting with and/or containing these items will not be automated."] = "Quests starting with and/or containing these items will not be automated."
--Translation missing 
L["Reverse the behaviour of the modifier key"] = "Reverse the behaviour of the modifier key"
--Translation missing 
L["Right-click to remove item"] = "Right-click to remove item"
--Translation missing 
L["Soloing"] = "Soloing"
--Translation missing 
L["The Collapse"] = "The Collapse"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'koKR') then
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "노미의 일일 퀘스트는 퀘스트 레벨이 낮더라도 항상 자동으로 수락/완료"
L["Automatically pay Darkmoon Faire teleporting fees"] = "다크문 축제 순간이동 비용을 자동으로 지불"
L["Automatically select single gossip options"] = "대화 목록이 하나 뿐이면 자동 선택"
L["Automatically share quests when picked up"] = "자동으로 퀘스트 공유"
L["Disable while doing the withered training scenario in Suramar"] = "수라마르에서 메마른 자 훈련시키기 시나리오를 진행하는 동안에는 사용 안 함"
L["Drag items into the window below to add more."] = "더 추가하려면 아래 창에 아이템을 끌어다 놓으십시오."
L["Hold this key to to temporarily %s automation"] = "이 키를 누르고 있는 동안 임시적으로 자동 기능 %s"
L["Only select gossip option while not in a raid"] = "공격대가 아닐 때에만 대화 선택"
L["Quests starting with and/or containing these items will not be automated."] = "이 아이템들과 관련 있는 퀘스트는 자동화 안함"
L["Reverse the behaviour of the modifier key"] = "변환키 작동 방식 반대로 하기"
L["Right-click to remove item"] = "아이템을 삭제하려면 오른쪽 마우스 버튼을 클릭하십시오"
L["Soloing"] = "솔로잉"
L["The Collapse"] = "붕괴지"
L["When to select gossip while in a raid"] = "공격대 상태에서 대화 자동 선택"

elseif(locale == 'ptBR') then
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Sempre aceitar e completar as missões diárias de Nomi, apesar de serem de nível baixo."
L["Automatically pay Darkmoon Faire teleporting fees"] = "Pagar automaticamente as taxas de teletransporte de Darkmoon Faire"
L["Automatically select single gossip options"] = [=[
Selecionar automaticamente opções simples de conversas fúteis]=]
L["Automatically share quests when picked up"] = "Compartilhar missões automaticamente quando pegá-las"
L["Disable while doing the withered training scenario in Suramar"] = "Desativar ao fazer o cenário de treinamento em Suramar"
L["Drag items into the window below to add more."] = "Arraste os itens na janela abaixo para adicionar mais."
L["Hold this key to to temporarily %s automation"] = "Segure esta tecla para %s temporariamente a automação."
L["Only select gossip option while not in a raid"] = "Somente selecionar opções de conversas fúteis enquanto não estiver em RAID"
L["Quests starting with and/or containing these items will not be automated."] = "Missões começando e/ou contendo esses itens não serão automatizadas."
L["Reverse the behaviour of the modifier key"] = "Inverter o comportamento da tecla modificadora"
L["Right-click to remove item"] = "Clicar com botão direito para remover item"
L["Soloing"] = "Solando"
L["The Collapse"] = "O Desmoronamento"
L["When to select gossip while in a raid"] = "Quando selecionar conversas fúteis durante uma raid"

elseif(locale == 'ruRU') then
	--Translation missing 
L["Always accept and complete Nomi's daily quest, despite being low-level"] = "Always accept and complete Nomi's daily quest, despite being low-level"
--Translation missing 
L["Automatically pay Darkmoon Faire teleporting fees"] = "Automatically pay Darkmoon Faire teleporting fees"
--Translation missing 
L["Automatically select single gossip options"] = "Automatically select single gossip options"
--Translation missing 
L["Automatically share quests when picked up"] = "Automatically share quests when picked up"
--Translation missing 
L["Disable while doing the withered training scenario in Suramar"] = "Disable while doing the withered training scenario in Suramar"
--Translation missing 
L["Drag items into the window below to add more."] = "Drag items into the window below to add more."
--Translation missing 
L["Hold this key to to temporarily %s automation"] = "Hold this key to to temporarily %s automation"
L["Only select gossip option while not in a raid"] = "Выбрать опцию всегда, исключением является Рейд."
--Translation missing 
L["Quests starting with and/or containing these items will not be automated."] = "Quests starting with and/or containing these items will not be automated."
L["Reverse the behaviour of the modifier key"] = "Обратный поворот ключа модификатора"
--Translation missing 
L["Right-click to remove item"] = "Right-click to remove item"
--Translation missing 
L["Soloing"] = "Soloing"
L["The Collapse"] = "Обрушенный проход"
--Translation missing 
L["When to select gossip while in a raid"] = "When to select gossip while in a raid"

elseif(locale == 'zhCN') then
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "总是接受并完成糯米的每日任务，儘管是低级别。"
L["Automatically pay Darkmoon Faire teleporting fees"] = "自动支付暗月马戏团传送费。"
L["Automatically select single gossip options"] = "自动选择单一对话选项。"
L["Automatically share quests when picked up"] = "拾取后自动分享任务。"
L["Disable while doing the withered training scenario in Suramar"] = "位于苏拉玛尔的枯法者训练场时禁用。"
L["Drag items into the window below to add more."] = "增加内容清单：将物品拖曳至下面的视窗内。"
L["Hold this key to to temporarily %s automation"] = "按住这个按键可以暂时 %s 自动交接。"
L["Only select gossip option while not in a raid"] = "只在不在团队中时启用自动选择对话选项的功能"
L["Quests starting with and/or containing these items will not be automated."] = "以这些物品为起始的任务将不会自动执行。"
L["Reverse the behaviour of the modifier key"] = "反转辅助键的行为（勾选后，按下按键才启用自动交接）"
L["Right-click to remove item"] = "右键点击将物品从列表移除"
L["Soloing"] = "独自"
L["The Collapse"] = "崩塌遗迹"
L["When to select gossip while in a raid"] = "在团队中启用自动选择对话选项的功能"

elseif(locale == 'zhTW') then
	L["Always accept and complete Nomi's daily quest, despite being low-level"] = "總是接受並完成糯米的每日任務，儘管是低級別。"
L["Automatically pay Darkmoon Faire teleporting fees"] = "自動支付暗月馬戲團傳送費。"
L["Automatically select single gossip options"] = "自動選擇單一對話選項。"
L["Automatically share quests when picked up"] = "拾取後自動分享任務。"
L["Disable while doing the withered training scenario in Suramar"] = "位於蘇拉瑪爾的凋萎者訓練場時禁用。"
L["Drag items into the window below to add more."] = "增加內容清單：將物品拖曳至下面的視窗內。"
L["Hold this key to to temporarily %s automation"] = "按住這個按鍵可以暫時 %s 自動交接。"
L["Only select gossip option while not in a raid"] = "只在不在團隊中時啟用自動選擇對話選項的功能"
L["Quests starting with and/or containing these items will not be automated."] = "以這些物品為起始的任務將不會自動執行。"
L["Reverse the behaviour of the modifier key"] = "反轉輔助鍵的行為（勾選後，按下按鍵才啟用自動交接）"
L["Right-click to remove item"] = "右鍵點擊將物品從列表移除"
L["Soloing"] = "獨自"
L["The Collapse"] = "崩塌遺跡"
L["When to select gossip while in a raid"] = "在團隊中時，啟用自動選擇對話選項的功能"

end
