local L_Version_Check_Keys = ASCT_Version_Check_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Not expansion
---------------------------
--DragonFlight
L_Version_Check_Keys["isNotDragonFlightWow"] = L_Version_Check_Keys["Not_Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_DRAGONFLIGHT)
--Mists Of Pandaria
L_Version_Check_Keys["is_Not_Mists_of_Pandaria_Wow"] = L_Version_Check_Keys["Not_Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_MISTS_OF_PANDARIA)
--Shadowlands
L_Version_Check_Keys["isNotShadowlandsWow"] = L_Version_Check_Keys["Not_Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_SHADOWLANDS)