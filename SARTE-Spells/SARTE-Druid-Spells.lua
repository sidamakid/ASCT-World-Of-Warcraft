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
end
