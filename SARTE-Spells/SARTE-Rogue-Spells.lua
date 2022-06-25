local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)


if isWrathWow then
SpellTableRogue = { --Rogue spells
--Assassination
["Kidney Shot"] = "Kideny Shot",
["Cold Blood"] = "Cold Blood",
--Combat
["Evasion"] = "Evasion",
["Sprint"] = "Sprint",
["Kick"] = "Kick",
["Feint"] = "Feint",
["Gouge"] = "Gouge",
["Riposte"] = "Riposte",
["Blade Flurry"] = "Blade Flurry",
["Adrenaline Rush"] = "Adrenaline Rush",
["Dismantle"] = "Dismantle",
["Killing Spree"] = "Killing Spree",
--Subtlety
["Stealth"] = "Stealth",
["Vanish"] = "Vanish",
["Ghostly Strike"] = "Ghostly Strike",
["Preparation"] = "Preparation",
["Premeditation"] = "Premeditation",
["Distract"] = "Distract",
["Blind"] = "Blind",
["Cloak of Shadows"] = "Cloak of Shadows",
["Tricks of the Trade"] = "Tricks of the Trade",
["Shadow Dance"] = "Shadow Dance",
}
elseif isTbcWow then
SpellTableRogue = { --Rogue spells
--Assassination
["Kidney Shot"] = "Kideny Shot",
["Cold Blood"] = "Cold Blood",
--Combat
["Evasion"] = "Evasion",
["Sprint"] = "Sprint",
["Kick"] = "Kick",
["Feint"] = "Feint",
["Gouge"] = "Gouge",
["Riposte"] = "Riposte",
["Blade Flurry"] = "Blade Flurry",
["Adrenaline Rush"] = "Adrenaline Rush",
--Subtlety
["Stealth"] = "Stealth",
["Vanish"] = "Vanish",
["Ghostly Strike"] = "Ghostly Strike",
["Preparation"] = "Preparation",
["Premeditation"] = "Premeditation",
["Distract"] = "Distract",
["Blind"] = "Blind",
["Cloak of Shadows"] = "Cloak of Shadows",
}
elseif isClassicWow then
SpellTableRogue = { --Rogue spells
--Assassination
["Kidney Shot"] = "Kideny Shot",
["Cold Blood"] = "Cold Blood",
--Combat
["Evasion"] = "Evasion",
["Sprint"] = "Sprint",
["Kick"] = "Kick",
["Feint"] = "Feint",
["Gouge"] = "Gouge",
["Riposte"] = "Riposte",
["Blade Flurry"] = "Blade Flurry",
["Adrenaline Rush"] = "Adrenaline Rush",
--Subtlety
["Stealth"] = "Stealth",
["Vanish"] = "Vanish",
["Ghostly Strike"] = "Ghostly Strike",
["Preparation"] = "Preparation",
["Premeditation"] = "Premeditation",
["Distract"] = "Distract",
["Blind"] = "Blind",
}
elseif isRetailWow then
SpellTableRogue = { --Rogue spells
--All-Specs
["Blind"] = "Blind",
["Cloak of Shadows"] = "Cloak of Shadows",
["Vanish"] = "Vanish",
["Stealth"] = "Stealth",
["Shroud of Concealment"] = "Shroud of Concealment",
["Evasion"] = "Evasion",
["Kidney Shot"] = "Kidney Shot",
["Shiv"] = "Shiv",
["Feint"] = "Feint",
["Kick"] = "Kick",
["Crimson Vial"] = "Crimson Vial",
["Distract"] = "Distract",
["Sprint"] = "Sprint",
--Assassination
["Vendetta"] = "Vendetta",
["Garrote"] = "Garrote",
--Outlaw
["Adrenaline Rush"] = "Adrenaline Rush",
["Blade Flurry"] = "Blade Flurry",
["Roll the Bones"] = "Roll the Bones",
["Between the Eyes"] = "Between the Eyes",
["Gouge"] = "Gouge",
["Grappling Hook"] = "Grappling Hook",
["Ghostly Strike"] = "Ghostly Strike",
["Blade Rush"] = "Blade Rush",
["Killing Spree"] = "Killing Spree",
--Subtlety
["Shadow Dance"] = "Shadow Dance",
["Shadow Blades"] = "Shadow Blades",
["Symbols of Death"] = "Symbols of Death",
["Shuriken Tornado"] = "Shuriken Tornado",
["Secret Technique"] = "Secret Technique",
--Shared-Spec-Spells
["Shadowstep"] = "Shadowstep",
}
end