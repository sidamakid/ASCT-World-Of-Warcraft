local ASCT = ASCT_Table
---------------------------
--Mists_Of_Pandaria_Patches
---------------------------
ASCT.Client.tocversion["is50400"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50400"]
ASCT.Client.tocversion["is50500"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50500"]
ASCT.Client.tocversion["is50501"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50501"]
ASCT.Client.tocversion["is50502"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50502"]
ASCT.Client.tocversion["is50503"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["50503"]