local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableWarrior = {--Warrior Spells
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
SpellTableWarrior = {--Warrior Spells
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
SpellTableWarrior = {--Warrior Spells
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
elseif isRetailWow then
SpellTableWarrior = {--Warrior Spells
--Arms
["Colossus Smash"] = "Colossus Smash",
["Die by the Sword"] = "Die by the Sword",
["Bladestorm"] = "Bladestorm",
["Mortal Strike"] = "Mortal Strike",
["Overpower"] = "Overpower",
["Sweeping Strikes"] = "Sweeping Strikes",
["Defensive Stance"] = "Defensive Stance",
["Warbreaker"] = "Warbreaker",
["Cleave"] = "Cleave",
["Deadly Calm"] = "Deadly Calm",
["Skullsplitter"] = "Skullsplitter",
["Charge"] = "Charge",
["Execute"] = "Execute",
["Shield Slam"] = "Shield Slam",
["Shattering Throw"] = "Shattering Throw",
["Ignore Pain"] = "Ignore Pain",
--Fury
["Piercing Howl"] = "Piercing Howl",
["Impending Victory"] = "Impending Victory",
["Recklessness"] = "Recklessness",
["Bloodthirst"] = "Bloodthirst",
["Enraged Regeneration"] = "Enraged Regeneration",
["Raging Blow"] = "Raging Blow",
["Siegebreaker"] = "Siegebreaker",
["Onslaught"] = "Onslaught",
["Heroic Throw"] = "Heroic Throw",
["Berserker Rage"] = "Berserker Rage",
["Battle Shout"] = "Battle Shout",
["Intervene"] = "Intervene",
--Protection
["Avatar"] = "Avatar",
["Dragon Roar"] = "Dragon Roar",
["Demoralizing Shout"] = "Demoralizing Shout",
["Shockwave"] = "Shockwave",
["Shield Wall"] = "Shield Wall",
["Last Stand"] = "Last Stand",
["Ravager"] = "Ravager",
["Challenging Shout"] = "Challenging Shout",
["Storm Bolt"] = "Storm Bolt",
["Rallying Cry"] = "Rallying Cry",
["Heroic Leap"] = "Heroic Leap",
["Spell Reflection"] = "Spell Reflection",
["Intimidating Shout"] = "Intimidating Shout",
["Shield Block"] = "Shield Block",
["Taunt"] = "Taunt",
["Pummel"] = "Pummel",
}
end


