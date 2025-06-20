local Lua_API, ASCT = Lua_API_Table, ASCT_Table
function ASCT.Metatables.GetMetatable(name)
    return ASCT.Metatables[name]
end

function ASCT.Metatables.SetMetatable(name, value)
    ASCT.Metatables[name] = value
end

function ASCT.Metatables.Exists(name)
    return ASCT.Metatables[name] ~= nil
end

function ASCT.Metatables.Delete(name)
    ASCT.Metatables[name] = nil
end

function ASCT.Metatables.List()
    local variables = {}
    for name, value in pairs(ASCT.Metatables) do
        if name ~= "SetMetatable" and name ~= "GetMetatable" and name ~= "Exists" and name ~= "Delete" and name ~= "List" then
            table.insert(variables, name)
        end
    end
    return variables
end

function ASCT.Metatables.Count()
    local count = 0
    for name, _ in pairs(ASCT.Metatables) do
        if name ~= "SetMetatable" and name ~= "GetMetatable" and name ~= "Exists" and name ~= "Delete" and name ~= "List" then
            count = count + 1
        end
    end
    return count
end

function ASCT.Metatables.PrintAll()
    for name, value in pairs(ASCT.Metatables) do
        if name ~= "SetMetatable" and name ~= "GetMetatable" and name ~= "Exists" and name ~= "Delete" and name ~= "List" and name ~= "Count" and name ~= "PrintAll" then
            print(name, value)
        end
    end
end