local ASCT = ASCT_Table
local callbacks = {}

local localizedNames = {}
local englishNames = {}
local englishToIcons = {}
local englishNamesIsKnown = {}
ASCT.Locale.Spells["ASCT_LoadSpellNames"] = function ()
  local waiting = {}
  local left = 0
  for key, spellID in pairs(ASCT.Database.Spells["ASCT_Locale"]) do
    if waiting[spellID] == nil then
      waiting[spellID] = true
      left = left + 1
    end
  end

  local loadingFrame = ASCT.Frames.Miscellaneous["loadingFrame"]
  ASCT.Scripts.Frame["OnEvent"](loadingFrame, function(self, eventName, spellID, success)
    if waiting[spellID] then
      waiting[spellID] = nil
      left = left - 1
    end
    if left <= 0 then
      ASCT.Scripts.Frame["OnEvent"](loadingFrame, nil)
      for key, spellID in pairs(ASCT.Database.Spells["ASCT_Locale"]) do
        local localeName, _, icon = ASCT.API.Documentation["GetSpellInfo"](spellID)
        local IsSpellKnwon = ASCT.API.Documentation["GetSpellInfo"](localeName) ~= nil
        localizedNames[localeName or ""] = key
        englishNames[key] = localeName
        englishToIcons[key] = icon
        englishNamesIsKnown[key] = IsSpellKnwon
      end

      for _, func in ipairs(callbacks) do
        func()
      end
    end
  end)

  for key, spellID in pairs(ASCT.Database.Spells["ASCT_Locale"]) do
    ASCT.API.Documentation["C_Spell.RequestLoadSpellData"](spellID)
  end
end

ASCT.Locale.Spells["ASCT_GetEnglishName"] = function(localized)
  return localizedNames[localized] or ""
end

ASCT.Locale.Spells["ASCT_GetLocalizedName"] = function(english)
  return englishNames[english] or ""
end

ASCT.Locale.Spells["ASCT_GetLocalizedIcon"] = function(english)
  return englishToIcons[english]
end

ASCT.Locale.Spells["ASCT_GetLocalizedISpellKnown"] = function(english)
  return englishNamesIsKnown[english]
end
---------------------------
--Callback For Localizng
---------------------------

ASCT.Locale.Spells["ASCT_AddLocalizedCallback"] = function (func)
  table.insert(callbacks, func)
end

local frame = ASCT.Frames.Miscellaneous["Initialize_Locale_Frame"]
local isInitialized = false
ASCT.Scripts.Frame["OnEvent"](frame, function()
  if not isInitialized then
    ASCT.Locale.Spells["ASCT_LoadSpellNames"]()
    isInitialized = true
  end
end)
