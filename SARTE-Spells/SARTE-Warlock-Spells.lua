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
end