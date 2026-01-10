local _, ASCT = ...;
local Lua_API = ASCT.Lua_API
Lua_API.Miscellaneous["unpack"] = function(t, i, j)
  return Lua_API.Var_Module["return"](unpack(t, i, j))
end

Lua_API.Miscellaneous["select"] = function(num, ...)
    local var = select(num, ...)
    return Lua_API.Var_Module["return"](var)
 end