local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["ACHIEVEMENT_EARNED"] = function(Frame) Frame:RegisterEvent(Strings.EventName["ACHIEVEMENT_EARNED"]) return Frame end