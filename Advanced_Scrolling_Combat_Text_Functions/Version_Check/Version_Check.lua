local L_Function_Keys = Functions_For_ASDC_Table
---------------------------
--Get Build Info
---------------------------
L_Function_Keys["is11403"] = select(4, GetBuildInfo()) == 11403
L_Function_Keys["is11404"] = select(4, GetBuildInfo()) == 11404
L_Function_Keys["is30400"] = select(4, GetBuildInfo()) == 30400
L_Function_Keys["is30401"] = select(4, GetBuildInfo()) == 30401
---------------------------
--LE_EXPANSION_LEVEL_CURRENT
---------------------------
L_Function_Keys["isVanillaWow"] = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_CLASSIC)
L_Function_Keys["isTbcWow"] = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE)
L_Function_Keys["isWrathWow"] = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING)
L_Function_Keys["isShadowlandsWow"] = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_SHADOWLANDS)
L_Function_Keys["isDragonFlightWow"] = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_DRAGONFLIGHT)
---------------------------
--DragonFlight_Patches
---------------------------
L_Function_Keys["isDragonFlightWow_100002"] = select(4, GetBuildInfo()) == 100002
L_Function_Keys["isDragonFlightWow_100005"] = select(4, GetBuildInfo()) == 100005
L_Function_Keys["isDragonFlightWow_100007"] = select(4, GetBuildInfo()) == 100007
L_Function_Keys["isDragonFlightWow_100100"] = select(4, GetBuildInfo()) == 100100
L_Function_Keys["isDragonFlightWow_100105"] = select(4, GetBuildInfo()) == 100105