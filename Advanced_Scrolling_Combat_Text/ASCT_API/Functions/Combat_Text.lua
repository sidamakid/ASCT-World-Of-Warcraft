local ASCT = ASCT_Table
---------------------------
--SARTE-Text
---------------------------
ASCT.Functions["CombatText_AddMessage"] = function (message, scrollFunction, r, g, b, displayType, isStaggered)
  CombatText_AddMessage(message, scrollFunction, r, g, b, displayType, isStaggered)
end
---------------------------
--msg
---------------------------
--ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
------------------------------------------------------------------------------------------------------------
--Colors
------------------------------------------------------------------------------------------------------------
--[[
ASCT.Functions["CombatText_AddMessage_With_A"] = function (message, scrollFunction, r, g, b, a, displayType, isStaggered)
  CombatText_AddMessage(message, scrollFunction, r, g, b, a, displayType, isStaggered)
end
]]
---------------------------
--Player_Changes / Auras
---------------------------
ASCT.Functions["CombatText_AddMessage_Yellow"] = function (message)
  CombatText_AddMessage(message, CombatText_StandardScroll, 1, 1, 0)
end
--ASCT.Functions["CombatText_AddMessage_Yellow"](msg)
---------------------------
--Duel_Requests
---------------------------
ASCT.Functions["CombatText_AddMessage_Light_Blue"] = function (message)
  CombatText_AddMessage(message, CombatText_StandardScroll, 0.3, 0.5, 0.9)
end
--ASCT.Functions["CombatText_AddMessage_Light_Blue"](msg)
---------------------------
--Gains_Losses
---------------------------
ASCT.Functions["CombatText_AddMessage_Dark_Blue"] = function (message)
  CombatText_AddMessage(message, CombatText_StandardScroll, 0.1, 0.1, 1)
end
--ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)