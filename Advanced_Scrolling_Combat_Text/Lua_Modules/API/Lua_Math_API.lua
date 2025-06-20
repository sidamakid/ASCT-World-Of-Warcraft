local Lua_API = Lua_API_Table
-- Add a function using the math module to the API table
Lua_API.Math["math.abs"] = function(num)
    local var = Lua_API.Var_Library["math"].abs(num) -- Example using the math.abs function
    return var
end

-- Add a function using the math.floor function to the API table
Lua_API.Math["math.floor"] = function(num)
    local var = Lua_API.Var_Library["math"].floor(num)
    return var
end

Lua_API.Math["math.ceil"] = function(num)
    return Lua_API.Var_Library["math"].ceil(num)
end

Lua_API.Math["math.sin"] = function(num)
    return Lua_API.Var_Library["math"].sin(num)
end

Lua_API.Math["math.cos"] = function(num)
    return Lua_API.Var_Library["math"].cos(num)
end

Lua_API.Math["math.tan"] = function(num)
    return Lua_API.Var_Library["math"].tan(num)
end

Lua_API.Math["math.sqrt"] = function(num)
    return Lua_API.Var_Library["math"].sqrt(num)
end

Lua_API.Math["math.random"] = function()
    return Lua_API.Var_Library["math"].random()
end

Lua_API.Math["math.pi"] = function()
    return Lua_API.Var_Library["math"].pi
end