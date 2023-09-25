local L_Function_Keys = Functions_For_ASDC_Table
local defaults = {
  r = 1,
  b = 0,
  g = 0,
  a = 1,
}
local function OnEvent(self, event, addonEventName)
  if event == "ADDON_LOADED" and addonName == Advanced_Scrolling_Combat_Text_Options then -- you'll need to put your addon name here
    Advanced_Scrolling_Combat_Text_Color_Picker_Variables = Advanced_Scrolling_Combat_Text_Color_Picker_Variables or CopyTable(defaults)
    self:UnregisterEvent("ADDON_LOADED")
  end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)