local ASCT = ASCT_Table
---------------------------
--Wrath_Of_The_Lich_King_Patches
---------------------------
ASCT.Client["is30400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["30400"]
ASCT.Client["is30401"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["30401"]
ASCT.Client["is30402"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["30402"]
ASCT.Client["is30403"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["30403"]