local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["ADDON_LOADED"] = function(Frame) Frame:RegisterEvent(Strings.EventName["ADDON_LOADED"]) return Frame end