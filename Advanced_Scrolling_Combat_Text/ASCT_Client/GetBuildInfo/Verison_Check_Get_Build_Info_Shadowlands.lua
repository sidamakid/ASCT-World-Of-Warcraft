local ASCT = ASCT_Table
---------------------------
--The_Burning_Crusade_Patches
---------------------------
ASCT.Client["is90207"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["90207"]