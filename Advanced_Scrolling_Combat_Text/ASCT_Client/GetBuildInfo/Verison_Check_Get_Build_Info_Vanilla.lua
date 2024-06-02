local ASCT = ASCT_Table
---------------------------
--Vanilla_Patches
---------------------------
ASCT.Client.tocversion["is11403"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11403"]
ASCT.Client.tocversion["is11404"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11404"]
ASCT.Client.tocversion["is11500"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11500"]
ASCT.Client.tocversion["is11501"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11501"]
ASCT.Client.tocversion["is11502"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11502"]