local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableShaman = {--Shaman Spells
--Elemental
["Fire Elemental Totem"] = "Fire Elemental Totem",
["Chain Lightning"] = "Chain Lightning",
["Earthbind Totem"] = "Earthbind Totem",
["Fire Nova Totem"] = "Fire Nova Totem",
["Stoneclaw Totem"] = "Stoneclaw Totem",
["Elemental Mastery"] = "Elemental Mastery",
--Enhancement
["Grounding Totem"] = "Grounding Totem",
["Earth Elemental Totem"] = "Earth Elemental Totem",
["Stormstrike"] = "Stormstrike",
["Astral Recall"] = "Astral Recall",
["Shamanistic Rage"] = "Shamanistic Rage",
--Restoration_Shaman
["Mana Tide Totem"] = "Mana Tide Totem",
["Nature's Swiftness"] = "Nature's Swiftness",
}
elseif isClassicWow then
SpellTableShaman = {--Shaman Spells
--Elemental
["Chain Lightning"] = "Chain Lightning",
["Earthbind Totem"] = "Earthbind Totem",
["Fire Nova Totem"] = "Fire Nova Totem",
["Stoneclaw Totem"] = "Stoneclaw Totem",
["Elemental Mastery"] = "Elemental Mastery",
--Enhancement
["Grounding Totem"] = "Grounding Totem",
["Astral Recall"] = "Astral Recall",
["Stormstrike"] = "Stormstrike",
--Restoration_Shaman
["Mana Tide Totem"] = "Mana Tide Totem",
["Nature's Swiftness"] = "Nature's Swiftness",
}
elseif isWrathWow then
SpellTableShaman = {--Shaman Spells
--Elemental
["Fire Elemental Totem"] = "Fire Elemental Totem",
["Chain Lightning"] = "Chain Lightning",
["Earthbind Totem"] = "Earthbind Totem",
["Fire Nova Totem"] = "Fire Nova Totem",
["Fire Nova"] = "Fire Nova",
["Lava Burst"] = "Lava Burst",
["Hex"] = "Hex",
["Thunderstorm"] = "Thunderstorm",
["Stoneclaw Totem"] = "Stoneclaw Totem",
["Elemental Mastery"] = "Elemental Mastery",
--Enhancement
["Grounding Totem"] = "Grounding Totem",
["Earth Elemental Totem"] = "Earth Elemental Totem",
["Astral Recall"] = "Astral Recall",
["Lava Lash"] = "Lava Lash",
["Feral Spirit"] = "Feral Spirit",
["Stormstrike"] = "Stormstrike",
["Shamanistic Rage"] = "Shamanistic Rage",
--Restoration_Shaman
["Mana Tide Totem"] = "Mana Tide Totem",
["Riptide"] = "Riptide",
["Nature's Swiftness"] = "Nature's Swiftness",
["Reincarnation"] = "Reincarnation",
["Tidal Force"] = "Tidal Force",
}
elseif isRetailWow then
SpellTableShaman = {--Shaman Spells
--All-Specs
["Hex"] = "Hex",
["Healing Stream Totem"] = "Healing Stream Totem",
["Earth Elemental"] = "Earth Elemental",
["Tremor Totem"] = "Tremor Totem",
["Wind Shear"] = "Wind Shear",
["Flame Shock"] = "Flame Shock",
["Capacitor Totem"] = "Capacitor Totem",
["Astral Shift"] = "Astral Shift",
["Earthbind Totem"] = "Earthbind Totem",
["Astral Recall"] = "Astral Recall",
["Primal Strike"] = "Primal Strike",
--Elemental
["Fire Elemental"] = "Fire Elemental",
["Lava Burst"] = "Lava Burst",
["Thunderstorm"] = "Thunderstorm",
["Storm Elemental"] = "Storm Elemental",
["Liquid Magma Totem"] = "Liquid Magma Totem",
["Stormkeeper"] = "Stormkeeper",
["Elemental Blast"] = "Elemental Blast",
["Echoing Shock"] = "Echoing Shock",
["Ancestral Guidance"] = "Ancestral Guidance",
["Icefury"] = "Icefury",
["Static Discharge"] = "Static Discharge",
--Enhancement
["Feral Spirit"] = "Feral Spirit",
["Lava Lash"] = "Lava Lash",
["Stormstrike"] = "Stormstrike",
["Crash Lightning"] = "Crash Lightning",
["Spirit Walk"] = "Spirit Walk",
["Feral Lunge"] = "Feral Lunge",
["Earthen Spike"] = "Earthen Spike",
["Sundering"] = "Sundering",
["Fire Nova"] = "Fire Nova",
["Ice Strike"] = "Ice Strike",
--Restoration_Shaman
["Cleanse Spirit"] = "Cleanse Spirit",
["Spiritwalker's Grace"] = "Spiritwalker's Grace",
["Ascendance"] = "Ascendance",
["Healing Tide Totem"] = "Healing Tide Totem",
["Riptide"] = "Riptide",
["Spirit Link Totem"] = "Spirit Link Totem",
["Healing Rain"] = "Healing Rain",
["Purify Spirit"] = "Purify Spirit",
["Mana Tide Totem"] = "Mana Tide Totem",
["Cloudburst Totem"] = "Cloudburst Totem",
["Earthen Wall Totem"] = "Earthen Wall Totem",
["Earthgrab Totem"] = "Earthgrab Totem",
["Wellspring"] = "Wellspring",
["Downpour"] = "Downpour",
["Surge of Earth"] = "Surge of Earth",
}
end
