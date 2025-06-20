local Lua_API, ASCT = Lua_API_Table, ASCT_Table
local Client, Locale, Database, Frames, Scripts, API = ASCT.Client, ASCT.Locale, ASCT.Database, ASCT.Frames, ASCT.Scripts, ASCT.API
if Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] then
local callbacks = {}

local localizedNames = {}
local englishNames = {}
local englishToIcons = {}
local englishNamesIsKnown = {}
local englishNamesToDescription = {}
Locale.Spells["ASCT_LoadSpellNames"] = function ()
  local waiting = {}
  local left = 0
  for key, spellID in pairs(Database.Spells["ASCT_Locale"]) do
    if waiting[spellID] == nil then
      waiting[spellID] = true
      left = left + 1
    end
  end

  local loadingFrame = Frames.Miscellaneous["loadingFrame"]
  Scripts.Frame["OnEvent"](loadingFrame, function(self, eventName, spellID, success)
    if waiting[spellID] then
      waiting[spellID] = nil
      left = left - 1
    end
    if left <= 0 then
      Scripts.Frame["OnEvent"](loadingFrame, nil)
      for key, spellID in pairs(Database.Spells["ASCT_Locale"]) do
        local localeName, localeIcon = API.Documentation["C_Spell.GetSpellName"](spellID), API.Documentation["C_Spell.GetSpellTexture"](spellID)
        local SpellDescription = API.Documentation["C_Spell.GetSpellDescription"](spellID)
        localizedNames[localeName or ""] = key
        englishNames[key] = localeName
        englishToIcons[key] = localeIcon
        englishNamesToDescription[key] = SpellDescription
      end

      for _, func in ipairs(callbacks) do
        func()
      end
    end
  end)

  for key, spellID in pairs(Database.Spells["ASCT_Locale"]) do
    API.Documentation["C_Spell.RequestLoadSpellData"](spellID)
  end
end

Locale.Spells["ASCT_GetEnglishName"] = function(localized)
  return localizedNames[localized] or ""
end

Locale.Spells["ASCT_GetLocalizedName"] = function(english)
  return englishNames[english] or ""
end

Locale.Spells["ASCT_GetLocalizedIcon"] = function(english)
  return englishToIcons[english]
end

Locale.Spells["ASCT_GetLocalizedSpellDescription"] = function(english)
  return englishNamesToDescription[english]
end
---------------------------
--Callback For Localizng
---------------------------

Locale.Spells["ASCT_AddLocalizedCallback"] = function (func)
  table.insert(callbacks, func)
end

local frame = Frames.Miscellaneous["Initialize_Locale_Frame"]
local isInitialized = false
Scripts.Frame["OnEvent"](frame, function()
  if not isInitialized then
    Locale.Spells["ASCT_LoadSpellNames"]()
    isInitialized = true
  end
end)
end