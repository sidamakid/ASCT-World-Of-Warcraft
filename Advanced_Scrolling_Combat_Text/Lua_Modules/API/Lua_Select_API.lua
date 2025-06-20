local Lua_API = Lua_API_Table
Lua_API.Functions["Select"] = function(num, ...)
    local var = select(num, ...)
    return var
 end