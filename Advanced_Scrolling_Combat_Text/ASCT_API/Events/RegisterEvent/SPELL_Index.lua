local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["SPELL_DATA_LOAD_RESULT"] = function(Frame, spellID, success) Frame:RegisterEvent(Strings.EventName["SPELL_DATA_LOAD_RESULT"], spellID, success) return Frame end