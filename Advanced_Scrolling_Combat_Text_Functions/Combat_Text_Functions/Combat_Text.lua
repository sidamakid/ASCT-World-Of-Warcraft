local L_Function_Keys = Functions_For_ASDC_Table

L_Function_Keys["Combat_Text_Function"] = function (msg, r, g, b, a)
  CombatText_AddMessage(msg, CombatText_StandardScroll, r, g, b, a)
end