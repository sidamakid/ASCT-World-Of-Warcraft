local ASCT = ASCT_Table
---------------------------
--LE_EXPANSION_LEVEL_CURRENT Not expansion
---------------------------
ASCT.Client.LE_EXPANSION_LEVEL["isNotShadowlandsWowOrAbove"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_SHADOWLANDS"])
--[[
--Mists Of Pandaria
ASCT.Client.LE_EXPANSION_LEVEL["isNotMistsWow"]= ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_MISTS_OF_PANDARIA"])
--Shadowlands
ASCT.Client.LE_EXPANSION_LEVEL["isNotShadowlandsWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_SHADOWLANDS"])
--DragonFlight
ASCT.Client.LE_EXPANSION_LEVEL["isNotDragonFlightWow"] = ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"](ASCT.Strings.LE_EXPANSION_LEVEL["LE_EXPANSION_DRAGONFLIGHT"])
]]