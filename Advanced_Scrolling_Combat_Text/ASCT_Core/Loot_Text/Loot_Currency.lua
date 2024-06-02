local ASCT = ASCT_Table
local Loot = ASCT.Frames.SARTE["Currency_Loot_Frame"]
ASCT.Scripts.Frame["OnEvent"](Loot,
function (self, event, ...)
  if event == "CHAT_MSG_CURRENCY" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Loot"] == true then
    local message = ...;
    local globalStrings = {
       CURRENCY_GAINED_MULTIPLE, CURRENCY_GAINED_MULTIPLE_BONUS, CURRENCY_GAINED
    }
    local Item, Quantity
    -- work through each possible pattern and break on the first pattern that matches
    for _, g in ipairs(globalStrings) do
      local pat = g:gsub("%%.", "(.*)")
      Item, Quantity = message:match(pat)
      if Item then
        break
      end
    end
    if ASCT.Client["isShadowlandsWowOrAbove"] then
    --[[
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = ASCT.API.Documentation["C_CurrencyInfo.GetCurrencyInfoFromLink"](Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = ASCT.API.Documentation["GetItemQualityColor"](Rarity);
    local msg = string.format("|T%d:18|t".." ".." ".."%s".." ".."%d", ItemIcon, ItemName, Quantity or "")
    L_Function_Keys["Combat_Text_Custom_RGB_Function"](msg, r, g, b)
    ]]
    return
    else
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = ASCT.API.Documentation["GetCurrencyInfo"](Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = ASCT.API.Documentation["GetItemQualityColor"](Rarity);
    local amount = tonumber(Quantity)
    local msg
    if amount ~= 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]".." ".."x".."%d", ItemIcon, ItemName, Quantity)
    elseif amount == 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]", ItemIcon, ItemName)
    end
    ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, r, g, b)
    end
  end
  end
end)