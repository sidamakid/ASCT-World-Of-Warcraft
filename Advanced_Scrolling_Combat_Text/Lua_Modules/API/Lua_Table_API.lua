local Lua_API = Lua_API_Table
Lua_API.Table["table.insert"] = function(t, pos, value)
    if value == nil then
        value = pos
        pos = #t + 1
    end
    return Lua_API.Var_Library["table"].insert(t, pos, value)
end

Lua_API.Table["table.remove"] = function(t, pos)
    return Lua_API.Var_Library["table"].remove(t, pos)
end

Lua_API.Table["table.sort"] = function(t, comp)
    Lua_API.Var_Library["table"].sort(t, comp)
end

Lua_API.Table["table.concat"] = function(t, sep, i, j)
    return Lua_API.Var_Library["table"].concat(t, sep, i, j)
end