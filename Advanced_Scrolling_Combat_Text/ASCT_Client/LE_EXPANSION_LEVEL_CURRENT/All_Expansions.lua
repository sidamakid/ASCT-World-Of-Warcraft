local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT
---------------------------
-- Value = 0
ASCT.Client["isVanillaWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_CLASSIC)
-- Value = 1
ASCT.Client["isTbcWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_BURNING_CRUSADE)
-- Value = 2
ASCT.Client["isWrathWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_WRATH_OF_THE_LICH_KING)
-- Value = 3
ASCT.Client["isCataclysmWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_CATACLYSM)
-- Value = 4
ASCT.Client["isMOPWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_MISTS_OF_PANDARIA)
-- Value = 5
ASCT.Client["isWarlordsWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_WARLORDS_OF_DRAENOR)
-- Value = 6
ASCT.Client["isLegionWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_LEGION)
-- Value = 7
ASCT.Client["isBFAWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_BATTLE_FOR_AZEROTH)
-- Value = 8
ASCT.Client["isShadowlandsWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_SHADOWLANDS)
-- Value = 9
ASCT.Client["isDragonFlightWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"](LE_EXPANSION_DRAGONFLIGHT)