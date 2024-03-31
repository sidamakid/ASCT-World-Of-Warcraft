local ASCT = ASCT_Table
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client["is40300"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40300"]
ASCT.Client["is40400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["40400"]