local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT
Lua_ASCT.API["Select"] = function(num, ...)
    local var = Lua_ASCT.Var_Module["select"](num, ...)
    return var
 end