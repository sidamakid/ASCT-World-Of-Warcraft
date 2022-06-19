local isRetailWow = select(4, GetBuildInfo()) > 30305
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305
local isClassicWow = select(4, GetBuildInfo()) == 11403


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
end