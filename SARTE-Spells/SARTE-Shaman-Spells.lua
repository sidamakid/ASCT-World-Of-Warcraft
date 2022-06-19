local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305
local isClassicWow = select(4, GetBuildInfo()) == 11403

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
end
