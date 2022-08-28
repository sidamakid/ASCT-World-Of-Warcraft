local addonName, ASCT_Locale = ...;
local callbacks = {}

local localizedNames = {}
local englishNames = {}
local englishToIcons = {}
local englishNamesIsKnown = {}
function ASCT_LoadSpellNames()
  local waiting = {}
  local left = 0
  for key, spellID in pairs(ASCT_Locale.ASCT_Locale) do
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
      for key, spellID in pairs(ASCT_Locale.ASCT_Locale) do
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

  for key, spellID in pairs(ASCT_Locale.ASCT_Locale) do
    C_Spell.RequestLoadSpellData(spellID)
  end
end

function ASCT_GetEnglishName(localized)
   return localizedNames[localized] or ""
end

function ASCT_GetLocalizedName(english)
   return englishNames[english] or ""
end

function ASCT_GetLocalizedIcon(english)
  return englishToIcons[english]
end

function ASCT_GetLocalizedISpellKnown(english)
  return englishNamesIsKnown[english]
end
---------------------------
--Callback For Localizng
---------------------------
function ASCT_AddLocalizedCallback(func)
  table.insert(callbacks, func)
end


local frame = CreateFrame("frame")
local isInitialized = false
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function()
  if not isInitialized then
    ASCT_LoadSpellNames()
    isInitialized = true
  end
end)
