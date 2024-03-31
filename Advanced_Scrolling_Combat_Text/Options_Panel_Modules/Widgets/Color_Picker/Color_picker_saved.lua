local defaults = {
  r = 1,
  b = 0,
  g = 0,
  a = 1,
}
local function OnEvent(self, event, addonName)
  if event == "ADDON_LOADED" and addonName == "Advanced_Scrolling_Combat_Text" then -- you'll need to put your addon name here
    ASCT_Color_Picker_Variables = ASCT_Color_Picker_Variables or CopyTable(defaults)
    self:UnregisterEvent("ADDON_LOADED")
  end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)