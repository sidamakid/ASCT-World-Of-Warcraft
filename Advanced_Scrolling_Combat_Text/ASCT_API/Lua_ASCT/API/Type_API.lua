local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT
-- Add the type function to the API table
Lua_ASCT.API.Type["Type"] = function(value)
    return Lua_ASCT.Var_Module["type"](value)
end