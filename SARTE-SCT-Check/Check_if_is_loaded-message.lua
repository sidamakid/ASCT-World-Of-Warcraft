local L_SCT = SCT_Check_if_is_loaded_Localization_My_Localization_Table
local check_is_Combat_Text_Enabled = C_CVar.GetCVarBool("enableFloatingCombatText")
if check_is_Combat_Text_Enabled == false then
message(L_SCT["Message"])
end