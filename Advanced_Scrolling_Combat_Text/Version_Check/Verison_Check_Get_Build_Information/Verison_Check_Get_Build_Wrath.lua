local L_Version_Check_Keys = ASCT_Version_Check_Table
---------------------------
--Wrath_Of_The_Lich_King_Patches
---------------------------
L_Version_Check_Keys["is30400"] = L_Version_Check_Keys["GetBuildInfo"](30400)
L_Version_Check_Keys["is30401"] = L_Version_Check_Keys["GetBuildInfo"](30401)
L_Version_Check_Keys["is30402"] = L_Version_Check_Keys["GetBuildInfo"](30402)
L_Version_Check_Keys["is30403"] = L_Version_Check_Keys["GetBuildInfo"](30403)
---------------------------
--Wrath_Of_The_Lich_King_Multiple_Patches
---------------------------
--L_Version_Check_Keys["is30400_1_2"] = L_Version_Check_Keys["Multiple_Specfic_GetBuildInfo"](3, 30400, 30401, 30402)
--L_Version_Check_Keys["is30400_1_2"] = L_Version_Check_Keys["is30400"] or L_Version_Check_Keys["is30401"] or L_Version_Check_Keys["is30402"]