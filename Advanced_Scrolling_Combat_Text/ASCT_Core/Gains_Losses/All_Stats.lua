local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Scripts, Functions, API, Strings = ASCT.Client, ASCT.Frames, ASCT.Scripts, ASCT.Functions, ASCT.API, ASCT.Strings
local previousStats, Val
local statKeys = {}
if Client.LE_EXPANSION_LEVEL["isShadowlandsWowOrAbove"] then
Val = 4
statKeys = {
    "Strength",
    "Agility",
    "Stamina",
    "Intellect",
  }
  previousStats = false;

elseif Client.LE_EXPANSION_LEVEL["isNotShadowlandsWow"] then
Val = 5
statKeys = {
    "Strength",
    "Agility",
    "Stamina",
    "Intellect",
    "Spirit"
  }
  previousStats = false;
end
local function getStats()
  local stats = {}
  for i = 1, Val do --wiki says spirit is going away so only went to 4
    local stat, effectiveStat, posBuff, negBuff = API.Documentation["UnitStat"](Strings.UnitId["player"], i)
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
    if eventName == Strings.EventName["PLAYER_ENTERING_WORLD"] then
    previousStats = getStats()
    else
    local stats = getStats()
    if type(previousStats) ~= "table" then
        --brand new stats
    else
        for _, stat in ipairs(statKeys) do
        if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
        if ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].StatEnable then
            if previousStats[stat].effectiveStat < stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Gains then
            --in this bit you can do any math you want
            local delta = math.abs(previousStats[stat].effectiveStat - stats[stat].effectiveStat)
            local currentstat = stats[stat].effectiveStat
            local msg = string.format("+%d".." "..L[stat].." ".."(%d)", delta, currentstat)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
            elseif previousStats[stat].effectiveStat > stats[stat].effectiveStat and ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][stat].Lost then
            local delta = math.abs(stats[stat].effectiveStat - previousStats[stat].effectiveStat)
            local currentstat = stats[stat].effectiveStat
            local msg = string.format("-%d".." "..L[stat].." ".."(%d)", delta, currentstat)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
            end
        end
        end
    end
    previousStats = stats;
    end
end
local f = Frames.SARTE["All_Stats_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function() Scripts.Frame["OnEvent"](f, OnEvent) end)