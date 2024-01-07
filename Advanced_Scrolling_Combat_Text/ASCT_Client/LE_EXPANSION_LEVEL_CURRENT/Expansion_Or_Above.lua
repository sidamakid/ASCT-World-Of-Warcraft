local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Is Expanison Or Above
---------------------------
--Shadowlands
ASCT.Client["isShadowlandsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](LE_EXPANSION_SHADOWLANDS)
--TBC
ASCT.Client["isTbcWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](LE_EXPANSION_BURNING_CRUSADE)
--Wrath
ASCT.Client["isWrathWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](LE_EXPANSION_WRATH_OF_THE_LICH_KING)