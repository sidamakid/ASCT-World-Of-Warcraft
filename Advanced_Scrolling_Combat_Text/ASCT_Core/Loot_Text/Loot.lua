local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table
local Loot = L_ASCT_Frames["Item_Loot_Frame"]
L_ASCT_Handlers["OnEvent"](Loot,
function (self, event, ...)
  if event == "CHAT_MSG_LOOT" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"])then return end
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
    local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount, iEqLoc, iTexture, iSellPrice = GetItemInfo(Item)
    local ItemName = sName
    local ItemIcon = iTexture
    local Rarity = iRarity
    local r, g, b = GetItemQualityColor(Rarity);
    local msg
    if Quantity ~= 1 and Quantity ~= nil then
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s".." ".."x".."%d", ItemIcon, ItemName, Quantity)
    else
      msg = string.format("|T%d:"..ASCT_DB["Integer_Values"].Icon.."|t".." ".." ".."%s", ItemIcon, ItemName)
    end
    L_Function_Keys["Combat_Text_Custom_RGB_Function"](msg, r, g, b)
  end
end
end)