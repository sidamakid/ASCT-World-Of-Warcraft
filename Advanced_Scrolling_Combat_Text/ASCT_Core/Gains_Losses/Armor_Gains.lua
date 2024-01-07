local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local lastStat = -1
local f = L_ASCT_Frames["Armor_Frame"]
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
L_ASCT_Handlers["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Armor"]
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])) then return end
    local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player")
    local diff = effectiveArmor - lastStat;
    if not lastStat then
      lastStat = effectiveArmor
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
      local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Armor"],  effectiveArmor)
      L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
    lastStat = effectiveArmor
  end)
end)