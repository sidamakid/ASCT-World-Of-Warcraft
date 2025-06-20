local Lua_API = Lua_API_Table
Lua_API.Set["setmetatable"] = function(Table, Metatable)
    local table = setmetatable(Table, Metatable)
    return table
end