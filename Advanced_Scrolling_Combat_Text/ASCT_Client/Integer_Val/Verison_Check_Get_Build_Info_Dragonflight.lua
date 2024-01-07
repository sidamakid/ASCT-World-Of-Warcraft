local ASCT = ASCT_Table
---------------------------
--DragonFlight_Patches
---------------------------
ASCT.Client["is100002"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100002
ASCT.Client["is100005"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100005
ASCT.Client["is100007"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100007
ASCT.Client["is100100"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100100
ASCT.Client["is100105"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100105
ASCT.Client["is100107"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100107
ASCT.Client["is100200"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100200
ASCT.Client["is100205"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == 100205