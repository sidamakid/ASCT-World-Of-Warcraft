local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
if L_Version_Check_Keys["isShadowlandsWowOrAbove"] then
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
      local stat, effectiveStat, posBuff, negBuff = UnitStat("player", i)
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
          if not C_CVar.GetCVarBool("enableFloatingCombatText") then return end
          if ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].StatEnable then
            if previousStats[stat].effectiveStat < stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Gains then
              --in this bit you can do any math you want
              local delta = math.abs(previousStats[stat].effectiveStat - stats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              local msg = string.format("+%d".." "..L[stat].." ".."(%d)", delta, currentstat)
              L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
            elseif previousStats[stat].effectiveStat > stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Lost then
              local delta = math.abs(stats[stat].effectiveStat - previousStats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              local msg = string.format("-%d".." "..L[stat].." ".."(%d)", delta, currentstat)
              L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
            end
          end
        end
      end
      previousStats = stats; --sorry had this is wrong place
    end
  end
  local f = L_ASCT_Frames["All_Stats_Frame"]
  L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function() L_ASCT_Handlers["OnEvent"](f, OnEvent) end)
end