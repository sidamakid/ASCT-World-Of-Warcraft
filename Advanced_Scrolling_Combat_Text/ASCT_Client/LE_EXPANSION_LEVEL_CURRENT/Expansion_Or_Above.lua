local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Is Expanison Or Above
---------------------------
--Vanilla
ASCT.Client["isVanillaWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_CLASSIC"])
--TBC
ASCT.Client["isTbcWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_BURNING_CRUSADE"])
--Wrath
ASCT.Client["isWrathWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_WRATH_OF_THE_LICH_KING"])
--Cataclysm
ASCT.Client["isCataclysmWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_CATACLYSM"])
--Mists of Pandaria
ASCT.Client["isMistsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_MISTS_OF_PANDARIA"])
--Warlords Of Draenor
ASCT.Client["isWarlordsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_WARLORDS_OF_DRAENOR"])
--Legion 
ASCT.Client["isLegionWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_LEGION"])
--Battle for Azeroth
ASCT.Client["isBfaWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_BATTLE_FOR_AZEROTH"])
--Shadowlands
ASCT.Client["isShadowlandsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_SHADOWLANDS"])
--Dragonflight
ASCT.Client["isDragonflightWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_DRAGONFLIGHT"])