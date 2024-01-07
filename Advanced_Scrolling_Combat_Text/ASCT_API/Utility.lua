local ASCT = ASCT_Table
ASCT.API.Documentation["C_Spell.RequestLoadSpellData"] = function(spellID)
    C_Spell.RequestLoadSpellData(spellID)
    return spellID
end

ASCT.API.Documentation["C_CVar.GetCVarBool"] = function(boolean)
    local value = C_CVar.GetCVarBool(boolean)
    return value
end