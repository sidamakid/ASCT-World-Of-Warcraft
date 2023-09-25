local L_Function_Keys = Functions_For_ASDC_Table
---------------------------
--Player_Changes / Auras
---------------------------
L_Function_Keys["Combat_Text_Function_Yellow"] = function (msg)
  CombatText_AddMessage(msg, CombatText_StandardScroll, 1, 1, 0)
end
---------------------------
--Duel_Requests
---------------------------
L_Function_Keys["Combat_Text_Function_Light_Blue"] = function (msg)
  CombatText_AddMessage(msg, CombatText_StandardScroll, 0.3, 0.5, 0.9)
end
---------------------------
--Gains_Losses
---------------------------
L_Function_Keys["Combat_Text_Function_Dark_Blue"] = function (msg)
  CombatText_AddMessage(msg, CombatText_StandardScroll, 0.1, 0.1, 1)
end
---------------------------
--Loot
---------------------------
L_Function_Keys["Combat_Text_Custom_RGB_Function"] = function (msg, r, g, b)
  CombatText_AddMessage(msg, CombatText_StandardScroll, r, g, b)
end