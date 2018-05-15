if not(GetLocale() == "zhTW") then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	L["-- Do not remove this comment, it is part of this trigger: "] = "-- Do not remove this comment, it is part of this trigger: "
	L["% of Progress"] = "進度%"
	L["%i Matches"] = "%i 個符合"
	L["%s Color"] = "%s 顏色"
	L["%s total auras"] = "總共 %s 個提醒效果"
	L["1 Match"] = "1 個符合"
	L["1. Text"] = "1.文字"
	L["1. Text Settings"] = "1.文字設定"
	L["2. Text"] = "2.文字"
	L["2. Text Settings"] = "2.文字設定"
	L["A 20x20 pixels icon"] = "20x20 大小的圖示"
	L["A 32x32 pixels icon"] = "32x32 大小的圖示"
	L["A 40x40 pixels icon"] = "40x40 大小的圖示"
	L["A 48x48 pixels icon"] = "48x48 大小的圖示"
	L["A 64x64 pixels icon"] = "64x64 大小的圖示"
	L["A group that dynamically controls the positioning of its children"] = "可動態控制子項目位置的群組"
	L["Actions"] = "動作"
	L["Add a new display"] = "新增提醒效果"
	L["Add Condition"] = "新增條件"
	L["Add Overlay"] = "加上疊加圖層"
	L["Add Property Change"] = "新增屬性變化"
	L["Add to group %s"] = "加入到群組 %s"
	L["Add to new Dynamic Group"] = "加入到新的動態群組"
	L["Add to new Group"] = "加入到新的群組"
	L["Add Trigger"] = "新增觸發"
	L["Addon"] = "插件"
	L["Addons"] = "插件"
	L["Align"] = "置中"
	L["Allow Full Rotation"] = "允許完整旋轉"
	L["Alpha"] = "透明度"
	L["Anchor"] = "對齊點"
	L["Anchor Point"] = "對齊點"
	L["Anchored To"] = "對齊到"
	L["And "] = "And (和) "
	L["Angle"] = "角度"
	L["Animate"] = "閃爍"
	L["Animated Expand and Collapse"] = "展開和收合的動畫效果"
	L["Animates progress changes"] = "進度變化動畫效果"
	L["Animation relative duration description"] = [=[動畫的持續時間是相對於提醒效果的持續時間，使用分數 (1/2)、百分比 (50%) 或小數 (0.5) 來表示。
|cFFFF0000特別注意:|r 如果提醒效果沒有進度 (是非時間性的事件觸發，或沒有時間的光環...等)，動畫將不會播放。

|cFF4444FF例如:|r
如果動畫的持續時間設為 |cFF00CC0010%|r，提醒效果的觸發是 20 秒的光環，那麼開始動畫將會播放 2 秒。
如果動畫的持續時間設為 |cFF00CC0010%|r，提醒效果的觸發沒有設定持續時間，將不會播放開始動畫 (儘管你有設定持續時間的秒數)。
If the animation's duration is set to |cFF00CC0010%|r, and the display's trigger is a buff that has no set duration, no start animation will play (although it would if you specified a duration in seconds).]=]
	L["Animation Sequence"] = "動畫序列"
	L["Animations"] = "動畫"
	L["Apply Template"] = "套用範本"
	L["Arcane Orb"] = "祕法光球"
	L["At a position a bit left of Left HUD position."] = "比左方 HUD 更左一點的位置"
	L["At a position a bit left of Right HUD position"] = "比右方 HUD 更右一點的位置"
	L["At the same position as Blizzard's spell alert"] = "和暴雪法術警告效果相同的位置"
	L["Aura Name"] = "光環名稱"
	L["Aura Type"] = "光環類型"
	L["Aura(s)"] = "光環"
	L["Aura:"] = "光環:"
	L["Auras:"] = "光環:"
	L["Auto"] = "自動"
	L["Auto-cloning enabled"] = "自動複製已啟用"
	L["Automatic Icon"] = "自動圖示"
	L["Backdrop Color"] = "背景顏色"
	L["Backdrop in Front"] = "背景在前面"
	L["Backdrop Style"] = "背景類型"
	L["Background"] = "背景"
	L["Background Color"] = "背景顏色"
	L["Background Inset"] = "背景小圖"
	L["Background Offset"] = "背景位置"
	L["Background Texture"] = "背景材質"
	L["Bar Alpha"] = "進度條透明度"
	L["Bar Color"] = "進度條顏色"
	L["Bar Color Settings"] = "進度條顏色設定"
	L["Bar Texture"] = "進度條材質"
	L["Big Icon"] = "大圖示"
	L["Blend Mode"] = "混合模式"
	L["Blue Rune"] = "藍色符文"
	L["Blue Sparkle Orb"] = "藍色光球"
	L["Border"] = "邊框"
	L["Border Color"] = "邊框顏色"
	L["Border in Front"] = "邊框在前面"
	L["Border Inset"] = "邊框內縮"
	L["Border Offset"] = "邊框位置"
	L["Border Settings"] = "邊框設定"
	L["Border Size"] = "邊框大小"
	L["Border Style"] = "邊框樣式"
	L["Bottom Text"] = "底部文字"
	L["Bracket Matching"] = "括號配對符合"
	L["Button Glow"] = "按鈕發光"
	L["Can be a name or a UID (e.g., party1). A name only works on friendly players in your group."] = "可以是名字或是 UID (例如 party1)，名字只對隊伍中的友方玩家有效。"
	L["Cancel"] = "取消"
	L["Channel Number"] = "頻道編號"
	L["Chat Message"] = "聊天訊息文字"
	L["Check On..."] = "檢查..."
	L["Children:"] = "子項目:"
	L["Choose"] = "選擇"
	L["Choose Trigger"] = "選擇觸發"
	L["Choose whether the displayed icon is automatic or defined manually"] = "選擇要顯示的圖示是自動的或手動選擇圖示"
	L["Clone option enabled dialog"] = [=[你啟用了一個選項會用到 |cFFFF0000自動複製|r 的功能。

|cFFFF0000自動複製|r 會讓提醒效果自動複製出多份以顯示多個資訊來源。
除非將這個提醒效果放在 |cFF22AA22動態群組|r 中，所有複製出來的都會顯示在另一個的上方，變成一大堆。

是否要將這個顯示效果放到一個新的 |cFF22AA22動態群組|r 裡面?]=]
	L["Close"] = "關閉"
	L["Collapse"] = "收合"
	L["Collapse all loaded displays"] = "收合所有已載入的提醒效果"
	L["Collapse all non-loaded displays"] = "收合所有未載入的提醒效果"
	L["Color"] = "顏色"
	L["color"] = "顏色"
	L["Compress"] = "精簡"
	L["Condition %i"] = "條件 %i"
	L["Conditions"] = "條件"
	L["Constant Factor"] = "常數因子"
	L["Control-click to select multiple displays"] = "按住 Ctrl 鍵點擊可選擇多個提醒效果"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "同時控制多個提醒效果的位置和設定"
	L["Convert to..."] = "轉換成..."
	L["Cooldown"] = "冷卻"
	L["Copy settings..."] = "複製設定..."
	L["Copy to all auras"] = "複製到全部的光環"
	L["Copy URL"] = "複製 URL"
	L["Count"] = "計數"
	L["Creating buttons: "] = "建立按鈕: "
	L["Creating options: "] = "建立選項: "
	L["Crop"] = "裁剪"
	L["Crop X"] = "裁剪X"
	L["Crop Y"] = "裁剪Y"
	L["Custom"] = "自訂"
	L["Custom Code"] = "自訂程式碼"
	L["Custom Function"] = "自訂函數"
	L["Custom Trigger"] = "自訂觸發"
	L["Custom trigger event tooltip"] = [=[選擇自訂觸發要檢查的事件。
可用逗號分隔多個事件。

|cFF4444FF例如:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
	L["Custom trigger status tooltip"] = [=[選擇自訂觸發要檢查的事件。
因為這是狀態類型的觸發，所指定的事件必須不用加參數就能夠被 WeakAuras 呼叫。
可用逗號分隔多個事件。

|cFF4444FF例如:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
	L["Custom Untrigger"] = "自訂取消觸發"
	L["Debuff Type"] = "減益效果類型"
	L["Default"] = "預設"
	L["Delete"] = "刪除"
	L["Delete all"] = "全部刪除"
	L["Delete children and group"] = "刪除子項目和群組"
	L["Delete Trigger"] = "刪除觸發"
	L["Desaturate"] = "去色"
	L["Differences"] = "差異"
	L["Disable Import"] = "停用匯入"
	L["Disabled"] = "停用"
	L["Discrete Rotation"] = "分離旋轉"
	L["Display"] = "提醒效果"
	L["Display Icon"] = "提醒效果圖示"
	L["Display Text"] = "提醒效果文字"
	L["Displays a text, works best in combination with other displays"] = "顯示文字，最適合和其他顯示效果一起搭配使用"
	L["Distribute Horizontally"] = "水平分佈"
	L["Distribute Vertically"] = "垂直分佈"
	L["Do not group this display"] = "不要群組這個提醒效果"
	L["Done"] = "完成"
	L["Down"] = "下移"
	L["Drag to move"] = "滑鼠拖曳來移動"
	L["Duplicate"] = "多複製一份"
	L["Duplicate All"] = "全部多複製一份"
	L["Duration (s)"] = "持續時間 (秒)"
	L["Duration Info"] = "持續時間訊息"
	L["Dynamic Group"] = "動態群組"
	L["Dynamic Information"] = "動態資訊"
	L["Dynamic information from first active trigger"] = "來自第一個有效觸發的動態資訊"
	L["Dynamic information from Trigger %i"] = "來自觸發 %i 的動態資訊"
	L["Dynamic text tooltip"] = [=[有幾種特別的代碼可以讓文字顯示為動態的:

|cFFFF0000%p|r - 進度 - 剩餘的時間，或是非時間的數值。
|cFFFF0000%t|r - 總共 - 持續時間的最大值，或是非時間的最大值。
|cFFFF0000%n|r - 名稱 - 提醒效果的名稱 (通常是光環的名稱)，沒有動態名稱時會顯示提醒效果的 ID。
|cFFFF0000%i|r - 圖示 - 和這個提醒效果關聯的圖示。
|cFFFF0000%s|r - 堆疊 - 通常是光環的堆疊層數。
|cFFFF0000%c|r - 自訂 - 允許自訂 Lua 函數傳回要顯示的文字字串。]=]
	L["Enabled"] = "啟用"
	L["End Angle"] = "結束角度"
	L["Enter an aura name, partial aura name, or spell id"] = "輸入光環名稱、光環部分名稱，或是法術 ID"
	L["Event"] = "事件"
	L["Event Type"] = "事件類型"
	L["Event(s)"] = "事件"
	L["Everything"] = "全部"
	L["Expand"] = "展開"
	L["Expand all loaded displays"] = "展開所有已載入的提醒效果"
	L["Expand all non-loaded displays"] = "展開所有未載入的提醒效果"
	L["Expansion is disabled because this group has no children"] = "無法展開，因為這個群組沒有子項目"
	L["Export to Lua table..."] = "匯出成 Lua table..."
	L["Export to string..."] = "匯出成文字字串..."
	L["Fade"] = "淡化"
	L["Fade In"] = "淡入"
	L["Fade Out"] = "淡出"
	L["False"] = "否 (False)"
	L["Finish"] = "結束"
	L["Fire Orb"] = "火球"
	L["Font"] = "文字"
	L["Font Flags"] = "文字樣式"
	L["Font Size"] = "文字大小"
	L["Font Type"] = "字體"
	L["Foreground Color"] = "前景顏色"
	L["Foreground Texture"] = "前景材質"
	L["Frame"] = "框架"
	L["Frame Strata"] = "框架層級"
	L["From Template"] = "從範本建立 (**推薦**)"
	L["Full Scan"] = "完整掃描"
	L["General Text Settings"] = "一般文字設定"
	L["Glow"] = "發光"
	L["Glow Action"] = "發光動作"
	L["Green Rune"] = "綠色符文"
	L["Group"] = "群組"
	L["Group (verb)"] = "群組"
	L["Group aura count description"] = [=[要觸發這個提醒效果，必須有 %s 個成員受到一個或多個指定光環的影響。
如果輸入的數字是整數 (例如 5)，受到影響的團隊成員數量會和輸入的數字做比較。
如果輸入的數字是小數 (例如 0.5)、分數 (例如 1/2) 或百分比 (例如 50%%)，那麼 %s 的部分必須受到影響。

|cFF4444FF舉例來說:|r
|cFF00CC00> 0|r 當 %s 中的任何人受到影響時會觸發
|cFF00CC00= 100%%|r 當 %s 中的任何人受到影響時會觸發
|cFF00CC00!= 2|r 當 %s 中受到影響的人數不剛好為 2 的時候會觸發
|cFF00CC00<= 0.8|r 當 %s 中受到影響的人數少於 80%% 的時候會觸發 (5人隊伍時為4人、10人團隊時為8人、25人團隊時為20人)
|cFF00CC00> 1/2|r 當 %s 中受到影響的人數超過一半時會觸發
|cFF00CC00>= 0|r 無論如何永遠都會觸發]=]
	L["Group Member Count"] = "群組成員總數"
	L["Grow"] = "增長"
	L["Hawk"] = "老鷹"
	L["Height"] = "高度"
	L["Hide"] = "隱藏"
	L["Hide on"] = "隱藏"
	L["Hide this group's children"] = "隱藏這個群組的子項目"
	L["Hide When Not In Group"] = "不在隊伍中時隱藏"
	L["Horizontal Align"] = "水平對齊"
	L["Horizontal Bar"] = "水平進度條"
	L["Horizontal Blizzard Raid Bar"] = "暴雪團隊水平進度條"
	L["Huge Icon"] = "超大圖示"
	L["Hybrid Position"] = "混合位置"
	L["Hybrid Sort Mode"] = "混合模式"
	L["Icon"] = "圖示"
	L["Icon Color"] = "圖示顏色"
	L["Icon Info"] = "圖示訊息"
	L["Icon Inset"] = "圖示內嵌"
	L["If"] = "If (如果)"
	L["If this option is enabled, you are no longer able to import auras."] = "啟用這個選項時，將無法匯入提醒效果。"
	L["If Trigger %s"] = "如果觸發 %s"
	L["Ignored"] = "忽略"
	L["Import"] = "匯入"
	L["Import a display from an encoded string"] = "從編碼字串匯入提醒效果"
	L["Inverse"] = "反向"
	L["Inverse Slant"] = "反向傾斜"
	L["Justify"] = "左右對齊"
	L["Keep Aspect Ratio"] = "保持長寬比例"
	L["Leaf"] = "葉子"
	L["Left 2 HUD position"] = "左2 HUD 位置"
	L["Left HUD position"] = "左方 HUD 位置"
	L["Left Text"] = "左邊文字"
	L["Load"] = "載入"
	L["Loaded"] = "已載入"
	L["Loop"] = "重複循環"
	L["Low Mana"] = "低法力"
	L["Main"] = "主要"
	L["Manage displays defined by Addons"] = "管理插件所定義的提醒效果"
	L["Medium Icon"] = "中圖示"
	L["Message"] = "訊息"
	L["Message Prefix"] = "訊息字首"
	L["Message Suffix"] = "訊息字尾"
	L["Message Type"] = "訊息類型"
	L["Message type:"] = "訊息類型:"
	L["Mirror"] = "鏡像"
	L["Model"] = "模組"
	L["Move Down"] = "往下移動"
	L["Move this display down in its group's order"] = "將這個提醒效果在群組中的順序往下移動"
	L["Move this display up in its group's order"] = "將這個提醒效果在群組中的順序往上移動"
	L["Move Up"] = "往上移動"
	L["Multiple Displays"] = "多個提醒效果"
	L["Multiple Triggers"] = "多觸發"
	L["Multiselect ignored tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777單一|r - |cFF777777多個|r
這個選項將不會用來決定何時該載入這個顯示效果]=]
	L["Multiselect multiple tooltip"] = [=[|cFF777777忽略|r - |cFF777777單一|r - |cFF00FF00多個|r
只要有符合的都會被載入]=]
	L["Multiselect single tooltip"] = [=[|cFF777777忽略|r - |cFF00FF00單一|r - |cFF777777多個|r
只有符合這一個值的時候會被載入]=]
	L["Name Info"] = "名稱訊息"
	L["Negator"] = "不"
	L["Never"] = "永不"
	L["New"] = "新增"
	L["No"] = "取消"
	L["No Children"] = "沒有子項目"
	L["No tooltip text"] = "沒有滑鼠提示文字"
	L["None"] = "無"
	L["Not all children have the same value for this option"] = "並非所有子項目的這個設定都使用相同的數值"
	L["Not Loaded"] = "未載入"
	L["Offer a guided way to create auras for your class"] = "使用導引的方式來建立你的職業的光環"
	L["Okay"] = "確認"
	L["On Hide"] = "消失時"
	L["On Init"] = "初始化時"
	L["On Show"] = "出現時"
	L["Only match auras cast by people other than the player"] = "只匹配其他玩家施放的光環"
	L["Only match auras cast by the player"] = "只匹配玩家自己施放的光環"
	L["Operator"] = "運算符"
	L["or"] = "或"
	L["Orange Rune"] = "橘色符文"
	L["Orientation"] = "方向"
	L["Outline"] = "外框"
	L["Overflow"] = "超出範圍"
	L["Overlay %s Info"] = "疊加 %s 資訊"
	L["Overlays"] = "疊加圖層"
	L["Own Only"] = "只顯示自己的"
	L["Paste Action Settings"] = "貼上動作設定"
	L["Paste Animations Settings"] = "貼上動畫設定"
	L["Paste Condition Settings"] = "貼上條件設定"
	L["Paste Display Settings"] = "貼上顯示設定"
	L["Paste Group Settings"] = "貼上群組設定"
	L["Paste Load Settings"] = "貼上載入設定"
	L["Paste Settings"] = "貼上設定"
	L["Paste text below"] = "在下面貼上文字"
	L["Paste Trigger Settings"] = "貼上觸發設定"
	L["Play Sound"] = "播放音效"
	L["Portrait Zoom"] = "放大頭像"
	L["Preset"] = "預設配置"
	L["Prevents duration information from decreasing when an aura refreshes. May cause problems if used with multiple auras with different durations."] = "防止光環持續時間的更新頻率降低，使用多個持續時間不同的光環時可能會發生問題。"
	L["Processed %i chars"] = "處理進度 %i 個字元"
	L["Progress Bar"] = "進度條"
	L["Progress Texture"] = "進度材質"
	L["Purple Rune"] = "紫色符文"
	L["Put this display in a group"] = "將這個提醒效果放入群組中"
	L["Radius"] = "半徑"
	L["Re-center X"] = "重新水平置中"
	L["Re-center Y"] = "重新垂直置中"
	L["Remaining Time"] = "剩餘時間"
	L["Remaining Time Precision"] = "剩餘時間精確度"
	L["Remove"] = "移除"
	L["Remove this condition"] = "移除這個條件"
	L["Remove this display from its group"] = "將這個提醒效果從群組中移除"
	L["Remove this property"] = "移除這個屬性"
	L["Rename"] = "重新命名"
	L["Repeat After"] = "之後重複"
	L["Repeat every"] = "每次重複"
	L["Required for Activation"] = "啟用需要"
	L["Right 2 HUD position"] = "右2 HUD 位置"
	L["Right HUD position"] = "右方 HUD 位置"
	L["Right Text"] = "右邊文字"
	L["Right-click for more options"] = "右鍵點擊顯示更多設定"
	L["Rotate"] = "旋轉"
	L["Rotate In"] = "旋轉進入"
	L["Rotate Out"] = "旋轉退出"
	L["Rotate Text"] = "旋轉文字"
	L["Rotation"] = "旋轉"
	L["Rotation Mode"] = "旋轉模式"
	L["Same"] = "相同"
	L["Scale"] = "縮放大小"
	L["Search"] = "搜尋"
	L["Select the auras you always want to be listed first"] = "選擇永遠要列在前面的特效"
	L["Send To"] = "發送到"
	L["Set Parent to Anchor"] = "將對齊點設為上一層"
	L["Set tooltip description"] = "設定滑鼠提示說明內容"
	L["Settings"] = "設定"
	L["Shift-click to create chat link"] = "Shift-左鍵點擊建立 |cFF8800FF[聊天連結]"
	L["Show all matches (Auto-clone)"] = "顯示所有符合的 (自動複製)"
	L["Show Cooldown Text"] = "顯示冷卻文字"
	L["Show If Unit Is Invalid"] = "單位無效時顯示"
	L["Show model of unit "] = "顯示單位的模組"
	L["Show On"] = "顯示於"
	L["Show this group's children"] = "顯示這個群組的子項目"
	L["Shows a 3D model from the game files"] = "顯示遊戲檔案中的3D模組"
	L["Shows a custom texture"] = "顯示自訂材質"
	L["Shows a progress bar with name, timer, and icon"] = "顯示一個包含名稱、時間和圖示的進度條"
	L["Shows a spell icon with an optional cooldown overlay"] = "顯示法術圖示，可選擇是否要在上面顯示冷卻時間。"
	L["Shows a texture that changes based on duration"] = "顯示根據時間變化的材質"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "顯示包含動態資訊的文字 (例如進度或是堆疊層數，允許一行或多行)"
	L["Size"] = "大小"
	L["Slant Amount"] = "傾斜大小"
	L["Slant Mode"] = "傾斜模式"
	L["Slanted"] = "已傾斜"
	L["Slide"] = "滑動"
	L["Slide In"] = "滑入"
	L["Slide Out"] = "滑出"
	L["Small Icon"] = "小圖示"
	L["Smooth Progress"] = "平順顯示進度"
	L["Sort"] = "排序"
	L["Sound"] = "音效"
	L["Sound Channel"] = "音效頻道"
	L["Sound File Path"] = "音效檔案路徑"
	L["Sound Kit ID"] = "Sound Kit ID"
	L["Space"] = "間隔"
	L["Space Horizontally"] = "橫向間隔"
	L["Space Vertically"] = "縱向間隔"
	L["Spark"] = "亮點"
	L["Spark Settings"] = "亮點設定"
	L["Spark Texture"] = "亮點材質"
	L["Specific Unit"] = "指定單位"
	L["Spell ID"] = "法術 ID"
	L["Stack Count"] = "堆疊層數"
	L["Stack Info"] = "堆疊層數資訊"
	L["Stacks"] = "堆疊層數"
	L["Stacks Settings"] = "堆疊層數設定"
	L["Stagger"] = "交錯"
	L["Star"] = "星星"
	L["Start"] = "開始"
	L["Start Angle"] = "開始時的角度"
	L["Status"] = "狀態"
	L["Stealable"] = "可法術竊取"
	L["Sticky Duration"] = "快速更新時間"
	L["Stop Sound"] = "停止音效"
	L["Symbol Settings"] = "符號設定"
	L["Temporary Group"] = "暫時性的群組"
	L["Text"] = "文字"
	L["Text Color"] = "文字顏色"
	L["Text Position"] = "文字位置"
	L["Texture"] = "材質"
	L["Texture Info"] = "材質資訊"
	L["Texture Wrap"] = "材質包覆"
	L["The children of this group have different display types, so their display options cannot be set as a group."] = "這個群組的子項目有不同的特效類型，這些特效選項無法使用群組來設定。"
	L["The duration of the animation in seconds."] = "動畫的持續時間(秒)。"
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = "動畫的持續時間 (秒)。直到提醒效果正常隱藏後，才會播放結束時的動畫。"
	L["The type of trigger"] = "觸發類型"
	L["Then "] = "Then (則) "
	L["This display is currently loaded"] = "這個提醒效果已經載入"
	L["This display is not currently loaded"] = "這個提醒效果尚未載入"
	L["This region of type \"%s\" is not supported."] = "不支援的地區類型 \"%s\"。"
	L["Time in"] = "時間"
	L["Tiny Icon"] = "小小圖示"
	L["To Frame's"] = "對齊框架的"
	L["to group's"] = "對齊群組的"
	L["To Personal Ressource Display's"] = "對齊個人資源條的"
	L["To Screen's"] = "對齊螢幕的"
	L["Toggle the visibility of all loaded displays"] = "切換顯示所有已載入的提醒效果"
	L["Toggle the visibility of all non-loaded displays"] = "切換顯示所有未載入的提醒效果"
	L["Toggle the visibility of this display"] = "切換顯示這個提醒效果"
	L["Tooltip"] = "滑鼠提示"
	L["Tooltip on Mouseover"] = "滑鼠指向時的提示說明"
	L["Top HUD position"] = "上方 HUD 位置"
	L["Top Text"] = "頂部文字"
	L["Total Time Precision"] = "總共時間精確度"
	L["Trigger"] = "觸發"
	L["Trigger %d"] = "觸發 %d"
	L["Trigger:"] = "觸發:"
	L["True"] = "是 (True)"
	L["Type"] = "類型"
	L["Undefined"] = "未定義"
	L["Ungroup"] = "解散群組"
	L["Unit"] = "單位"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "不同於開始或結束時的動畫，主要動畫將重複循環直到提醒效果被隱藏。"
	L["Up"] = "上移"
	L["Update Custom Text On..."] = "更新自訂文字於..."
	L["Use Full Scan (High CPU)"] = "使用完整掃描 (高 CPU)"
	L["Use SetTransform (will change behaviour in 7.3)"] = "使用 SetTransform (在魔獸世界 7.3 中會改變效果)"
	L["Use tooltip \"size\" instead of stacks"] = "使用滑鼠提示的 \"大小\" 而不是堆疊"
	L["Used in auras:"] = "用於光環:"
	L["Version: "] = "版本: "
	L["Vertical Align"] = "垂直對齊"
	L["Vertical Bar"] = "垂直進度條"
	L["View"] = "檢視"
	L["Width"] = "寬度"
	L["X Offset"] = "水平位置"
	L["X Rotation"] = "水平旋轉"
	L["X Scale"] = "水平縮放"
	L["Y Offset"] = "垂直位置"
	L["Y Rotation"] = "垂直旋轉"
	L["Y Scale"] = "垂直縮放"
	L["Yellow Rune"] = "黃色符文"
	L["Yes"] = "是的"
	L["Z Offset"] = "Z軸位置"
	L["Z Rotation"] = "Z軸旋轉"
	L["Zoom"] = "縮放"
	L["Zoom In"] = "放大"
	L["Zoom Out"] = "縮小"

