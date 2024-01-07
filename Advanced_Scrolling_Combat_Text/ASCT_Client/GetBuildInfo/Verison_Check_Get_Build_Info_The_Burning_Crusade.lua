local ASCT = ASCT_Table
---------------------------
--The_Burning_Crusade_Patches
---------------------------
ASCT.Client["is20504"] = select(4, ASCT.API.Documentation["GetBuildInfo"]) == ASCT.Integers["20504"]