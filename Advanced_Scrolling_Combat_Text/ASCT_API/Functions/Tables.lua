local Lua_API, ASCT = Lua_API_Table, ASCT_Table
---------------------------
--Merge New Values from cleanDefaults into savedVars
---------------------------
-- savedVars: table to put new defaults into
-- cleanDefaults: default values table
ASCT.Functions.Table["MergeInNewValues"] =  function (savedVars, cleanDefaults)
    for k, v in pairs(cleanDefaults) do
      if savedVars[k] == nil or type(savedVars[k]) ~= type(v) then -- changed this line so that it replaces the on/off bool with the new table
        if type(v) == "table" then
          savedVars[k] = CopyTable(v)
        else
          savedVars[k] = v
        end
      elseif type(v) == "table" then
        ASCT.Functions.Table["MergeInNewValues"](savedVars[k], v)
      end
    end
  end
  -- savedVars: table to put new defaults into
  -- cleanDefaults: default values table
---------------------------
--Delete Values in savedVars that don't exist in cleanDefaults
---------------------------
ASCT.Functions.Table["DeleteOldValues"] = function (cleanDefaults, savedVars)
  -- Work through each key in the default values table
  for k, v in pairs(savedVars) do
      -- If the key doesn't exist in cleanDefaults (ie. it's been removed)
      -- we remove it
      if cleanDefaults[k] == nil then
      savedVars[k] = nil
      -- Found a nested table for this key, go through that nested table to check
      -- all the keys exist compared to cleanDefaults, and that all the nested
      -- tables, etc. do too.
      elseif type(v) == "table" then
        ASCT.Functions.Table["DeleteOldValues"](cleanDefaults[k], v)
      end
  end
end
---------------------------
--Merges Tables Togther / Can also use Mixin
---------------------------
ASCT.Functions.Table["TableCombine"] = function (obj1, obj2)
  for key, val in pairs(obj2) do
    obj1[key] = val
  end
  return obj1
end
---------------------------
--Sort Varaibles in Table A to Z
---------------------------
ASCT.Functions.Table["PairsByKeys"] = function (a, t, g)
  a = {}
  for n in pairs(t) do Lua_API.Table["table.insert"](a, n) end
  Lua_API.Table["table.sort"](a, g)
  local i = 0      -- iterator variable
  local iter = function ()   -- iterator function
      i = i + 1
      if a[i] == nil then return nil
      else return a[i], t[a[i]]
      end
  end
  return iter
end
--Example: ASCT.Functions["PairsByKeys"](Table1, Table1(SubTable))
ASCT.Functions.Table["ipairsByKeys"] = function (t)
  -- Create an array of the keys in the table
  local keys = {}
  for k in pairs(t) do
      Lua_API.Table["table.insert"](keys, k)
  end

  -- Sort the keys
  Lua_API.Table["table.sort"](keys)

  -- Iterator function
  local i = 0
  local function iter()
      i = i + 1
      if keys[i] then
          return keys[i], t[keys[i]]
      end
  end

  return iter
end