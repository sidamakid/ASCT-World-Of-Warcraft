local L_Version_Check_Keys = ASCT_Version_Check_Table
---------------------------
--Classic_TBC_Wrath
---------------------------
L_Version_Check_Keys["is_Classic_TBC_Wrath"] = L_Version_Check_Keys["isVanillaWow"] or L_Version_Check_Keys["isTbcWow"] or L_Version_Check_Keys["isWrathWow"]
---------------------------
--Classic_TBC
---------------------------
L_Version_Check_Keys["is_Classic_TBC_Wow"] = L_Version_Check_Keys["isVanillaWow"] or L_Version_Check_Keys["isTbcWow"]
---------------------------
--TBC_Wrath
---------------------------
L_Version_Check_Keys["is_Tbc_Classic_Wow"] = L_Version_Check_Keys["isTbcWow"] or L_Version_Check_Keys["isWrathWow"]