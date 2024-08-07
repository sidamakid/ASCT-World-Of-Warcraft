local ASCT = ASCT_Table
local Client, Frames, Scripts, Functions, API, Strings = ASCT.Client, ASCT.Frames, ASCT.Scripts, ASCT.Functions, ASCT.API, ASCT.Strings
local Loot = Frames.SARTE["Honor_Loot_Frame"]
Scripts.Frame["OnEvent"](Loot,
function (self, event, ...)
  if event == Strings.EventName["CHAT_MSG_COMBAT_HONOR_GAIN"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Loot"] == true then
    local message = ...;
    local globalStrings = {
        COMBATLOG_HONORAWARD,
        COMBATLOG_HONORGAIN,
        COMBATLOG_HONORGAIN_NO_RANK,
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
    if Item then
    if Client.LE_EXPANSION_LEVEL["isShadowlandsWowOrAbove"] then
    --[[
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = API.Documentation["C_CurrencyInfo.GetCurrencyInfoFromLink"](Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = API.Documentation["GetItemQualityColor"](Rarity);
    local msg = string.format("|T%d:18|t".." ".." ".."%s".." ".."%d", ItemIcon, ItemName, Quantity or "")
    L_Function_Keys["Combat_Text_Custom_RGB_Function"](msg, r, g, b)
    ]]
    return
    else
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = API.Documentation["GetCurrencyInfo"](Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = rarity
    local r, g, b = API.Documentation["GetItemQualityColor"](Rarity);
    local amount = tonumber(Quantity)
    local msg
    if amount ~= 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s".." ".."x".."%d", ItemIcon, ItemName, Quantity)
    elseif amount == 1 then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s", ItemIcon, ItemName)
    end
    Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, r, g, b)
    end
  end
  end
  end
end)