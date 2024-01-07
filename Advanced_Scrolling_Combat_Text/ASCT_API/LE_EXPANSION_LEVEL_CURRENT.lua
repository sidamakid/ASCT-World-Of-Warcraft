local ASCT = ASCT_Table
---------------------------
--Le_Expansion_Level_Current Function
---------------------------
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Equal"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] == Expansion)
    return Expansion_Level_Current
end
---------------------------
--Not Expanison Le_Expansion_Level_Current Function
---------------------------
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] < Expansion)
    return Expansion_Level_Current
end
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] < Expansion)
    return Expansion_Level_Current
end
---------------------------
--Is Expanison Or Above Le_Expansion_Level_Current Function
---------------------------
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Greater_Than_Or_Equal"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] >= Expansion)
    return Expansion_Level_Current
end
---------------------------
--
---------------------------
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Less_Than_Or_Equal"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] <= Expansion)
    return Expansion_Level_Current
end
ASCT.API.Documentation["LE_EXPANSION_LEVEL_CURRENT_Not_Equal"] = function (Expansion)
    local Expansion_Level_Current = (ASCT.Strings["LE_EXPANSION_LEVEL_CURRENT"] ~= Expansion)
    return Expansion_Level_Current
end