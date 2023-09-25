local L_Function_Keys = Functions_For_ASDC_Table
---------------------------
--SARTE-Text
---------------------------
L_Function_Keys["Combat_Text_Function"] = function (msg)
  CombatText_AddMessage(msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b, ASCT_Color_Picker_Variables.a)
end
--[[
---------------------------
--Is Combat_Text_Enabled
---------------------------
L_Function_Keys["Combat_Text"] = C_CVar.GetCVarBool("enableFloatingCombatText")
]]