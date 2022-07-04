local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableWarlock = {-- Warlock spells
--Affliction
["Curse of Doom"] = "Curse of Doom",
["Death Coil"] = "Death Coil",
["Howl of Terror"] = "Howl of Terror",
--Demonology
["Inferno"] = "Inferno",
["Soulshatter"] = "Soulshatter",
["Ritual of Doom"] = "Ritual of Doom",
["Ritual of Souls"] = "Ritual of Souls",
["Shadow Ward"] = "Shadow Ward",
["Fel Domination"] = "Fel Domination",
--Destruction
["Soul Fire"] = "Soul Fire",
["Shadowfury"] = "Shadowfury",
["Shadowburn"] = "Shadowburn",
["Conflagrate"] = "Conflagrate",
}
elseif isClassicWow then
SpellTableWarlock = {-- Warlock spells
--Affliction
["Amplify Curse"] = "Amplify Curse",
["Curse of Doom"] = "Curse of Doom",
["Death Coil"] = "Death Coil",
["Howl of Terror"] = "Howl of Terror",
--Demonology
["Inferno"] = "Inferno",
["Ritual of Doom"] = "Ritual of Doom",
["Shadow Ward"] = "Shadow Ward",
["Fel Domination"] = "Fel Domination",
--Destruction
["Soul Fire"] = "Soul Fire",
["Shadowburn"] = "Shadowburn",
["Conflagrate"] = "Conflagrate",
}
elseif isWrathWow then
SpellTableWarlock = {-- Warlock spells
--Affliction
["Curse of Doom"] = "Curse of Doom",
["Death Coil"] = "Death Coil",
["Howl of Terror"] = "Howl of Terror",
["Haunt"] = "Haunt",
--Demonology
["Inferno"] = "Inferno",
["Soulshatter"] = "Soulshatter",
["Ritual of Doom"] = "Ritual of Doom",
["Ritual of Souls"] = "Ritual of Souls",
["Shadow Ward"] = "Shadow Ward",
["Fel Domination"] = "Fel Domination",
["Challenging Howl"] = "Challenging Howl",
["Demonic Circle: Teleport"] = "Demonic Circle: Teleport",
["Demonic Empowerment"] = "Demonic Empowerment",
["Demon Charge"] = "Demon Charge",
["Immolation Aura"] = "Immolation Aura",
["Metamorphosis"] = "Metamorphosis",
["Ritual of Summoning"] = "Ritual of Summoning",
["Shadow Cleave"] = "Shadow Cleave",
--Destruction
["Shadowfury"] = "Shadowfury",
["Shadowburn"] = "Shadowburn",
["Conflagrate"] = "Conflagrate",
["Chaos Bolt"] = "Chaos Bolt",
}
elseif isRetailWow then
SpellTableWarlock = {-- Warlock spells
--Affliction
["Create Soulwell"] = "Create Soulwell",
["Unending Resolve"] = "Unending Resolve",
["Soulstone"] = "Soulstone",
["Ritual of Summoning"] = "Ritual of Summoning",
["Ritual of Doom"] = "Ritual of Doom",
["Haunt"] = "Haunt",
["Grimoire of Sacrifice"] = "Grimoire of Sacrifice",
["Dark Soul: Misery"] = "Dark Soul: Misery",
["Phantom Singularity"] = "Phantom Singularity",
["Summon Darkglare"] = "Summon Darkglare",
["Vile Taint"] = "Vile Taint",
--Demonology
["Demonic Gateway"] = "Demonic Gateway",
["Demonic Circle: Teleport"] = "Demonic Circle: Teleport",
["Fel Domination"] = "Fel Domination",
["Demonic Circle"] = "Demonic Circle",
["Summon Demonic Tyrant"] = "Summon Demonic Tyrant",
["Call Dreadstalkers"] = "Call Dreadstalkers",
["Power Siphon"] = "Power Siphon",
["Grimoire: Felguard"] = "Grimoire: Felguard",
["Summon Vilefiend"] = "Summon Vilefiend",
["Demonic Strength"] = "Demonic Strength",
["Bilescourge Bombers"] = "Bilescourge Bombers",
["Soul Strike"] = "Soul Strike",
--Destruction
["Shadowfury"] = "Shadowfury",
["Conflagrate"] = "Conflagrate",
["Havoc"] = "Havoc",
["Summon Infernal"] = "Summon Infernal",
["Shadowburn"] = "Shadowburn",
["Cataclysm"] = "Cataclysm",
["Dark Soul: Instability"] = "Dark Soul: Instability",
["Soul Fire"] = "Soul Fire",
["Channel Demonfire"] = "Channel Demonfire",
}
end