local L_Version_Check_Keys, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys = ASCT_Version_Check_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table
local Loot = L_ASCT_Frames["Currency_Loot_Frame"]
L_ASCT_Handlers["OnEvent"](Loot,
function (self, event, ...)
  if event == "CHAT_MSG_CURRENCY" then
    if not C_CVar.GetCVarBool("enableFloatingCombatText")then return end
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
    if L_Version_Check_Keys["isShadowlandsWowOrAbove"] then
    --[[
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = C_CurrencyInfo.GetCurrencyInfoFromLink(Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = GetItemQualityColor(Rarity);
    local msg = string.format("|T%d:18|t".." ".." ".."%s".." ".."%d", ItemIcon, ItemName, Quantity or "")
    L_Function_Keys["Combat_Text_Custom_RGB_Function"](msg, r, g, b)
    ]]
    return
    else
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = GetCurrencyInfo(Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = GetItemQualityColor(Rarity);
    local amount = tonumber(Quantity)
    local msg
    if amount ~= 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s".." ".."x".."%d", ItemIcon, ItemName, Quantity)
    elseif amount == 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s", ItemIcon, ItemName)
    end
    L_Function_Keys["Combat_Text_Custom_RGB_Function"](msg, r, g, b)
    end
  end
  end
end)