local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableDruid = {--Druid Spells
--Balance
["Innervate"] = "Innervate",
["Barkskin"] = "Barkskin",
["Hurricane"] = "Hurricane",
["Nature's Grasp"] = "Nature's Grasp",
["Force of Nature"] = "Force of Nature",
--Restoration
["Rebirth"] = "Rebirth",
["Tranquility"] = "Tranquility",
["Swiftmend"] = "Swiftmend",
["Nature's Swiftness"] = "Nature's Swiftness",
--Fearl
["Maim"] = "Maim",
["Bash"] = "Bash",
["Enrage"] = "Enrage",
["Prowl"] = "Prowl",
["Dash"] = "Dash",
["Challenging Roar"] = "Challenging Roar",
["Growl"] = "Growl",
["Cower"] = "Cower",
["Frenzied Regeneration"] = "Frenzied Regeneration",
["Tiger's Fury"] = "Tiger's Fury",
["Feral Charge"] = "Feral Charge",
["Faerie Fire (Feral)"] = "Faerie Fire (Feral)",
}
elseif isClassicWow then
SpellTableDruid = {--Druid Spells
--Balance
["Innervate"] = "Innervate",
["Barkskin"] = "Barkskin",
["Hurricane"] = "Hurricane",
["Nature's Grasp"] = "Nature's Grasp",
--Restoration
["Rebirth"] = "Rebirth",
["Tranquility"] = "Tranquility",
["Swiftmend"] = "Swiftmend",
["Nature's Swiftness"] = "Nature's Swiftness",
--Fearl
["Bash"] = "Bash",
["Enrage"] = "Enrage",
["Prowl"] = "Prowl",
["Dash"] = "Dash",
["Challenging Roar"] = "Challenging Roar",
["Growl"] = "Growl",
["Cower"] = "Cower",
["Frenzied Regeneration"] = "Frenzied Regeneration",
["Tiger's Fury"] = "Tiger's Fury",
["Feral Charge"] = "Feral Charge",
["Faerie Fire (Feral)"] = "Faerie Fire (Feral)",
}
elseif isWrathWow then
SpellTableDruid = {--Druid Spells
--Balance
["Innervate"] = "Innervate",
["Barkskin"] = "Barkskin",
["Hurricane"] = "Hurricane",
["Nature's Grasp"] = "Nature's Grasp",
["Force of Nature"] = "Force of Nature",
["Starfall"] = "Starfall",
["Typhoon"] = "Typhoon",
--Restoration
["Rebirth"] = "Rebirth",
["Tranquility"] = "Tranquility",
["Swiftmend"] = "Swiftmend",
["Nature's Swiftness"] = "Nature's Swiftness",
["Wild Growth"] = "Wild Growth",
--Fearl
["Maim"] = "Maim",
["Bash"] = "Bash",
["Enrage"] = "Enrage",
["Prowl"] = "Prowl",
["Dash"] = "Dash",
["Challenging Roar"] = "Challenging Roar",
["Growl"] = "Growl",
["Cower"] = "Cower",
["Frenzied Regeneration"] = "Frenzied Regeneration",
["Tiger's Fury"] = "Tiger's Fury",
["Feral Charge - Bear"] = "Feral Charge - Bear",
["Faerie Fire (Feral)"] = "Faerie Fire (Feral)",
["Berserk"] = "Berserk",
["Feral Charge - Cat"] = "Feral Charge - Cat",
["Survival Instincts"] = "Survival Instincts",
}
elseif isRetailWow then
SpellTableDruid = {--Druid Spells
--Balance
["Celestial Alignment"] = "Celestial Alignment",
["Typhoon"] = "Typhoon",
["Solar Beam"] = "Solar Beam",
["Fury of Elune"] = "Fury of Elune",
["Force of Nature"] = "Force of Nature",
["Incarnation: Chosen of Elune"] = "Incarnation: Chosen of Elune",
["New Moon"] = "New Moon",
["Barkskin"] = "Barkskin",
["Dreamwalk"] = "Dreamwalk",
--Restoration
["Wild Growth"] = "Wild Growth",
["Tranquility"] = "Tranquility",
["Swiftmend"] = "Swiftmend",
["Nature's Cure"] = "Nature's Cure",
["Ironbark"] = "Ironbark",
["Ursol's Vortex"] = "Ursol's Vortex",
["Nature's Swiftness"] = "Nature's Swiftness",
["Flourish"] = "Flourish",
["Incarnation: Tree of Life"] = "Incarnation: Tree of Life",
["Overgrowth"] = "Overgrowth",
["Innervate"] = "Innervate",
["Rebirth"] = "Rebirth",
["Charm Woodland Creature"] = "Charm Woodland Creature",
--Fearl
["Tiger's Fury"] = "Tiger's Fury",
["Maim"] = "Maim",
["Feral Frenzy"] = "Feral Frenzy",
["Brutal Slash"] = "Brutal Slash",
["Incarnation: King of the Jungle"] = "Incarnation: King of the Jungle",
["Remove Corruption"] = "Remove Corruption",
["Survival Instincts"] = "Survival Instincts",
["Dash"] = "Dash",
["Soothe"] = "Soothe",
["Mangle"] = "Mangle",
["Thrash"] = "Thrash",
["Prowl"] = "Prowl",
["Frenzied Regeneration"] = "Frenzied Regeneration",
["Incapacitating Roar"] = "Incapacitating Roar",
["Incarnation: Guardian of Ursoc"] = "Incarnation: Guardian of Ursoc",
["Pulverize"] = "Pulverize",
["Bristling Fur"] = "Bristling Fur",
["Berserk"] = "Berserk",
["Skull Bash"] = "Skull Bash",
["Growl"] = "Growl",
["Stampeding Roar"] = "Stampeding Roar",
}
end
