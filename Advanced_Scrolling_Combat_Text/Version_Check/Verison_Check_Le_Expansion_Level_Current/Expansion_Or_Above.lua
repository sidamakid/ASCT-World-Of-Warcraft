local L_Version_Check_Keys = ASCT_Version_Check_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Is Expanison Or Above
---------------------------
--Shadowlands
L_Version_Check_Keys["isShadowlandsWowOrAbove"] = L_Version_Check_Keys["Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_SHADOWLANDS)
--TBC
L_Version_Check_Keys["isTbcWowOrAbove"] = L_Version_Check_Keys["Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_BURNING_CRUSADE)
--Wrath
L_Version_Check_Keys["isWrathWowOrAbove"] = L_Version_Check_Keys["Expansion_Or_Above_Le_Expansion_Level_Current"](LE_EXPANSION_WRATH_OF_THE_LICH_KING)