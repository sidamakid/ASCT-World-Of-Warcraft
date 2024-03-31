local ASCT = ASCT_Table
local Loot_Money = ASCT.Frames.SARTE["Money_Loot_Frame"]
ASCT.Scripts.Frame["OnEvent"](Loot_Money, function (self, event, ...)
  if event == "CHAT_MSG_MONEY" then
  if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Loot"] == true then
    local message = ...
    local globalStrings = {
        YOU_LOOT_MONEY,
        LOOT_MONEY_SPLIT
    }
    local MoneyGains
    --local MoneyIcon
    -- work through each possible pattern and break on the first pattern that matches
    for _, g in ipairs(globalStrings) do
      --local pat_coins = g:gsub("%%.", "(.)")
      --MoneyIcon = message:match(pat_coins)
      local pat = g:gsub("%%.", "(.*)")
      MoneyGains = message:match(pat)
      if MoneyGains then
        break
      end
      --if MoneyIcon then
        --break
      --end
    end
    --[[
    local money = tonumber(MoneyIcon)
    local quantity = GetCoinIcon(money)
    ]]
    local msg = string.format("%s", MoneyGains)
    --local msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".."%s", quantity, MoneyGains)
    ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
  end
end
end)