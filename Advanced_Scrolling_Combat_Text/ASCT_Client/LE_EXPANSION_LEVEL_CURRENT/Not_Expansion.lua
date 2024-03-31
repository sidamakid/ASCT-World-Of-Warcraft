local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Not expansion
---------------------------
--Mists Of Pandaria
ASCT.Client["isNotMistsWow"]= ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_MISTS_OF_PANDARIA"])
--Shadowlands
ASCT.Client["isNotShadowlandsWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_SHADOWLANDS"])
--DragonFlight
ASCT.Client["isNotDragonFlightWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_DRAGONFLIGHT"])