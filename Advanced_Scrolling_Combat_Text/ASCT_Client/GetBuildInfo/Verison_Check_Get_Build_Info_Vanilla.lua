local ASCT = ASCT_Table
---------------------------
--Vanilla_Patches
---------------------------
ASCT.Client["is11403"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["11403"]
ASCT.Client["is11404"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["11404"]
ASCT.Client["is11500"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["11500"]