local Lua_API = Lua_API_Table

Lua_API.To["ToString"] = function(value)
    return tostring(value)
end

Lua_API.To["ToNumber"] = function(value)
    return tonumber(value)
end