local defaults = {
  r = 1,
  b = 0,
  g = 0,
  a = 1,
}
local function OnEvent(self, event, addonEventName)
  if event == "ADDON_LOADED" and addonName == Color_picker_test then -- you'll need to put your addon name here
    Advanced_Scrolling_Combat_Text_Color_Picker_Variables = Advanced_Scrolling_Combat_Text_Color_Picker_Variables or CopyTable(defaults)
    self:UnregisterEvent("ADDON_LOADED")
  end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", OnEvent)