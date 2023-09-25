local addonName, ns = ...
local defaults = {
    r = 1,
    b = 0,
    g = 0,
    a = 1,
  }
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function (self, eventName, name)
    if name == "Advanced_Scrolling_Combat_Text" then
        ASCT_Color_Picker_Variables = ASCT_Color_Picker_Variables or Advanced_Scrolling_Combat_Text_Color_Picker_Variables
            if not ASCT_Color_Picker_Variables then
                ASCT_Color_Picker_Variables = defaults
            end
            ASCT_DB = ASCT_DB or Advanced_Scrolling_Combat_Text_DB
        end
end)