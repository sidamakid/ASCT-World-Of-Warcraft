local ASCT = ASCT_Table

ASCT.API.Documentation["C_Spell.RequestLoadSpellData"] = function(spellID)
    C_Spell.RequestLoadSpellData(spellID)
    return spellID
end