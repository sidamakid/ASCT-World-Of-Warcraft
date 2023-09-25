local L_ASCT_Locale_Spells, L_Database_Keys = ASCT_Spell_Locale_Table, Spell_Database_For_ASDC_Table
local callbacks = {}

local localizedNames = {}
local englishNames = {}
local englishToIcons = {}
local englishNamesIsKnown = {}
L_ASCT_Locale_Spells["ASCT_LoadSpellNames"] = function ()
  local waiting = {}
  local left = 0
  for key, spellID in pairs(L_Database_Keys["ASCT_Locale"]) do
    if waiting[spellID] == nil then
      waiting[spellID] = true
      left = left + 1
    end
  end

  local loadingFrame = CreateFrame("Frame")
  loadingFrame:RegisterEvent("SPELL_DATA_LOAD_RESULT")
  loadingFrame:SetScript("OnEvent", function(self, eventName, spellID, success)
    if waiting[spellID] then
      waiting[spellID] = nil
      left = left - 1
    end
    if left <= 0 then
      loadingFrame:SetScript("OnEvent", nil)
      for key, spellID in pairs(L_Database_Keys["ASCT_Locale"]) do
        local localeName, _, icon = GetSpellInfo(spellID)
        local IsSpellKnwon = GetSpellInfo(localeName) ~= nil
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

  for key, spellID in pairs(L_Database_Keys["ASCT_Locale"]) do
    C_Spell.RequestLoadSpellData(spellID)
  end
end

L_ASCT_Locale_Spells["ASCT_GetEnglishName"] = function(localized)
  return localizedNames[localized] or ""
end

L_ASCT_Locale_Spells["ASCT_GetLocalizedName"] = function (english)
  return englishNames[english] or ""
end

L_ASCT_Locale_Spells["ASCT_GetLocalizedIcon"] = function (english)
  return englishToIcons[english]
end

L_ASCT_Locale_Spells["ASCT_GetLocalizedISpellKnown"] = function (english)
  return englishNamesIsKnown[english]
end

---------------------------
--Callback For Localizng
---------------------------
L_ASCT_Locale_Spells["ASCT_AddLocalizedCallback"] = function (func)
  table.insert(callbacks, func)
end

local frame = CreateFrame("frame")
local isInitialized = false
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function()
  if not isInitialized then
    L_ASCT_Locale_Spells["ASCT_LoadSpellNames"]()
    isInitialized = true
  end
end)
