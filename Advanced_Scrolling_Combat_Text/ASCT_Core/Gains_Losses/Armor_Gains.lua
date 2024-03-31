local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local lastStat = -1
local f = ASCT.Frames.SARTE["Armor_Frame"]
ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Armor"]
    if not (stats.StatEnable and ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])) then return end
    local base, effectiveArmor, armor, posBuff, negBuff = ASCT.API.Documentation["UnitArmor"](ASCT.Strings.UnitId["player"])
    local diff = effectiveArmor - lastStat;
    if not lastStat then
      lastStat = effectiveArmor
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
      local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Armor"],  effectiveArmor)
      ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = effectiveArmor
  end)
end)