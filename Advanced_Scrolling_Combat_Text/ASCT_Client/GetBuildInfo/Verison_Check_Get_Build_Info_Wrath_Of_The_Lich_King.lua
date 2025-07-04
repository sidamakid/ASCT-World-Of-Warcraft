local ASCT = ASCT_Table
---------------------------
--Wrath_Of_The_Lich_King_Patches
---------------------------
ASCT.Client.tocversion["is30400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["30400"]
ASCT.Client.tocversion["is30401"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["30401"]
ASCT.Client.tocversion["is30402"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["30402"]
ASCT.Client.tocversion["is30403"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["30403"]
ASCT.Client.tocversion["is30404"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["30404"]