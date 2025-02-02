local ASCT = ASCT_Table
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client.tocversion["is40300"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40300"]
ASCT.Client.tocversion["is40400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40400"]
ASCT.Client.tocversion["is40401"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40401"]
ASCT.Client.tocversion["is40402"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40402"]