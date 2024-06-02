local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.UnRegisterEvent["ADDON_LOADED"] = function(Frame) Frame:UnregisterEvent(Strings.EventName["ADDON_LOADED"]) return Frame end