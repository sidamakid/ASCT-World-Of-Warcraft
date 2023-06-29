local isWrathWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING)
if isWrathWow then
  local function AddMessage(msg)
    CombatText_AddMessage(msg, CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
  end
  local fs = CreateFrame("Frame")
  local L = ASDC_LOCALE_TABLE
  local function MakeTrinketTracker(unit, inventorySlot, dbSettings)
    local lastStart
    local f = CreateFrame("Frame")
    f:SetScript("OnUpdate", function ()
        local start, duration, enable = GetInventoryItemCooldown(unit, inventorySlot)
        if lastStart == nil then
          lastStart = GetInventoryItemCooldown(unit, inventorySlot)
        end
        if start ~= lastStart and start == 0 then
          local itemID = GetInventoryItemID(unit, inventorySlot)
          local itemName, _, _, _, _, _, _, _, _, itemTexture =  GetItemInfo(itemID)
          local details = " "
          if dbSettings.Icon then details = details..string.format("|T%d:18|t ".." ", itemTexture) end
          if dbSettings.Name then details = details..itemName.." " end
          if dbSettings.Icon == false and dbSettings.Name == false then
            return
          end
          local msg = string.format ("%s"..L["msg"], details)
          AddMessage(msg)
        end
        lastStart = GetInventoryItemCooldown(unit, inventorySlot)
    end)
  end
  fs:RegisterEvent("ADDON_LOADED")
  fs:SetScript("OnEvent", function(_, _, addonName)
    if addonName == "Advanced_Scrolling_Combat_Text_Options" then
      fs:UnregisterEvent("ADDON_LOADED")
      MakeTrinketTracker("player", 13, Advanced_Scrolling_Combat_Text_DB["Trinkets"]["Trinket_1"])
      MakeTrinketTracker("player", 14, Advanced_Scrolling_Combat_Text_DB["Trinkets"]["Trinket_2"])
    end
  end)
end