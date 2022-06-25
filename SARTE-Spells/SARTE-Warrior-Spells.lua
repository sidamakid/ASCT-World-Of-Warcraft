local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableWarrior = {--Warrior spells
--Arms
["Thunder Clap"] = "Thunder Clap",
["Charge"] = "Charge",
["Overpower"] = "Overpower",
["Retaliation"] = "Retaliation",
["Mocking Blow"] = "Mocking Blow",
["Death Wish"] = "Death Wish",
["Mortal Strike"] = "Mortal Strike",
--Fury
["Recklessness"] = "Recklessness",
["Intercept"] = "Intercept",
["Whirlwind"] = "Whirlwind",
["Berserker Rage"] = "Berserker Rage",
["Intimidating Shout"] = "Intimidating Shout",
["Challenging Shout"] = "Challenging Shout",
["Pummel"] = "Pummel",
["Sweeping Strikes"] = "Sweeping Strikes",
--Protection
["Spell Reflection"] = "Spell Reflection",
["Intervene"] = "Intervene",
["Shield Block"] = "Shield Block",
["Shield Wall"] = "Shield Wall",
["Disarm"] = "Disarm",
["Taunt"] = "Taunt",
["Bloodrage"] = "Bloodrage",
["Revenge"] = "Revenge",
["Shield Bash"] = "Shield Bash",
["Last Stand"] = "Last Stand",
["Concussion Blow"] = "Concussion Blow",
}
elseif isClassicWow then
SpellTableWarrior = {--Warrior spells
--Arms
["Thunder Clap"] = "Thunder Clap",
["Charge"] = "Charge",
["Overpower"] = "Overpower",
["Retaliation"] = "Retaliation",
["Mocking Blow"] = "Mocking Blow",
["Mortal Strike"] = "Mortal Strike",
--Fury
["Death Wish"] = "Death Wish",
["Recklessness"] = "Recklessness",
["Whirlwind"] = "Whirlwind",
["Intercept"] = "Intercept",
["Berserker Rage"] = "Berserker Rage",
["Intimidating Shout"] = "Intimidating Shout",
["Challenging Shout"] = "Challenging Shout",
["Pummel"] = "Pummel",
["Sweeping Strikes"] = "Sweeping Strikes",
["Bloodthirst"] = "Bloodthirst",
--Protection
["Shield Block"] = "Shield Block",
["Shield Wall"] = "Shield Wall",
["Disarm"] = "Disarm",
["Taunt"] = "Taunt",
["Bloodrage"] = "Bloodrage",
["Revenge"] = "Revenge",
["Shield Bash"] = "Shield Bash",
["Last Stand"] = "Last Stand",
["Concussion Blow"] = "Concussion Blow",
}
elseif isWrathWow then
SpellTableWarrior = {--Warrior spells
--Arms
["Thunder Clap"] = "Thunder Clap",
["Charge"] = "Charge",
["Overpower"] = "Overpower",
["Retaliation"] = "Retaliation",
["Mocking Blow"] = "Mocking Blow",
["Mortal Strike"] = "Mortal Strike",
["Heroic Throw"] = "Heroic Throw",
["Bladestorm"] = "Bladestorm",
["Shattering Throw"] = "Shattering Throw",
--Fury
["Recklessness"] = "Recklessness",
["Intercept"] = "Intercept",
["Whirlwind"] = "Whirlwind",
["Berserker Rage"] = "Berserker Rage",
["Intimidating Shout"] = "Intimidating Shout",
["Challenging Shout"] = "Challenging Shout",
["Pummel"] = "Pummel",
["Sweeping Strikes"] = "Sweeping Strikes",
["Death Wish"] = "Death Wish",
["Enraged Regeneration"] = "Enraged Regeneration",
["Heroic Fury"] = "Heroic Fury",
--Protection
["Spell Reflection"] = "Spell Reflection",
["Intervene"] = "Intervene",
["Shield Block"] = "Shield Block",
["Shield Wall"] = "Shield Wall",
["Disarm"] = "Disarm",
["Taunt"] = "Taunt",
["Bloodrage"] = "Bloodrage",
["Revenge"] = "Revenge",
["Shield Bash"] = "Shield Bash",
["Last Stand"] = "Last Stand",
["Concussion Blow"] = "Concussion Blow",
["Shockwave"] = "Shockwave",
}
end


