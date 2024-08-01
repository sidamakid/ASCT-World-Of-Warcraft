local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Is Expanison Or Above
---------------------------
--Vanilla
ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_CLASSIC"])
--TBC
ASCT.Client.LE_EXPANSION_LEVEL["isTbcWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_BURNING_CRUSADE"])
--Wrath
ASCT.Client.LE_EXPANSION_LEVEL["isWrathWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_WRATH_OF_THE_LICH_KING"])
--Cataclysm
ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_CATACLYSM"])
--Mists of Pandaria
ASCT.Client.LE_EXPANSION_LEVEL["isMistsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_MISTS_OF_PANDARIA"])
--Warlords Of Draenor
ASCT.Client.LE_EXPANSION_LEVEL["isWarlordsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_WARLORDS_OF_DRAENOR"])
--Legion 
ASCT.Client.LE_EXPANSION_LEVEL["isLegionWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_LEGION"])
--Battle for Azeroth
ASCT.Client.LE_EXPANSION_LEVEL["isBfaWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_BATTLE_FOR_AZEROTH"])
--Shadowlands
ASCT.Client.LE_EXPANSION_LEVEL["isShadowlandsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_SHADOWLANDS"])
--Dragonflight
ASCT.Client.LE_EXPANSION_LEVEL["isDragonflightWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_DRAGONFLIGHT"])
--WarWithin
ASCT.Client.LE_EXPANSION_LEVEL["isTheWarWithinWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_WAR_WITHIN"])