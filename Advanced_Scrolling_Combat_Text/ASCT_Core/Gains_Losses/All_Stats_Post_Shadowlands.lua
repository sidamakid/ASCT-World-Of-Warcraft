local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isShadowlandsWowOrAbove"] then
local statKeys = {
    "Strength",
    "Agility",
    "Stamina",
    "Intellect",
  }
  local previousStats = false;

  local function getStats()
    local stats = {}
    for i = 1, 4 do --wiki says spirit is going away so only went to 4
      local stat, effectiveStat, posBuff, negBuff = ASCT.API.Documentation["UnitStat"](ASCT.Strings.UnitId["player"], i)
      stats[statKeys[i]] = {
        stat = stat,
        effectiveStat = effectiveStat,
        posBuff = posBuff,
        negBuff = negBuff,
      }
    end
    return stats;
  end

  local function OnEvent(_, eventName)
    if eventName == "PLAYER_ENTERING_WORLD" then
      previousStats = getStats()
    else
      local stats = getStats()
      if type(previousStats) ~= "table" then
        --brand new stats
      else
        for _, stat in ipairs(statKeys) do
          if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
          if ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].StatEnable then
            if previousStats[stat].effectiveStat < stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Gains then
              --in this bit you can do any math you want
              local delta = math.abs(previousStats[stat].effectiveStat - stats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              local msg = string.format("+%d".." "..L[stat].." ".."(%d)", delta, currentstat)
              ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
            elseif previousStats[stat].effectiveStat > stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Lost then
              local delta = math.abs(stats[stat].effectiveStat - previousStats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              local msg = string.format("-%d".." "..L[stat].." ".."(%d)", delta, currentstat)
              ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
            end
          end
        end
      end
      previousStats = stats;
    end
  end
  local f = ASCT.Frames.SARTE["All_Stats_Frame"]
  ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() ASCT.Scripts.Frame["OnEvent"](f, OnEvent) end)
end