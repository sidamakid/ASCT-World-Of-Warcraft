local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Frames, Scripts, API, Strings, Functions, Events = Keys.Metatables["Frames"], Keys.Metatables["Scripts"], Keys.Metatables["API"], Keys.Metatables["Strings"], Keys.Metatables["Functions"], Keys.Metatables["Events"]
local function MakeTrinketTracker(unit, inventorySlot, dbSettings, Icon_Size)
  local lastStart
  local f = Frames.SARTE["Trinket_OnUpdate_Frame"]
  Scripts.Frame["OnUpdate"](f, function ()
      local start, duration, enable = API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
      if lastStart == nil then
        lastStart = API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
      end
      if start ~= lastStart and start == 0 and dbSettings.TrinketEnable then
        local itemID = API.Documentation["GetInventoryItemID"](unit, inventorySlot)
        local itemName, _, _, _, _, _, _, _, _, itemTexture =  API.Documentation["GetItemInfo"](itemID)
        local Comabt_Text = API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])
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
        local msg = string.format ("%s"..L[ASCT_DB["Message_Selector"]["Msg"]], details)
        Functions.CombatText["CombatText_AddMessage"](msg, CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
        end
      end
      lastStart = API.Documentation["GetInventoryItemCooldown"](unit, inventorySlot)
  end)
end
local fs = Frames.SARTE["Trinket_Frame"]
Scripts.Frame["OnEvent"](fs, function(_, _, addonName)
  if addonName == "Advanced_Scrolling_Combat_Text"then
    Events.UnRegisterEvent["ADDON_LOADED"](fs)
    Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker(Strings.UnitId["player"], 13, ASCT_DB["Trinkets"]["Trinket_1"], ASCT_DB["Integer_Values"]) end)
    Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function ()MakeTrinketTracker(Strings.UnitId["player"], 14, ASCT_DB["Trinkets"]["Trinket_2"], ASCT_DB["Integer_Values"]) end)
  end
end)