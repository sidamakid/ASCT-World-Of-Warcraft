local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local function MakeTrinketTracker(unit, inventorySlot, dbSettings, Icon_Size)
  local lastStart
  local f = ASCT.Frames.SARTE["Trinket_OnUpdate_Frame"]
  ASCT.Scripts.Frame["OnUpdate"](f, function ()
      local start, duration, enable = ASCT.API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
      if lastStart == nil then
        lastStart = ASCT.API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
      end
      if start ~= lastStart and start == 0 and dbSettings.TrinketEnable then
        local itemID = ASCT.API.Documentation["GetInventoryItemID"](unit, inventorySlot)
        local itemName, _, _, _, _, _, _, _, _, itemTexture =  ASCT.API.Documentation["GetItemInfo"](itemID)
        local Comabt_Text = ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])
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
        ASCT.Functions["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
        end
      end
      lastStart = ASCT.API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
  end)
end
local fs = ASCT.Frames.SARTE["Trinket_Frame"]
ASCT.Scripts.Frame["OnEvent"](fs, function(_, _, addonName)
  if addonName == "Advanced_Scrolling_Combat_Text"then
    ASCT.Events.UnRegisterEvent["ADDON_LOADED"](fs)
    ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker(ASCT.Strings.UnitId["player"], 13, ASCT_DB["Trinkets"]["Trinket_1"], ASCT_DB["Integer_Values"]) end)
    ASCT.Functions["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker(ASCT.Strings.UnitId["player"], 14, ASCT_DB["Trinkets"]["Trinket_2"], ASCT_DB["Integer_Values"]) end)
  end
end)