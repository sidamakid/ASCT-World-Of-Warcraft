local ASCT = ASCT_Table
ASCT.API.Documentation["IsSpellKnown"] = function(spellID, isPetSpell)
    local isKnown = IsSpellKnown(spellID, isPetSpell)
    return isKnown
end
ASCT.API.Documentation["IsPlayerSpell"] = function(spellID)
    local isKnown = IsPlayerSpell(spellID)
    return isKnown
end