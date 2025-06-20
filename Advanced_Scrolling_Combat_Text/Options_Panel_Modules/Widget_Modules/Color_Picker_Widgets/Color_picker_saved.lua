local ASCT = ASCT_Table
local Frames, Scripts, Strings = ASCT.Frames, ASCT.Scripts, ASCT.Strings
local defaults = {
  r = 1,
  b = 0,
  g = 0,
  a = 1,
}
local function OnEvent(self, event, addonName)
  if event == Strings.EventName["ADDON_LOADED"] and addonName == "Advanced_Scrolling_Combat_Text" then -- you'll need to put your addon name here
    ASCT_Color_Picker_Variables = ASCT_Color_Picker_Variables or CopyTable(defaults)
    ASCT.Events.UnRegisterEvent["ADDON_LOADED"](self)
  end
end

local f = Frames.Miscellaneous["Color_Picker_loadingFrame"]
Scripts.Frame["OnEvent"](f, OnEvent)