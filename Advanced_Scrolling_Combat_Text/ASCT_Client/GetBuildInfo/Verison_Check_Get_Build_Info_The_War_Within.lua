local ASCT = ASCT_Table
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client.tocversion["is110000"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110000"]
ASCT.Client.tocversion["is110002"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110002"]
ASCT.Client.tocversion["is110005"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110005"]
ASCT.Client.tocversion["is110007"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110007"]
ASCT.Client.tocversion["is110100"] = select(4, ASCT.API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110100"]