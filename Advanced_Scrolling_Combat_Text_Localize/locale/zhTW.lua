local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--Chinese Traditional
-------------------------------------
if locale == "zhTW" then
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
 L["Tab"] = "此選項卡僅適用於薩滿和亨特。";
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
 L["Death Quadrants"] = "死亡象限";
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
 L["Trinket 1"] = "飾品 1";
 L["Trinket Slot One"] = "插槽 13 中的第一個小飾品。";
 L["Trinket Slot One Info"] = "宣佈您的第一個飾品何時冷卻。";
 L["Trinket 2"] = "飾品 2";
 L["Trinket Slot Two"] = "插槽 14 中的第二個小飾品。";
 L["Trinket Slot Two Info"] = "宣佈您的第二個飾品何時冷卻。";
 --New Things 8/26/2023
 L["Debuff fade time"] = "減益淡出時間";
 L["The time warning for Debuffs about to fade"] = "減益的時間警告即將消退";
end