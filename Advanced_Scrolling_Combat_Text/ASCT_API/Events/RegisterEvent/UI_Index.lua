local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["UI_INFO_MESSAGE"] = function(Frame) Frame:RegisterEvent(Strings.EventName["UI_INFO_MESSAGE"]) return Frame end
ASCT.Events.RegisterEvent["UI_ERROR_MESSAGE"] = function(Frame) Frame:RegisterEvent(Strings.EventName["UI_ERROR_MESSAGE"]) return Frame end