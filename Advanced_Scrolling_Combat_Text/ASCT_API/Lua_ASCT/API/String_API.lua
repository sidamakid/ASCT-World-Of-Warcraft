local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT
Lua_ASCT.API.Strings["string.format"] = function(formatStr, ...)
    return Lua_ASCT.Var_Library["string"].format(formatStr, ...)
end

Lua_ASCT.API.Strings["string.len"] = function(str)
    return Lua_ASCT.Var_Library["string"].len(str)
end

Lua_ASCT.API.Strings["string.sub"] = function(str, i, j)
    return Lua_ASCT.Var_Library["string"].sub(str, i, j)
end

Lua_ASCT.API.Strings["string.upper"] = function(str)
    return Lua_ASCT.Var_Library["string"].upper(str)
end

Lua_ASCT.API.Strings["string.lower"] = function(str)
    return Lua_ASCT.Var_Library["string"].lower(str)
end

Lua_ASCT.API.Strings["string.match"] = function(str, pattern)
    return Lua_ASCT.Var_Library["string"].match(str, pattern)
end

Lua_ASCT.API.Strings["string.gsub"] = function(str, pattern, repl)
    return Lua_ASCT.Var_Library["string"].gsub(str, pattern, repl)
end

Lua_ASCT.API.Strings["string.find"] = function(str, pattern, init, plain)
    return Lua_ASCT.Var_Library["string"].find(str, pattern, init, plain)
end