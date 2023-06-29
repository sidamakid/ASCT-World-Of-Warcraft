local L = ASDC_LOCALE_TABLE
local addonName, ASCT = ...;
local Skillup = CreateFrame("Frame")
Skillup:RegisterEvent("CHAT_MSG_LOOT")
Skillup:RegisterEvent("CHAT_MSG_SYSTEM")
Skillup:SetScript("OnEvent",
function (self, event, ...)
  if event == "CHAT_MSG_LOOT" then
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
      return
    end
    if Comabt_Text == true then
      
    local message = ...;
    local globalStrings = {
      LOOT_ITEM_SELF_MULTIPLE, LOOT_ITEM_PUSHED_SELF, LOOT_ITEM_CREATED_SELF, LOOT_ROLL_YOU_WON
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
    local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount, iEqLoc, iTexture, iSellPrice = GetItemInfo(Item)
    local ItemIcon = iTexture
    local Rarity = iRarity
    local r, g, b = GetItemQualityColor(Rarity);
    local msg = string.format("|T%d:18|t".." ".." ".."%s".." ".." ".."%d", ItemIcon, Item, Quantity or 1)
    ASCT:Comabt_Text(msg, r, g, b)
    
  end
  end
end)
