local ASCT = ASCT_Table
local Frames, Scripts, Functions, API, Strings = ASCT.Frames, ASCT.Scripts, ASCT.Functions, ASCT.API, ASCT.Strings
local Loot = Frames.SARTE["Item_Loot_Frame"]
Scripts.Frame["OnEvent"](Loot,
function (self, event, ...)
  if event == Strings.EventName["CHAT_MSG_LOOT"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Loot"] == true then
    local message = ...;
    local globalStrings = {
      LOOT_ITEM_SELF_MULTIPLE,LOOT_ITEM_PUSHED_SELF_MULTIPLE, LOOT_ITEM_SELF,  LOOT_ITEM_PUSHED_SELF, LOOT_ITEM_CREATED_SELF, LOOT_ROLL_YOU_WON, LOOT_ITEM_BONUS_ROLL_SELF
    }
    local Item, Quantity
    -- work through each possible pattern and break on the first pattern that matches
    for _, g in ipairs(globalStrings) do
      local pat = g:gsub("%%.", "(.*)")
      Item, Quantity  = message:match(pat)
      --Item = message:match(pat)
      if Item then
        break
      end
    end
    if Item then
    local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount, iEqLoc, iTexture, iSellPrice = API.Documentation["C_Item.GetItemInfo"](Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = iRarity
    local r, g, b = API.Documentation["C_Item.GetItemQualityColor"](Rarity);
    local msg
    if Quantity ~= 1 and Quantity ~= nil then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]".." ".."x".."%d", ItemIcon, ItemName, Quantity)
    else
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."[".."%s".."]", ItemIcon, ItemName)
    end
    Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, r, g, b)
  end
  end
end
end)