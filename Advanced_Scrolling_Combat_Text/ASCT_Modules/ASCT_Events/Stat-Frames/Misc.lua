local ASCT = ASCT_Table
local Event = ASCT.Events
--Attack Power
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Attack_Power_Frame"], "player")
Event.RegisterEvent["UNIT_ATTACK_POWER"](ASCT.Frames.SARTE["Attack_Power_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Attack_Power_Frame"])
--Armor
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Armor_Frame"], "player")
Event.RegisterEvent["UNIT_RESISTANCES"](ASCT.Frames.SARTE["Armor_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Armor_Frame"])
--Experience
Event.RegisterEvent["CHAT_MSG_COMBAT_XP_GAIN"](ASCT.Frames.SARTE["Experience_Frame"])
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Experience_Frame"])
--Health
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Health_Frame"])
Event.RegisterEvent["UNIT_MAXHEALTH"](ASCT.Frames.SARTE["Health_Frame"], "player")
--Level_Up
Event.RegisterEvent["PLAYER_LEVEL_UP"](ASCT.Frames.SARTE["Level_Up_Frame"])
--Resource Loss
Event.RegisterEvent["UNIT_POWER_FREQUENT"](ASCT.Frames.SARTE["Resource_Loss_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Resource_Loss_Frame"])
--Skill_Gained
Event.RegisterEvent["CHAT_MSG_SKILL"](ASCT.Frames.SARTE["Skill_Gained_Frame"])
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Skill_Gained_Frame"])
--Skill_Up
Event.RegisterEvent["CHAT_MSG_SKILL"](ASCT.Frames.SARTE["Skill_Up_Frame"])
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Skill_Up_Frame"])