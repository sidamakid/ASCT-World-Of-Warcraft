local isClassicWow = (LE_EXPANSION_LEVEL_CURRENT < LE_EXPANSION_SHADOWLANDS)
if isClassicWow then
local L = ASDC_LOCALE_TABLE
local L_Function_Keys = Functions_For_ASDC_Table
local statKeys = {
    "Strength",
    "Agility",
    "Stamina",
    "Intellect",
    "Spirit"
  }
  local previousStats = false;
  
  local function getStats()
    local stats = {}
    for i = 1, 5 do --wiki says spirit is going away so only went to 4
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
          if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].StatEnable then
            if previousStats[stat].effectiveStat < stats[stat].effectiveStat and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Gains then
              --in this bit you can do any math you want
              local delta = math.abs(previousStats[stat].effectiveStat - stats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              CombatText_AddMessage(format("+%d".." "..L[stat].." ".."(%d)", delta, currentstat), CombatText_StandardScroll, 0.1, 0.1, 1)
            elseif previousStats[stat].effectiveStat > stats[stat].effectiveStat and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Lost then
              local delta = math.abs(stats[stat].effectiveStat - previousStats[stat].effectiveStat)
              local currentstat = stats[stat].effectiveStat
              CombatText_AddMessage(format("-%d".." "..L[stat].." ".."(%d)", delta, currentstat), CombatText_StandardScroll, 0.1, 0.1, 1)
            end
          end
        end
      end
      previousStats = stats; --sorry had this is wrong place
    end
  end
  local f = CreateFrame("FRAME")
  f:RegisterUnitEvent("UNIT_STATS", "player")
  f:RegisterEvent("PLAYER_ENTERING_WORLD")
  L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function() f:SetScript("OnEvent", OnEvent) end)
end