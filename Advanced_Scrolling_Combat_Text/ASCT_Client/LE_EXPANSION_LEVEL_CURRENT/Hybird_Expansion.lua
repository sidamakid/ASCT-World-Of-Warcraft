local ASCT = ASCT_Table
---------------------------
--is_Xpac-Xpac_Wow
---------------------------
ASCT.Client.LE_EXPANSION_LEVEL["is_Vanilla-Tbc_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Vanilla-Tbc-Wrath_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Vanilla-Tbc-Wrath-Cata_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Tbc-Wrath_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Tbc-Wrath-Cata_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isTbcWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Wrath-Cata_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Wrath-Cata-MOP_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isWrathWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isMOPWow"]
ASCT.Client.LE_EXPANSION_LEVEL["is_Cata-MOP_Wow"] = ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] or ASCT.Client.LE_EXPANSION_LEVEL["isMOPWow"]