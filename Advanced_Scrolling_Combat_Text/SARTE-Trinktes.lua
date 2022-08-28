local L = ASDC_LOCALE_TABLE
local lasttrinket1start
local lasttrinket2start
local f = CreateFrame("Frame")
f:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN")
f:SetScript("OnEvent",
function (self, event)
    local trinket1start, trinket1duration, trinket1enable = GetInventoryItemCooldown("player", 13)
    local trinket2start, trinket2duration, trinket2enable = GetInventoryItemCooldown("player", 14)
    if lasttrinket1start == nil then
      lasttrinket1start = GetInventoryItemCooldown("player", 13)
    end
    if trinket1start ~= lasttrinket1start and trinket1start == 0 then
      local itemID = GetInventoryItemID("player", 13)
      local itemName, _, _, _, _, _, _, _, _, itemTexture =  GetItemInfo(itemID)
      local msg = string.format("|T%d:18|t %s".." "..L["msg"], itemTexture, itemName)
      CombatText_AddMessage(msg, CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
    end
    lasttrinket1start = GetInventoryItemCooldown("player", 13)
    if lasttrinket2start == nil then
        lasttrinket2start = GetInventoryItemCooldown("player", 14)
    end
      if trinket2start ~= lasttrinket2start and trinket2start == 0 then
        local itemID = GetInventoryItemID("player", 14)
        local itemName = GetItemInfo(itemID)
        local itemTexture = select(10, GetItemInfo(itemID))
        local msg = string.format("|T%d:18|t %s".." "..L["msg"], itemTexture, itemName)
        CombatText_AddMessage(msg, CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
    end
    lasttrinket2start = GetInventoryItemCooldown("player", 14)
end
)