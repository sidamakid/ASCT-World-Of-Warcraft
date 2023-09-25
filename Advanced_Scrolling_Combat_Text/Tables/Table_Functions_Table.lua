local function defaultFunc(L_Table_Functions, key)
-- If this function was called, we have no localization for this key.
-- We could complain loudly to allow localizers to see the error of their ways, but, for now, just return the key as its own localization. This allows you to avoid writing the default localization out explicitly.
return key;
end
Table_Functions_For_ASCT = setmetatable({}, {__index=defaultFunc});
--local L_Table_Functions = Table_Functions_For_ASCT