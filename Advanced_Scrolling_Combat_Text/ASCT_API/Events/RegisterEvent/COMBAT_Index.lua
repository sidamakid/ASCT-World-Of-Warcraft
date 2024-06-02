local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["COMBAT_RATING_UPDATE"] = function(Frame) Frame:RegisterEvent(Strings.EventName["COMBAT_RATING_UPDATE"]) return Frame end