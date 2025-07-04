local ASCT, L = ASCT_Table, ASCT_locale_Table
local API, Strings = ASCT.API, ASCT.Strings
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--Chinese Traditional
-------------------------------------
if locale == Strings.LocaleName["zhTW"] then
 --Rogue
 L["Rogue"] = "流氓";
 L["Assassination"] = "暗殺";
 L["Combat"] = "戰鬥";
 L["Outlaw"] = "宣告非法";
 L["Subtlety"] = "微妙";
 --Priest
 L["Priest"] = "牧師";
 L["Shadow"] = "影子";
 L["Discipline"] = "學科";
 L["Racials_Priest"] = "種族牧師";
 --Warrior
 L["Warrior"] = "戰士";
 L["Arms"] = "武器";
 L["Fury"] = "憤怒";
 --Druid
 L["Druid"] = "德魯伊";
 L["Balance"] = "平衡";
 L["Feral_Combat"] = "野戰";
 --Shaman
 L["Shaman"] = "薩滿";
 L["Elemental"] = "元素";
 L["Enhancement"] = "增強";
 --Warlock
 L["Warlock"] = "魔術師";
 L["Affliction"] = "痛苦";
 L["Demonology"] = "鬼神學";
 L["Destruction"] = "破壞";
 --Hunter
 L["Hunter"] = "獵人";
 L["Beast Mastery"] = "野獸精通";
 L["Marksmanship"] = "槍法";
 L["Survival"] = "生存";
 --Paladin
 L["Paladin"] = "聖 騎士";
 L["Retribution"] = "報應";
  --Mage
 L["Mage"] = "魔術師";
 L["Arcane"] = "神秘";
 L["Fire"] = "火災";
 --Demon Hunter
 L["Havoc"] = "大破壞";
 L["Vengeance"] = "復讎";
 --Death Knight
 L["Blood"] = "血";
 L["Unholy"] = "邪惡";
 --Monk
 L["Brewmaster"] = "釀酒師";
 L["Mistweaver"] = "霧織機";
 L["Windwalker"] = "風行者";
 --Evoker
 L["Preservation"] = "保存";
 L["Devastation"] = "破壞";
 L["Augmentation"] = "增大";
  --Shared-Spec-names
 L["Frost"] = "霜";
 L["Restoration"] = "恢復";
 L["Holy"] = "神聖";
 L["Protection"] = "保護";
 --Side-Buttons
 L["Reset Class"] = "重置類";
 L["Title_SARTE"] = "滾動能力文本";
 L["Color Picker"] = "顏色選取器";
 L["Tooltip Button"] = "左鍵按下以打開「選項」 面板";
 L["Racials"] = "種族";
 L["Shared Spell cd's"] = "共用咒語光碟";
 --Custom Button Names
 L["Shocks"] = "衝擊";
 L["Traps"] = "陷阱";
 L["Lust"] = "慾望";
 L["This Tab is for Shaman's and Hunter's only."] = "此選項卡僅適用於薩滿和亨特。";
 --Ready Text
 L["msg"] = "現在準備好了！";
 L["msg_Shocks"] = " 衝擊現在已經準備好了！";
 L["msg_Traps"] = " 陷阱現在已經準備好了！";
 L["msg_Lust"] = " 慾望現在已經準備好了！";
 --Message
 L["Nothing"] = "無";
 L["Open To Options Panel"] = "打開選項面板";
 --New things
 L["Icon"] = "圖示";
 L["Name"] = "名字";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "您的技能";
 L["has increased to"] = "已增至";
 L["Congratulations"] = "祝賀";
 L["you are now level"] = "你現在是水準";
 L["Title"] = "高級滾動戰鬥文本";
 L["Experience Gains"] = "經驗收益";
 L["Level up message"] = "升級消息";
 L["Skill Up"] = "技能提升";
 L["Resource lost"] = "資源丟失";
 L["Mana"] = "法力";
 L["Rage"] = "憤怒";
 L["Energy"] = "能源";
 L["Runic Power"] = "符文功率";
 L["Armor"] = "裝甲";
 L["Armor lost"] = "裝甲丟失";
 L["Armor Gained"] = "獲得的護甲";
 L["Slash Command Message"] = "斜杠命令已更改為高級滾動戰鬥文本。鍵入 /asct 以打開選項面板";
 L["Features"] = "特徵";
 L["Message"] = "滾動戰鬥文本已禁用。如果未啟用，高級滾動戰鬥文本將不會顯示任何內容。";
 --New things 8/11/2022
 L["Leveling"] = "水準";
 L["Lost"] = "失去";
 L["Gained"] = "獲得";
 L["Attack Power"] = "攻擊力";
 L["Agility"] = "敏捷";
 L["Strength"] = "強度";
 L["Intellect"] = "智力";
 L["Spirit"] = "精神";
 L["Stamina"] = "耐力";
 --New things 8/14/2022
 L["Auras"] = "光環";
 L["Fading Debuffs Alert"] = "褪色減益警報";
 L["Is About to Fade!"] = "即將褪色！";
 L["Debuff has 5 seconds left"] = "Debuff 還剩下 5 秒";
 L["Announces a Debuff you applied is about to fade on the Target."] = "宣佈您應用的減益即將在目標上淡入淡出。";
 L["Fading Buffs Alert"] = "淡入淡出的增益警報";
 L["Buff has 5 seconds left"] = "Buff 還剩下 5 秒";
 L["Announces when a buff you gained is about to fade"] = "宣佈您獲得的增益即將消失";
 --New things 8/15/2022
 L["Color Picker Stats"] = "統計數據的顏色";
 L["Color Picker Spells"] = "法術的顏色";
 L["Color Picker Leveling"] = "調平顏色";
 L["Achievement Gains"] = "成就收益";
 L["Colors for Fading Auras"] = "褪色光環的顏色";
 --New things 8/17/2022
 L["Health"] = "健康";
 L["You died at"] = "你死在";
 L["Death Coordinates"] = "死亡座標";
 L["Has challenged you to a duel."] = "挑戰你進行決鬥。";
 L["Duel Requests"] = "決鬥請求";
 L["Messages"] = "消息";
 L["Inventory full"] = "庫存已滿";
 L["Locked Items"] = "鎖定的專案";
 L["Group Invites"] = "群組邀請";
 L["Quest Accepted"] = "任務已接受";
 L["Quest Completed"] = "任務已完成";
 L["Quest Log Full"] = "任務日誌已滿";
 L["Trade Requests"] = "交易請求";
 L["Facing the wrong way"] = "面對錯誤的方式";
 L["Friends come Online"] = "朋友上線";
 L["Friends go Offline"] = "好友離線";
 L["Zone discovery"] = "區域發現";
 L["Unlearned Skills"] = "未學過的技能";
 L["Rested"] = "休息";
 L["Sent Mail"] = "已發送郵件";
 L["Dungeon Difficulty Changed"] = "地下城難度改變";
 L["Not Enough Honor Points"] = "榮譽積分不足";
 L["Not Arena Honor Points"] = "不是競技場榮譽積分";
 L["Players Invited"] = "受邀玩家";
 L["Player Left your group"] = "玩家離開您的小組";
 L["Player joins your group"] = "玩家加入您的群組";
 L["War mode Off"] = "戰爭模式關閉";
 L["War mode On"] = "戰爭模式 開啟";
 L["Pvp On"] = "對戰時打開";
 L["Pvp Off"] = "玩家對戰關閉";
 L["You Loot"] = "你搶劫";
 L["You lost"] = "你輸了";
 L["Money Gains"] = "金錢收益";
 L["Money Lost"] = "損失的錢";
 L["Items Looted"] = "被掠奪的物品";
 L["Shadow Resistance"] = "防陰影";
 L["Arcane Resistance"] = "神秘抵抗";
 L["Frost Resistance"] = "抗凍性";
 L["Fire Resistance"] = "耐火性";
 L["Nature Resistance"] = "耐自然性";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "高級滾動戰鬥文本已成功載入。載入選項面板。鍵入 /ASCT 或按兩下迷你地圖圖示。";
 --New things 9/2/2022
 L["Holy Power"] = "聖力";
 L["Astral Power"] = "星體力量";
 L["Maelstrom"] = "漩渦";
 L["Insanity"] = "精神錯亂";
 L["Fury"] = "憤怒";
 L["Focus"] = "重點";
 --New things 9/18/2022
 L["Hit Rating"] = "命中率";
 L["Critical Strike Rating"] = "嚴重打擊評級";
 L["Expertise Rating"] = "專業技能評級";
 L["Resilience Rating"] = "彈性等級";
 L["Dodge Rating"] = "道奇評級";
 L["Defense Rating"] = "防禦評級";
 L["Parry Rating"] = "帕里評級";
 L["Block Rating"] = "區塊評級";
 L["Haste Rating"] = "倉促評級";
 L["Spell Power"] = "法術力量";
 L["Unsupported_Line_1"] = "您正在運行不受支援的遊戲版本中的高級滾動戰鬥文字。";
 L["Unsupported_Line_2"] = "外掛程式在專用伺服器上不起作用。";
 L["Unsupported_Line_3"] = "該外掛程式僅在暴雪官方伺服器上受支援。";
 L["Unsupported_Line_4"] = "是否要禁用外掛程式？還是保持啟用狀態？";
 L["Unsupported_Line_5"] = "高級滾動戰鬥文本未載入！";
 L["Keep Enabled"] = "保持啟用狀態";
 L["Disable"] = "禁用";
 L["You have gained the"] = "您已經獲得了";
 L["skill"] = "技能";
 L["Skill Gained"] = "獲得的技能";
 --New Things 4/1/2023
 L["Armor Penetration"] = "裝甲穿透力";
 L["Spell Penetration"] = "法術穿透";
 --New Things 5/27/2023 
 L["Stats"] = "統計";
 L["Trinkets"] = "飾品";
 L["Trinket Slot One"] = "插槽 13 中的第一個小飾品。";
 L["Trinket Slot One Info"] = "宣佈您的第一個飾品何時冷卻。";
 L["Trinket 1"] = "飾品 1";
 L["Trinket 2"] = "飾品 2";
 L["Trinket Slot Two"] = "插槽 14 中的第二個小飾品。";
 L["Trinket Slot Two Info"] = "宣佈您的第二個飾品何時冷卻。";
 --New Things 8/26/2023
 L["Debuff fade time"] = "減益淡出時間";
 L["The time warning for Debuffs about to fade"] = "減益的時間警告即將消退";
 L["The size of the Spell Icon"] = "咒語圖示的大小";
 L["Spell Icon Size"] = "拼寫圖示大小";
 L["Settings"] = "設置";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "重置圖示大小";
 L["Reset Debuff fade time"] = "重置減益淡入淡出時間";
 L["Reset Both Aura and Icon Values"] = "重置光環和圖示值";
 L["Trinket_1"] = "飾品 1";
 L["Trinket_2"] = "飾品 2";
 --New Things 8/29/2023
 L["Loot"] = "戰利品";
 --New Things 9/2/2023
 L["Alliance"] = "聯盟";
 L["Horde"] = "部落";
 --New Things 9/5/2023
 L["Icon Size"] = "圖示大小";
 L["The size of the message icon"] = "消息圖示的大小";
 --New things 9/17/2023
 L["Mastery"] = "掌握";
 L["Avoidance"] = "避免";
 --New things 9/24/2023
 L["Minimap Icon"] = "小地圖圖示";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "滾動戰鬥文本被禁用。如果未啟用，高級滾動戰鬥文本將不會顯示任何內容。";
 --New things 1/01/2024
 L["is now ready!"] = "現在準備好了！";
 L["Is Now Ready!"] = "現在準備好了！";
 L["is about to fade!"] = "快要褪色了！";
 L["Is About To Fade!"] = "快要褪色了！";
 L["Uppercase"] = "大寫";
 L["Lowercase"] = "小寫";
 --New things 3/16/2024
 L["About"] = "大約";
 L["About_Line_1"] = "高級滾動戰鬥文本";
 L["About_Line_2"] = "（原名為滾動能力文本）";
 L["About_Line_3"] = "是一個外掛程式，它增加了預設暴雪浮動戰鬥文本不提供的多功能性。";
 L["About_Line_4"] = "這個外掛程式可以跟蹤技能何時停止冷卻、屬性變化、經驗值增加、資源損失等等！";
 L["About_Line_5"] = "遇到錯誤或想要添加功能？將其報告給 GitHub上 儲存庫！";
 --New things 3/31/2024
 L["Resistances"] = "電阻";
 --New things 5/24/2024
 L["Transmog"] = "幻化";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "已新增至您的外觀收藏。";
 --New things 6/01/2024
 L["Miscellaneous"] = "雜項";
 --New things 6/23/2024
 L["Icon Enable"] = "圖示啟用";
 L["Name Enable"] = "名稱啟用";
 --New things 7/14/2024
 L["Ready!"] = "準備！";
 L["Is Ready!"] = "準備好了！";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "是";
 L["Message Selector"] = "訊息選擇器";
 --New things 01/01/2025
 L["Quest Progress"] = "任務進度";
 L["Complete"] = "完成";
 --New things 02/01/2025
 L["On Login"] = "登錄時";
 L["Chatbox"] = "聊天框";
 L["Transparency"] = "透明度";
 L["Entry Limit"] = "入場限制";
 L["Confirm"] = "確認";
 L["Use /asct help for a list of all the slash commands used in the asct addon."] = "使用 /asct help 獲取 asct 外掛程式中使用的所有斜杠命令的清單。";
 --New things 02/03/2025
 L["Ready Message"] = "就緒消息";
 --New things 03/22/2025
 L["PVP Talents"] = "PVP 天賦";
 --New things 04/05/2025
 L["Reset Options Panel Size And Location"] = "重置選項面板大小和位置";
 --New things 06/08/2025
 L["PVP Power Damage"] = "PVP 力量傷害";
 L["PVP Power Healing"] = "PVP 力量治療";
 L["PVP Power"] = "PVP 力量";
 L["PVP Resilience"] = "PVP 韌性";
 L["Hit"] = "擊中";
 L["Haste"] = "匆忙";
 L["Expertise"] = "專業知識";
 L["Critical Strike"] = "關鍵打擊";
 L["Dodge"] = "躲避";
 L["Parry"] = "帕里";
 --New things 06/26/2025
 L["Chi"] = "中文";
 L["Minimum Resource Cost"] = "最低資源成本";
 L["The Minimum Resource Cost"] = "最小資源成本";
 L["Reset All Slider Values"] = "重置所有滑桿值";
 L["Reset Minimum Resource Cost"] = "重置最小資源成本";
end