local ASCT = ASCT_Table
---------------------------
--Mists_Of_Pandaria_Patches
---------------------------
ASCT.Client.tocversion["is50400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50400"]
ASCT.Client.tocversion["is50500"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50500"]