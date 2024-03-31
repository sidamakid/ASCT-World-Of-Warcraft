local ASCT = ASCT_Table
ASCT.Events.RegisterEvent["SPELL_DATA_LOAD_RESULT"] = function(Frame, spellID, success) Frame:RegisterEvent("SPELL_DATA_LOAD_RESULT", spellID, success) return Frame end