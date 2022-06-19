local callbacks = {}

local localizedNames = {}
local englishNames = {}
function SDT_LoadSpellNames()
  local englishToSpellID = {--SARTE-Localizing-Classic
      --Rogue
     ["Kidney Shot"] = 408,
     ["Cold Blood"] = 14177,
     ["Sprint"] = 2983,
     ["Kick"] = 1766,
     ["Evasion"] = 5277,
     ["Gouge"] = 1776,
     ["Feint"] = 1966,
     ["Blade Flurry"] = 13877,
     ["Adrenaline Rush"] = 13750,
     ["Riposte"] = 14251,
     ["Blind"] = 2094,
     ["Stealth"] = 1784,
     ["Vanish"] = 1856,
     ["Distract"] = 1725,
     ["Ghostly Strike"] = 14278,
     ["Preparation"] = 14185,--Prepartion
     ["Premeditation"] = 14183,
     ["Cloak of Shadows"] = 31224,
     ["Dismantle"] = 51722,
     ["Killing Spree"] = 51690,
     ["Shadow Dance"] = 51713,
     ["Shadowstep"] = 36554,
     ["Tricks of the Trade"] = 57934,
     --Priest
     ["Power Word: Shield"] = 17,
     ["Elune's Grace"] = 2651,
     ["Feedback"] = 13896,
     ["Power Infusion"] = 10060,
     ["Inner Focus"] = 14751,
     ["Fear Ward"] = 6346,
     ["Desperate Prayer"] = 13908,
     ["Vampiric Embrace"] = 15286,
     ["Lightwell"] = 724,
     ["Devouring Plague"] = 2944,
     ["Mind Blast"] = 8092,
     ["Fade"] = 586,
     ["Psychic Scream"] = 8122,
     ["Silence"] = 15487,
     --Warrior
     ["Retaliation"] = 20230,
     ["Overpower"] = 7384,
     ["Charge"] = 100,
     ["Thunder Clap"] = 6343,
     ["Mocking Blow"] = 694,
     ["Mortal Strike"] = 12294,
     ["Challenging Shout"] = 1161,
     ["Sweeping Strikes"] = 12292,
     ["Pummel"] = 6552,
     ["Whirlwind"] = 1680,
     ["Recklessness"] = 1719,
     ["Berserker Rage"] = 18499,
     ["Intimidating Shout"] = 5246,
     ["Intercept"] = 20252,
     ["Bloodthirst"] = 23881,
     ["Death Wish"] = 12328,
     ["Spell Reflection"] = 23920,
     ["Intervene"] = 3411,
     ["Bloodrage"] = 2687,
     ["Taunt"] = 355,
     ["Shield Block"] = 2565,
     ["Shield Wall"] = 871,
     ["Disarm"] = 676,
     ["Shield Bash"] = 72,
     ["Revenge"] = 6572,
     ["Shield Slam"] = 23922,
     ["Last Stand"] = 12975,
     ["Concussion Blow"] = 12809,
     --Warlock
     ["Curse of Doom"] = 603,
     ["Death Coil"] = 6789,
     ["Howl of Terror"] = 5484,
     ["Amplify Curse"] = 18288,
     ["Shadow Ward"] = 6229, --Shadow Ward
     ["Ritual of Doom"] = 18540, --Ritual of Doom
     ["Inferno"] = 1122,
     ["Fel Domination"] = 18708,
     ["Soul Fire"] = 6353, --Soul Fire
     ["Conflagrate"] = 17962,
     ["Shadowburn"] = 17877, --Shadowburn
     --Druid
     ["Barkskin"] = 22812,
     ["Hurricane"] = 16914,
     ["Nature's Grasp"] = 16689,
     ["Growl"] = 6795,
     ["Frenzied Regeneration"] = 22842,
     ["Bash"] = 8983,
     ["Dash"] = 1850,
     ["Enrage"] = 5229,
     ["Challenging Roar"] = 5209,
     ["Prowl"] = 5215,
     ["Tiger's Fury"] = 5217,
     ["Cower"] = 8998,
     ["Faerie Fire (Feral)"] = 16857,
     ["Feral Charge"] = 16979,
     ["Innervate"] = 29166,
     ["Tranquility"] = 740,
     ["Rebirth"] = 20484,
     ["Swiftmend"] = 18562,
     --Mage
     ["Blink"] = 1953,
     ["Counterspell"] = 2139, --Counter Spell
     ["Evocation"] = 12051,
     ["Arcane Power"] = 12042, --Arcane Power
     ["Presence of Mind"] = 12043, --Presence of Mind
     ["Fire Blast"] = 2136,
     ["Fire Ward"] = 543,
     ["Combustion"] = 11129,
     ["Frost Nova"] = 122,
     ["Cone of Cold"] = 120,
     ["Frost Ward"] = 6143,
     ["Ice Barrier"] = 11426,
     ["Ice Block"] = 11958,
     ["Cold Snap"] = 12472,
     --Shaman
     ["Elemental Mastery"] = 16166,
     ["Chain Lightning"] = 421,
     ["Earthbind Totem"] = 2484,
     ["Stoneclaw Totem"] = 5730,
     ["Fire Nova Totem"] = 1535,
     --Shocks
     ["Earth Shock"] = 8042,
     ["Flame Shock"] = 8050,
     ["Frost Shock"] = 8056,
     --Shaman-Countined
     ["Astral Recall"] = 556,
     ["Grounding Totem"] = 8177,
     ["Stormstrike"] = 17364,
     ["Mana Tide Totem"] = 16190,
     --Hunter
     ["Scare Beast"] = 1513,
     ["Intimidation"] = 19577,
     ["Bestial Wrath"] = 19574,
     ["Distracting Shot"] = 20736,
     ["Multi-Shot"] = 2643,
     ["Rapid Fire"] = 3045,
     ["Concussive Shot"] = 5116,
     ["Flare"] = 1543,
     ["Volley"] = 1510,
     ["Scatter Shot"] = 19503,
     ["Arcane Shot"] = 3044,
     ["Aimed Shot"] = 19434,
     --Traps
     ["Freezing Trap"] = 1499,
     ["Explosive Trap"] = 13813,
     ["Frost Trap"] = 13809,
     ["Immolation Trap"] = 13795,
     --Hunter-Countined
     ["Feign Death"] = 5384,
     ["Disengage"] = 781,
     ["Mongoose Bite"] = 1495,
     ["Raptor Strike"] = 2973,
     ["Counterattack"] = 19306,
     ["Wyvern Sting"] = 19386,
     ["Deterrence"] = 19263,
     --Paladin
     ["Exorcism"] = 879,
     ["Hammer of Wrath"] = 24275,
     ["Holy Wrath"] = 2812,
     ["Lay on Hands"] = 633,
     ["Consecration"] = 26573,
     ["Holy Shock"] = 20473,
     ["Holy Shield"] = 20925,
     ["Turn Evil"] = 10326,
     ["Turn Undead"] = 2878,
     ["Divine Intervention"] = 19752,
     ["Divine Shield"] = 642,
     ["Hammer of Justice"] = 853,
     ["Blessing of Freedom"] = 1044,
     ["Blessing of Protection"] = 1022,
     ["Blessing of Sacrifice"] = 6940,
     ["Divine Protection"] = 498,
     ["Repentance"] = 20066,
     ["Judgement"] = 20271,
     ["Avenging Wrath"] = 31884,
      --Portals
     ["Stormwind"] = 10059,
     ["Darnassus"] = 11419,
     ["Orgrimmar"] = 11417,
     ["Thunder Bluff"] = 11420,
     ["Undercity"] = 11418,
     ["Ironforge"] = 11416,
     --Shared-spell-Names
     ["Nature's Swiftness"] = 17116 or 16188,
     --Racials
     ["Gift of the Naaru"] = 28880 or 59542 or 59543 or 59544 or 59545 or 59547 or 59548,
     ["Escape Artist"] = 20589,
     ["Blood Fury"] = 20572 or 33697 or 33702,
     ["Cannibalize"] = 20577,
     ["Will of the Forsaken"] = 7744,
     ["Berserking"] = 26297 or 26296 or 20554,
     ["War Stomp"] = 20549,
     ["Every Man for Himself"] = 59752,
     ["Perception"] = 20600,
     ["Shadowmeld"] = 58984 or 20580,
     ["Stoneform"] = 20594,
     ["Arcane Torrent"] = 50613 or 28730 or 25046,
     ["Mana Tap"] = 28734,
  }
  local waiting = {}
  local left = 0
  for key, spellID in pairs(englishToSpellID) do
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
      for key, spellID in pairs(englishToSpellID) do
        local localeName = GetSpellInfo(spellID)
        localizedNames[localeName or ""] = key
        englishNames[key] = localeName
      end

      for _, func in ipairs(callbacks) do
        func()
      end
    end
  end)

  for key, spellID in pairs(englishToSpellID) do
    C_Spell.RequestLoadSpellData(spellID)
  end
end

function SDT_GetEnglishName(localized)
   return localizedNames[localized] or ""
end

function SDT_GetLocalizedName(english)
   return englishNames[english] or ""
end

function SDT_AddLocalizedCallback(func)
  table.insert(callbacks, func)
end

local frame = CreateFrame("frame")
local isInitialized = false
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function()
  if not isInitialized then
    SDT_LoadSpellNames()
    isInitialized = true
  end
end)
