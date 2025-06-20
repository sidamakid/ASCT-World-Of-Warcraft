local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Frames, Scripts, Functions, API, Strings = ASCT.Frames, ASCT.Scripts, ASCT.Functions, ASCT.API, ASCT.Strings
local Loot = Frames.SARTE["Currency_Loot_Frame"]
Scripts.Frame["OnEvent"](Loot,
function (self, event, ...)
  if event == Strings.EventName["CHAT_MSG_CURRENCY"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Loot"] == true then
      local message = ...
      local globalStrings = {
        CURRENCY_GAINED_MULTIPLE, CURRENCY_GAINED_MULTIPLE_BONUS, CURRENCY_GAINED
      }
      local Item, Quantity
      for _, g in ipairs(globalStrings) do
        local pat = g:gsub("%%.", "(.*)")
        Item, Quantity = message:match(pat)
        if Item then break end
      end

      -- Extract currency ID from the link
      local currencyID = message:match("currency:(%d+)")
      if currencyID then
        local currencyInfo = API.Documentation["C_CurrencyInfo.GetCurrencyInfo"](tonumber(currencyID))
        if currencyInfo then
          local ItemName = currencyInfo.name
          local ItemIcon = currencyInfo.iconFileID
          local Rarity = currencyInfo.quality
          local r, g, b = API.Documentation["C_Item.GetItemQualityColor"](Rarity)
          local amount = tonumber(Quantity)
          local msg
          if amount ~= 1 then
            msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]".." ".."x".."%d", ItemIcon, ItemName, Quantity)
          elseif amount == 1 then
            msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]", ItemIcon, ItemName)
          end
          Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, r, g, b)
        end
      end
    end
  end
end)