local ASCT = ASCT_Table
---------------------------
--DragonFlight_Patches
---------------------------
ASCT.Client.tocversion["is100002"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100002"]
ASCT.Client.tocversion["is100005"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100005"]
ASCT.Client.tocversion["is100007"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100007"]
ASCT.Client.tocversion["is100100"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100100"]
ASCT.Client.tocversion["is100105"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100105"]
ASCT.Client.tocversion["is100107"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100107"]
ASCT.Client.tocversion["is100200"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100200"]
ASCT.Client.tocversion["is100205"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100205"]
ASCT.Client.tocversion["is100206"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100206"]
ASCT.Client.tocversion["is100207"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["100207"]