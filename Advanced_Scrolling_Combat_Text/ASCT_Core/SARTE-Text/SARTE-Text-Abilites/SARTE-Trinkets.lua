local L, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys = ASDC_LOCALE_TABLE, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table
local function MakeTrinketTracker(unit, inventorySlot, dbSettings, Icon_Size)
  local lastStart
  local f = CreateFrame("Frame")
  f:SetScript("OnUpdate", function ()
      local start, duration, enable = GetInventoryItemCooldown(unit, inventorySlot)
      if lastStart == nil then
        lastStart = GetInventoryItemCooldown(unit, inventorySlot)
      end
      if start ~= lastStart and start == 0 and dbSettings.TrinketEnable then
        local itemID = GetInventoryItemID(unit, inventorySlot)
        local itemName, _, _, _, _, _, _, _, _, itemTexture =  GetItemInfo(itemID)
        local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
        local details = " "
        --if dbSettings.Icon then details = details..string.format("|T%d:18|t ".." ", itemTexture) end
        if dbSettings.Icon then details = details..string.format("|T%d:"..Icon_Size.Icon.."|t ".." ", itemTexture) end
        if dbSettings.Name then details = details..itemName.." " end
        if dbSettings.Icon == false and dbSettings.Name == false then
          return
        end
        if Comabt_Text == false then
          return
        end
        if Comabt_Text == true then
        local msg = string.format ("%s"..L["msg"], details)
        L_Function_Keys["Combat_Text_Function"](msg)
        end
      end
      lastStart = GetInventoryItemCooldown(unit, inventorySlot)
  end)
end
local fs = L_ASCT_Frames["Trinket_Frame"]
L_ASCT_Handlers["OnEvent"](fs, function(_, _, addonName)
  if addonName == "Advanced_Scrolling_Combat_Text"then
    fs:UnregisterEvent("ADDON_LOADED")
    L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker("player", 13, ASCT_DB["Trinkets"]["Trinket_1"], ASCT_DB["Integer_Values"]) end)
    L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker("player", 14, ASCT_DB["Trinkets"]["Trinket_2"], ASCT_DB["Integer_Values"]) end)
  end
end)