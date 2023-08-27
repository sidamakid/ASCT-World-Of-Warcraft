local L_Function_Keys = Functions_For_ASDC_Table
-- savedVars: table to put new defaults into
-- cleanDefaults: default values table
L_Function_Keys["MergeInNewValues"] =  function (savedVars, cleanDefaults)
    for k, v in pairs(cleanDefaults) do
      if savedVars[k] == nil or type(savedVars[k]) ~= type(v) then -- changed this line so that it replaces the on/off bool with the new table
        if type(v) == "table" then
          savedVars[k] = CopyTable(v)
        else
          savedVars[k] = v
        end
      elseif type(v) == "table" then
        L_Function_Keys["MergeInNewValues"](savedVars[k], v)
      end
    end
  end
  -- savedVars: table to put new defaults into
  -- cleanDefaults: default values table
L_Function_Keys["DeleteOldValues"] = function (cleanDefaults, savedVars)
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
        L_Function_Keys["DeleteOldValues"](cleanDefaults[k], v)
      end
  end
end