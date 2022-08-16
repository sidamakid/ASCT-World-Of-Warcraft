local defaults_Spells = {
  r = 1,
  b = 0,
  g = 0,
  a = 1,
}
local defaults_Stats = {
  r = 0,
  b = 0,
  g = 255,
  a = 1.0,
}
local defautls_Leveling = {
  r = 0,
  b = 0,
  g = 255,
  a = 1.0,
}
local defautls_Auras = {
  r = 1,
  b = 1,
  g = 0,
  a = 0,
}
local function OnEvent(self, event, addonEventName)
  if event == "ADDON_LOADED" and addonName == Advanced_Scrolling_Combat_Text_Options then -- you'll need to put your addon name here
    Advanced_Scrolling_Combat_Text_Color_Picker_Variables = Advanced_Scrolling_Combat_Text_Color_Picker_Variables or CopyTable(defaults_Spells)
    ASCT_Colors_Stats = ASCT_Colors_Stats or CopyTable(defaults_Stats)
    ASCT_Colors_Leveling = ASCT_Colors_Leveling or CopyTable(defautls_Leveling)
    ASCT_Colors_Auras = ASCT_Colors_Auras or CopyTable(defautls_Auras)
    self:UnregisterEvent("ADDON_LOADED")
  end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", OnEvent)