local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT

-- Add table.insert to the API table
Lua_ASCT.API.Table["table.insert"] = function(t, pos, value)
    if value == nil then
        value = pos
        pos = #t + 1
    end
    return Lua_ASCT.Var_Library["table"].insert(t, pos, value)
end

Lua_ASCT.API.Table["table.remove"] = function(t, pos)
    return Lua_ASCT.Var_Library["table"].remove(t, pos)
end

Lua_ASCT.API.Table["table.sort"] = function(t, comp)
    Lua_ASCT.Var_Library["table"].sort(t, comp)
end

Lua_ASCT.API.Table["table.concat"] = function(t, sep, i, j)
    return Lua_ASCT.Var_Library["table"].concat(t, sep, i, j)
end