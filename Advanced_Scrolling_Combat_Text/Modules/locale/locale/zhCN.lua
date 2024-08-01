local ASCT, L = ASCT_Table, ASCT_locale_Table
local API = ASCT.API
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--Chinese Simplifed
-------------------------------------
if locale == "zhCN" then
 --Rogue
 L["Rogue"] = "潜行者";
 L["Assassination"] = "奇袭";
 L["Combat"] = "狂徒";
 L["Outlaw"] = "宣告非法";
 L["Subtlety"] = "敏锐";
 --Priest
 L["Priest"] = "神圣";
 L["Shadow"] = "暗影";
 L["Discipline"] = "戒律";
 L["Racials_Priest"] = "种族牧师";
 --Warrior
 L["Warrior"] = "战士";
 L["Arms"] = "武器";
 L["Fury"] = "狂暴";
 --Druid
 L["Druid"] = "德鲁伊";
 L["Balance"] = "平衡";
 L["Feral_Combat"] = "野性-守护";
 --Shaman
 L["Shaman"] = "萨满";
 L["Elemental"] = "元素";
 L["Enhancement"] = "增强";
 --Warlock
 L["Warlock"] = "术士";
 L["Affliction"] = "痛苦";
 L["Demonology"] = "恶魔";
 L["Destruction"] = "毁灭";
 --Hunter
 L["Hunter"] = "猎人";
 L["Beast Mastery"] = "兽王";
 L["Marksmanship"] = "射击";
 L["Survival"] = "生存";
 --Paladin
 L["Paladin"] = "圣骑士";
 L["Retribution"] = "惩戒";
  --Mage
 L["Mage"] = "法师";
 L["Arcane"] = "奥术";
 L["Fire"] = "火焰";
 --Demon Hunter
 L["Havoc"] = "浩劫";
 L["Vengeance"] = "复仇";
 --Death Knight
 L["Blood"] = "鲜血";
 L["Unholy"] = "邪恶";
 --Monk
 L["Brewmaster"] = "酒仙";
 L["Mistweaver"] = "织雾";
 L["Windwalker"] = "踏风";
 --Evoker
 L["Preservation"] = "保存";
 L["Devastation"] = "破坏";
 L["Augmentation"] = "增大";
  --Shared-Spec-names
 L["Frost"] = "冰霜";
 L["Restoration"] = "恢复";
 L["Holy"] = "神圣";
 L["Protection"] = "保护";
 --Side-Buttons
 L["Reset Class"] = "重置类";
 L["Title_SARTE"] = "滚动技能文本";
 L["Tooltip Button"] = "左键单击以打开“选项”面板";
 L["Color Picker"] = "颜色选取器";
 L["Racials"] = "种族";
 L["Shared Spell cd's"] = "共享技能CD";
 --Custom Button Names
 L["Shocks"] = "冲击";
 L["Traps"] = "陷阱";
 L["Lust"] = "欲望";
 L["This Tab is for Shaman's and Hunter's only."] = "此选项仅适用于萨满和猎人。";
 --Ready Text
 L["msg"] = "现在准备好了!";
 L["msg_Shocks"] = " 冲击现在已经准备好了！";
 L["msg_Traps"] = " 陷阱现在已经准备好了！";
 L["msg_Lust"] = " 欲望现在已经准备好了！";
 --Message
 L["Nothing"] = "无";
 L["Open To Options Panel"] = "打开选项面板";
 --New things
 L["Icon"] = "图标";
 L["Name"] = "名字";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "您的技能";
 L["has increased to"] = "已增至";
 L["Congratulations"] = "祝贺";
 L["you are now level"] = "你现在是水平";
 L["Title"] = "高级滚动战斗文本";
 L["Experience Gains"] = "经验收益";
 L["Level up message"] = "升级消息";
 L["Skill Up"] = "技能提升";
 L["Resource lost"] = "资源丢失";
 L["Mana"] = "法力";
 L["Rage"] = "愤怒";
 L["Energy"] = "能源";
 L["Runic Power"] = "符文功率";
 L["Armor"] = "装甲";
 L["Armor lost"] = "装甲丢失";
 L["Armor Gained"] = "获得的护甲";
 L["Slash Command Message"] = "斜杠命令已更改为高级滚动战斗文本。键入 /asct 以打开选项面板";
 L["Features"] = "特征";
 L["Message"] = "滚动战斗文本已禁用。如果未启用，高级滚动战斗文本将不会显示任何内容。";
 --New things 8/11/2022
 L["Leveling"] = "水准";
 L["Lost"] = "失去";
 L["Gained"] = "获得";
 L["Attack Power"] = "攻击力";
 L["Agility"] = "敏捷";
 L["Strength"] = "强度";
 L["Intellect"] = "智力";
 L["Spirit"] = "精神";
 L["Stamina"] = "耐力";
 --New things 8/14/2022
 L["Auras"] = "光环";
 L["Fading Debuffs Alert"] = "褪色减益警报";
 L["Is About to Fade!"] = "即将褪色！";
 L["Debuff has 5 seconds left"] = "Debuff 还剩下 5 秒";
 L["Announces a Debuff you applied is about to fade on the Target."] = "宣布您应用的减益即将在目标上淡入淡出。";
 L["Fading Buffs Alert"] = "淡入淡出的增益警报";
 L["Buff has 5 seconds left"] = "Buff 还剩下 5 秒";
 L["Announces when a buff you gained is about to fade"] = "宣布您获得的增益即将消失";
 --New things 8/15/2022
 L["Color Picker Stats"] = "统计数据的颜色";
 L["Color Picker Spells"] = "法术的颜色";
 L["Color Picker Leveling"] = "调平颜色";
 L["Achievement Gains"] = "成就收益";
 L["Colors for Fading Auras"] = "褪色光环的颜色";
 --New things 8/17/2022
 L["Health"] = "健康";
 L["You died at"] = "你死在";
 L["Death Quadrants"] = "死亡象限";
 L["Has challenged you to a duel."] = "挑战你进行决斗。";
 L["Duel Requests"] = "决斗请求";
 L["Messages"] = "消息";
 L["Inventory full"] = "库存已满";
 L["Locked Items"] = "锁定的项目";
 L["Group Invites"] = "群组邀请";
 L["Quest Accepted"] = "任务已接受";
 L["Quest Completed"] = "任务已完成";
 L["Quest Log Full"] = "任务日志已满";
 L["Trade Requests"] = "交易请求";
 L["Facing the wrong way"] = "面对错误的方式";
 L["Friends come Online"] = "朋友上线";
 L["Friends go Offline"] = "好友离线";
 L["Zone discovery"] = "区域发现";
 L["Unlearned Skills"] = "未学过的技能";
 L["Rested"] = "休息";
 L["Sent Mail"] = "已发送邮件";
 L["Dungeon Difficulty Changed"] = "地下城难度改变";
 L["Not Enough Honor Points"] = "荣誉积分不足";
 L["Not Arena Honor Points"] = "不是竞技场荣誉积分";
 L["Players Invited"] = "受邀玩家";
 L["Player Left your group"] = "玩家离开您的小组";
 L["Player joins your group"] = "玩家加入您的群组";
 L["War mode Off"] = "战争模式关闭";
 L["War mode On"] = "战争模式 开启";
 L["Pvp On"] = "对战时打开";
 L["Pvp Off"] = "玩家对战关闭";
 L["You Loot"] = "你抢劫";
 L["You lost"] = "你输了";
 L["Money Gains"] = "金钱收益";
 L["Money Lost"] = "损失的钱";
 L["Items Looted"] = "被掠夺的物品";
 L["Shadow Resistance"] = "防阴影";
 L["Arcane Resistance"] = "神秘抵抗";
 L["Frost Resistance"] = "抗冻性";
 L["Fire Resistance"] = "耐火性";
 L["Nature Resistance"] = "耐自然性";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "高级滚动战斗文本已成功加载。加载选项面板。键入 /ASCT 或单击迷你地图图标。";
 --New things 9/2/2022
 L["Holy Power"] = "圣力";
 L["Astral Power"] = "星体力量";
 L["Maelstrom"] = "漩涡";
 L["Insanity"] = "精神错乱";
 L["Fury"] = "愤怒";
 L["Focus"] = "重点";
 --New things 9/18/2022
 L["Hit Rating"] = "命中率";
 L["Critical Strike Rating"] = "严重打击评级";
 L["Expertise Rating"] = "专业技能评级";
 L["Resilience Rating"] = "弹性等级";
 L["Dodge Rating"] = "道奇评级";
 L["Defense Rating"] = "防御评级";
 L["Parry Rating"] = "帕里评级";
 L["Block Rating"] = "区块评级";
 L["Haste Rating"] = "仓促评级";
 L["Spell Power"] = "法术力量";
 L["Unsupported_Line_1"] = "您正在运行不受支持的游戏版本中的高级滚动战斗文本。";
 L["Unsupported_Line_2"] = "插件在专用服务器上不起作用。";
 L["Unsupported_Line_3"] = "该插件仅在暴雪官方服务器上受支持。";
 L["Unsupported_Line_4"] = "是否要禁用插件？还是保持启用状态？";
 L["Unsupported_Line_5"] = "高级滚动战斗文本未加载！";
 L["Keep Enabled"] = "保持启用状态";
 L["Disable"] = "禁用";
 L["You have gained the"] = "您已经获得了";
 L["skill"] = "技能";
 L["Skill Gained"] = "获得的技能";
 --New Things 4/1/2023
 L["Armor Penetration"] = "装甲穿透力";
 L["Spell Penetration"] = "法术穿透";
 --New Things 5/27/2023 
 L["Stats"] = "统计";
 L["Trinkets"] = "饰品";
 L["Trinket Slot One"] = "插槽 13 中的第一个小饰品。";
 L["Trinket Slot One Info"] = "宣布您的第一个饰品何时冷却。";
 L["Trinket 1"] = "饰品 1";
 L["Trinket 2"] = "饰品 2";
 L["Trinket Slot Two"] = "插槽 14 中的第二个小饰品。";
 L["Trinket Slot Two Info"] = "宣布您的第二个饰品何时冷却。";
 --New Things 8/26/2023
 L["Debuff fade time"] = "减益淡出时间";
 L["The time warning for Debuffs about to fade"] = "减益的时间警告即将消退";
 L["The size of the Spell Icon"] = "咒语图标的大小";
 L["Spell Icon Size"] = "拼写图标大小";
 L["Settings"] = "设置";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "重置图标大小";
 L["Reset Debuff fade time"] = "重置减益淡入淡出时间";
 L["Reset Both Aura and Icon Values"] = "重置光环和图标值";
 L["Trinket_1"] = "饰品 1";
 L["Trinket_2"] = "饰品 2";
 --New Things 8/29/2023
 L["Loot"] = "战利品";
 --New Things 9/2/2023
 L["Alliance"] = "联盟";
 L["Horde"] = "部落";
 --New Things 9/5/2023
 L["Icon Size"] = "图标大小";
 L["The size of the message icon"] = "消息图标的大小";
 --New things 9/17/2023
 L["Mastery"] = "掌握";
 L["Avoidance"] = "避免";
 --New things 9/24/2023
 L["Minimap Icon"] = "小地图图标";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "滚动战斗文本被禁用。如果未启用，高级滚动战斗文本将不会显示任何内容。";
 --New things 1/01/2024
 L["is now ready!"] = "is now ready!";
 L["Is Now Ready!"] = "现在准备好了！";
 L["is about to fade!"] = "快要褪色了！";
 L["Is About To Fade!"] = "快要褪色了！";
 L["Uppercase"] = "大写";
 L["Lowercase"] = "小写";
 --New things 3/16/2024
 L["About"] = "大约";
 L["About_Line_1"] = "高级滚动战斗文本";
 L["About_Line_2"] = "（原名为滚动能力文本）";
 L["About_Line_3"] = "是一个插件，它增加了默认暴雪浮动战斗文本不提供的多功能性。";
 L["About_Line_4"] = "这个插件可以跟踪技能何时停止冷却、属性变化、经验值增加、资源损失等等！";
 L["About_Line_5"] = "遇到错误或想要添加功能？将其报告给 GitHub上 存储库！";
 --New things 3/31/2024
 L["Resistances"] = "电阻";
 --New things 5/24/2024
 L["Transmog"] = "幻化";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "已添加到您的外观收藏中。";
 --New things 6/01/2024
 L["Miscellaneous"] = "杂项";
 --New things 6/23/2024
 L["Icon Enable"] = "图标启用";
 L["Name Enable"] = "名称启用";
 --New things 7/14/2024
 L["Ready!"] = "准备！";
 L["Is Ready!"] = "准备好了！";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "是";
 L["Message Selector"] = "消息选择器";
end