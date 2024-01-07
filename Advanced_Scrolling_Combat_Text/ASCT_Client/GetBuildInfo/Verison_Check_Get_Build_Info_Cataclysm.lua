local ASCT = ASCT_Table
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client["is40300"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers["40300"]