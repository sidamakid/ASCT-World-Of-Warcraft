local Lua_API = Lua_API_Table
-- Add the type function to the API table
Lua_API.Type["Type"] = function(value)
    return type(value)
end