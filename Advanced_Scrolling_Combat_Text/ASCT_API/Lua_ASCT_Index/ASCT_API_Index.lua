local ASCT = ASCT_Table
local Lua_Functions, Lua_ASCT, API = ASCT.Lua_Functions, ASCT.Lua_ASCT, ASCT.API

Lua_ASCT.Functions["ASCT_API_With_Val"] = function(num, func, val)
   local var = Lua_Functions.API.Select["Function_Without_Val"](num, API.Documentation, func(val))
   return var
end

Lua_ASCT.Functions["ASCT_API_Without_Val"] = function(num, func)
   local var = Lua_Functions.API.Select["Function_Without_Val"](num, API.Documentation, func)
   return var
end