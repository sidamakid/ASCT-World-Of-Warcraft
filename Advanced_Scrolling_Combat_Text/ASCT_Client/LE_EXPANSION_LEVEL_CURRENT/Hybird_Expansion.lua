local ASCT = ASCT_Table
---------------------------
--is_Xpac-Xpac_Wow
---------------------------
ASCT.Client["is_Vanilla-Tbc_Wow"] = ASCT.Client["isVanillaWow"] or ASCT.Client["isTbcWow"]
ASCT.Client["is_Tbc-Wrath_Wow"] = ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"]
ASCT.Client["is_Tbc-Wrath-Cata_Wow"] = ASCT.Client["isTbcWow"] or ASCT.Client["isWrathWow"] or ASCT.Client["isCataclysmWow"]