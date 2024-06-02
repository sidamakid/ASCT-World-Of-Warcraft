local ASCT = ASCT_Table
---------------------------
--The_Burning_Crusade_Patches
---------------------------
ASCT.Client.tocversion["is20504"] = select(4, ASCT.API.Documentation["GetBuildInfo"]) == ASCT.Integers.Client["20504"]