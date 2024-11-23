local ASCT = ASCT_Table

ASCT.API.Documentation["C_Spell.RequestLoadSpellData"] = function(spellID)
    C_Spell.RequestLoadSpellData(spellID)
    return spellID
end

ASCT.API.Documentation["C_Spell.GetSpellInfo"] = function(spellIdentifier)
    local spellInfo = C_Spell.GetSpellInfo(spellIdentifier)
    return spellInfo
end

ASCT.API.Documentation["C_Spell.GetSpellName"] = function(spellIdentifier)
    local name = C_Spell.GetSpellName(spellIdentifier)
    return name
end

ASCT.API.Documentation["C_Spell.GetSpellTexture"] = function(spellIdentifier)
    local iconID, originalIconID = C_Spell.GetSpellTexture(spellIdentifier)
    return iconID, originalIconID
end

ASCT.API.Documentation["C_Spell.GetSpellCooldown"] = function(spellIdentifier)
    local spellCooldownInfo = C_Spell.GetSpellCooldown(spellIdentifier)
    return spellCooldownInfo
end

ASCT.API.Documentation["C_Spell.GetSpellDescription"] = function(spellIdentifier)
    local description = C_Spell.GetSpellDescription(spellIdentifier)
    return description
end