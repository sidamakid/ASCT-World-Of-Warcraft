local Lua_API = Lua_API_Table
Lua_API.String["string.format"] = function(formatStr, ...)
    return string.format(formatStr, ...)
end

Lua_API.String["string.len"] = function(str)
    return string.len(str)
end

Lua_API.String["string.sub"] = function(str, i, j)
    return string.sub(str, i, j)
end

Lua_API.String["string.upper"] = function(str)
    return string.upper(str)
end

Lua_API.String["string.lower"] = function(str)
    return string.lower(str)
end

Lua_API.String["string.match"] = function(str, pattern)
    return string.match(str, pattern)
end

Lua_API.String["string.gsub"] = function(str, pattern, repl)
    return string.gsub(str, pattern, repl)
end

Lua_API.String["string.find"] = function(str, pattern, init, plain)
    return string.find(str, pattern, init, plain)
end