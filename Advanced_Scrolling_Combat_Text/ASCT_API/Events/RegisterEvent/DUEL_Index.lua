local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["DUEL_REQUESTED"] = function(Frame) Frame:RegisterEvent(Strings.EventName["DUEL_REQUESTED"]) return Frame end