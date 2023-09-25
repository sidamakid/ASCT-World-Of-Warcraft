local L_Version_Check_Keys = ASCT_Version_Check_Table
---------------------------
--All the functions in Verison_Check

---------------------------
--Get Build Info Function
---------------------------
L_Version_Check_Keys["GetBuildInfo"] = function (Integer)
    local Build_Info = select(4, GetBuildInfo()) == Integer
    return Build_Info
end
---------------------------
--Le_Expansion_Level_Current Function
---------------------------
L_Version_Check_Keys["Le_Expansion_Level_Current"] = function (Expansion)
    local Expansion_Level_Current = (LE_EXPANSION_LEVEL_CURRENT == Expansion)
    return Expansion_Level_Current
end
---------------------------
--Not Expanison Le_Expansion_Level_Current Function
---------------------------
L_Version_Check_Keys["Not_Expansion_Or_Above_Le_Expansion_Level_Current"] = function (Expansion)
    local Expansion_Level_Current = (LE_EXPANSION_LEVEL_CURRENT < Expansion)
    return Expansion_Level_Current
end
---------------------------
--Is Expanison Or Above Le_Expansion_Level_Current Function
---------------------------
L_Version_Check_Keys["Expansion_Or_Above_Le_Expansion_Level_Current"] = function (Expansion)
    local Expansion_Level_Current = (LE_EXPANSION_LEVEL_CURRENT >= Expansion)
    return Expansion_Level_Current
end
---------------------------
--Is Multiple Specfic Le_Expansion_Level_Current Function
---------------------------
--[[
L_Version_Check_Keys["Expansion_Multiple_Specfic_Le_Expansion_Level_Current"] = function (numExpansions, ...)
    local expansion_contents = {};
    for i = 1, numExpansions do
    local Expansion_Level_Current = (LE_EXPANSION_LEVEL_CURRENT == ...)
    table.insert(expansion_contents, Expansion_Level_Current)
    end
    return unpack(expansion_contents)
end
]]
---------------------------
--Is Multiple_GetBuildInfo
---------------------------
--[[
L_Version_Check_Keys["Multiple_Specfic_GetBuildInfo"] = function (Integer, ...)
    local GetBuildInfo_contents = {};
    for i = 1, Integer do
    local GetBuildInfo_Multiple = select(4, GetBuildInfo()) == ...
    table.insert(GetBuildInfo_contents, GetBuildInfo_Multiple)
    end
    return unpack(GetBuildInfo_contents)
end
---------------------------
]]