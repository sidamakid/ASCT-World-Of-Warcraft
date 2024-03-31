local ASCT = ASCT_Table

ASCT.API.Documentation["C_CVar.GetCVarBool"] = function(boolean)
    local value = C_CVar.GetCVarBool(boolean)
    return value
end