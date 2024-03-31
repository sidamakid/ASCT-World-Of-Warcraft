local ASCT = ASCT_Table
---------------------------
--Vanilla_Patches
---------------------------
ASCT.Client["is11403"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11403"]
ASCT.Client["is11404"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11404"]
ASCT.Client["is11500"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11500"]
ASCT.Client["is11501"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11501"]
ASCT.Client["is11502"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["11502"]