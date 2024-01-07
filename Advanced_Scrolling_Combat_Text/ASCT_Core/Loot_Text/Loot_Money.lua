local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table
local Loot_Money = L_ASCT_Frames["Money_Loot_Frame"]
L_ASCT_Handlers["OnEvent"](Loot_Money, function (self, event, ...)
  if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
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
    L_Function_Keys["Combat_Text_Function"](msg)
  end
end)