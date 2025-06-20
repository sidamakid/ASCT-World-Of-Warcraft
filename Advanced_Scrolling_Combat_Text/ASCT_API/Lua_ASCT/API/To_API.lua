local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT

Lua_ASCT.API.To["ToString"] = function(value)
    return Lua_ASCT.Var_Module["tostring"](value)
end

Lua_ASCT.API.To["ToNumber"] = function(value)
    return Lua_ASCT.Var_Module["tonumber"](value)
end