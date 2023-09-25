local L_ASCT_Frames, L_ASCT_Events = ASCT_Frames_Table, ASCT_Events_Table
---------------------------
--SARTE-Text_Frame
---------------------------
L_ASCT_Events["UNIT_SPELLCAST_SUCCEEDED"](L_ASCT_Frames["SARTE-Text_Frame"])
L_ASCT_Events["UNIT_SPELLCAST_SUCCEEDED"](L_ASCT_Frames["SARTE-Text-Racials_Frame"])
L_ASCT_Events["UNIT_SPELLCAST_SUCCEEDED"](L_ASCT_Frames["SARTE-Text-Traps_Frame"])
L_ASCT_Events["UNIT_SPELLCAST_SUCCEEDED"](L_ASCT_Frames["SARTE-Text-Shocks_Frame"])
---------------------------
--Resistances
---------------------------
--Arcane
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Arcane_Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Arcane_Resistance_Frame"])
--Shadow
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Shadow_Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Shadow_Resistance_Frame"])
--Nature
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Nature_Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Nature_Resistance_Frame"])
--Frost
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Frost_Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Frost_Resistance_Frame"])
--Fire
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Fire_Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Fire_Resistance_Frame"])
--[[
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Resistance_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Resistance_Frame"])
]]
---------------------------
--Resource_Loss_Frame
---------------------------
L_ASCT_Events["UNIT_POWER_FREQUENT"](L_ASCT_Frames["Resource_Loss_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Resource_Loss_Frame"])
---------------------------
--Item_Loot_Frame
---------------------------
L_ASCT_Events["CHAT_MSG_LOOT"](L_ASCT_Frames["Item_Loot_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Item_Loot_Frame"])
---------------------------
--Money_Loot_Frame
---------------------------
L_ASCT_Events["CHAT_MSG_MONEY"](L_ASCT_Frames["Money_Loot_Frame"])
---------------------------
--Currency_Loot_Frame
---------------------------
L_ASCT_Events["CHAT_MSG_CURRENCY"](L_ASCT_Frames["Currency_Loot_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Currency_Loot_Frame"])
---------------------------
--Honor_Loot_Frame
---------------------------
L_ASCT_Events["CHAT_MSG_COMBAT_HONOR_GAIN"](L_ASCT_Frames["Honor_Loot_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Honor_Loot_Frame"])
---------------------------
--ADDON_LOADED / Trinket_Frame / SCT_Check
---------------------------
L_ASCT_Events["ADDON_LOADED"](L_ASCT_Frames["Trinket_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["SCT_Check_Frame"])
---------------------------
--Player_Changes
---------------------------
L_ASCT_Events["ACHIEVEMENT_EARNED"](L_ASCT_Frames["Achievement_Frame"])
L_ASCT_Events["PLAYER_DEAD"](L_ASCT_Frames["Player_Dead_Frame"])
L_ASCT_Events["DUEL_REQUESTED"](L_ASCT_Frames["Duel_Request_Frame"])
---------------------------
--UI_INFO_ERROR_MESSAGE
---------------------------
L_ASCT_Events["UI_INFO_MESSAGE"](L_ASCT_Frames["Error_Messages_Frame"])
L_ASCT_Events["UI_ERROR_MESSAGE"](L_ASCT_Frames["Error_Messages_Frame"])
---------------------------
--Combat_Rating
---------------------------
--Armor Penetration
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Armor_Pen_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Armor_Pen_Frame"])
--Block_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Block_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Block_Frame"])
--Defense_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Defense_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Defense_Frame"])
--Critical_Strike 
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Critical_Strike_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Critical_Strike_Frame"])
--Expertise_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Expertise_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Expertise_Frame"])
--Dodge_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Dodge_Rating_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Dodge_Rating_Frame"])
--Parry_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Parry_Rating_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Parry_Rating_Frame"])
--Hit_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Hit_Rating_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Hit_Rating_Frame"])
--Haste_Rating
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Haste_Rating_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Haste_Rating_Frame"])
--Spell_Power
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Spell_Power_Frame"])
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Spell_Power_Frame"])
--Spell Penetration
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Spell_Pen_Frame"])
L_ASCT_Events["COMBAT_RATING_UPDATE"](L_ASCT_Frames["Spell_Pen_Frame"])
---------------------------
--ALl_Stats
---------------------------
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["All_Stats_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["All_Stats_Frame"])
--Attack Power
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Attack_Power_Frame"], "player")
L_ASCT_Events["UNIT_ATTACK_POWER"](L_ASCT_Frames["Attack_Power_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Attack_Power_Frame"])
--Armor
L_ASCT_Events["UNIT_STATS"](L_ASCT_Frames["Armor_Frame"], "player")
L_ASCT_Events["UNIT_RESISTANCES"](L_ASCT_Frames["Armor_Frame"], "player")
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Armor_Frame"])
--Experience
L_ASCT_Events["CHAT_MSG_COMBAT_XP_GAIN"](L_ASCT_Frames["Experience_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Experience_Frame"])
--Health
L_ASCT_Events["PLAYER_ENTERING_WORLD"](L_ASCT_Frames["Health_Frame"])
L_ASCT_Events["UNIT_MAXHEALTH"](L_ASCT_Frames["Health_Frame"], "player")
--Level_Up
L_ASCT_Events["PLAYER_LEVEL_UP"](L_ASCT_Frames["Level_Up_Frame"])
--Skill_Gained
L_ASCT_Events["CHAT_MSG_SKILL"](L_ASCT_Frames["Skill_Gained_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Skill_Gained_Frame"])
--Skill_Up
L_ASCT_Events["CHAT_MSG_SKILL"](L_ASCT_Frames["Skill_Up_Frame"])
L_ASCT_Events["CHAT_MSG_SYSTEM"](L_ASCT_Frames["Skill_Up_Frame"])