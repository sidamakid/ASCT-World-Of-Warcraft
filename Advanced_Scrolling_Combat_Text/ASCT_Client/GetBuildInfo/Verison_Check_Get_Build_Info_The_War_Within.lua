local ASCT = ASCT_Table
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client.tocversion["is110000"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110000"]