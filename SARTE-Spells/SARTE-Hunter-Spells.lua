local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableHunter = {--Hunter spells
--Beast Mastery
["Kill Command"] = "Kill Command",
["Bestial Wrath"] = "Bestial Wrath",
["Scare Beast"] = "Scare Beast",
["Intimidation"] = "Intimidation",
--Marksmanship
["Rapid Fire"] = "Rapid Fire",
["Multi-Shot"] = "Multi-Shot",
["Flare"] = "Flare",
["Concussive Shot"] = "Concussive Shot",
["Silencing Shot"] = "Silencing Shot",
["Arcane Shot"] = "Arcane Shot",
["Aimed Shot"] = "Aimed Shot",
["Scatter Shot"] = "Scatter Shot",
--Survial
["Misdirection"] = "Misdirection",
["Feign Death"] = "Feign Death",
["Disengage"] = "Disengage",
["Raptor Strike"] = "Raptor Strike",
["Mongoose Bite"] = "Mongoose Bite",
["Readiness"] = "Readiness",
["Deterrence"] = "Deterrence",
["Wyvern Sting"] = "Wyvern Sting",
["Counterattack"] = "Counterattack",
}
elseif isClassicWow then
SpellTableHunter = {--Hunter spells
--Beast Mastery
["Bestial Wrath"] = "Bestial Wrath",
["Scare Beast"] = "Scare Beast",
["Intimidation"] = "Intimidation",
--Marksmanship
["Rapid Fire"] = "Rapid Fire",
["Multi-Shot"] = "Multi-Shot",
["Flare"] = "Flare",
["Arcane Shot"] = "Arcane Shot",
["Concussive Shot"] = "Concussive Shot",
["Aimed Shot"] = "Aimed Shot",
["Scatter Shot"] = "Scatter Shot",
--Survial
["Feign Death"] = "Feign Death",
["Disengage"] = "Disengage",
["Raptor Strike"] = "Raptor Strike",
["Mongoose Bite"] = "Mongoose Bite",
["Deterrence"] = "Deterrence",
["Wyvern Sting"] = "Wyvern Sting",
["Counterattack"] = "Counterattack",
}
elseif isWrathWow then
SpellTableHunter = {--Hunter spells
--Beast Mastery
["Bestial Wrath"] = "Bestial Wrath",
["Scare Beast"] = "Scare Beast",
["Call Stabled Pet"] = "Call Stabled Pet",
["Intimidation"] = "Intimidation",
["Feed Pet"] = "Feed Pet",
["Master's Call"] = "Master's Call",
--Marksmanship
["Rapid Fire"] = "Master's Call",
["Multi-Shot"] = "Multi-Shot",
["Flare"] = "Flare",
["Arcane Shot"] = "Arcane Shot",
["Concussive Shot"] = "Concussive Shot",
["Chimera Shot"] = "Chimera Shot",
["Aimed Shot"] = "Aimed Shot",
["Distracting Shot"] = "Distracting Shot",
["Scatter Shot"] = "Scatter Shot",
["Kill Shot"] = "Kill Shot",
["Tranquilizing Shot"] = "Tranquilizing Shot",
["Viper Sting"] = "Viper Sting",
--Survial
["Feign Death"] = "Feign Death",
["Disengage"] = "Disengage",
["Raptor Strike"] = "Raptor Strike",
["Mongoose Bite"] = "Mongoose Bite",
["Deterrence"] = "Deterrence",
["Explosive Shot"] = "Explosive Shot",
["Wyvern Sting"] = "Wyvern Sting",
["Counterattack"] = "Counterattack",
["Black Arrow"] = "Black Arrow",
["Freezing Arrow"] = "Freezing Arrow",
}
elseif isRetailWow then
SpellTableHunter = {--Hunter Spells
--Beast Mastery
["Feed Pet"] = "Feed Pet",
["Tar Trap"] = "Tar Trap",
["Misdirection"] = "Misdirection",
["Tranquilizing Shot"] = "Tranquilizing Shot",
["Kill Shot"] = "Kill Shot",
["Mend Pet"] = "Mend Pet",
["Kill Command"] = "Kill Command",
["Bestial Wrath"] = "Bestial Wrath",
["Intimidation"] = "Intimidation",
["Counter Shot"] = "Counter Shot",
["Barbed Shot"] = "Barbed Shot",
["Aspect of the Wild"] = "Aspect of the Wild",
["Concussive Shot"] = "Concussive Shot",
["Barrage"] = "Barrage",
["Dire Beast"] = "Dire Beast",
["Chimaera Shot"] = "Chimaera Shot",
["A Murder of Crows"] = "A Murder of Crows",
["Stampede"] = "Stampede",
["Bloodshed"] = "Bloodshed",
["Binding Shot"] = "Binding Shot",
--Marksmanship
["Disengage"] = "Disengage",
["Play Dead"] = "Play Dead",
["Exhilaration"] = "Exhilaration",
["Wailing Arrow"] = "Wailing Arrow",
["Aimed Shot"] = "Aimed Shot",
["Trueshot"] = "Trueshot",
["Rapid Fire"] = "Rapid Fire",
["Bursting Shot"] = "Bursting Shot",
["Explosive Shot"] = "Explosive Shot",
["Double Tap"] = "Double Tap",
["Volley"] = "Volley",
--Survial
["Freezing Trap"] = "Freezing Trap",
["Aspect of the Turtle"] = "Aspect of the Turtle",
["Aspect of the Cheetah"] = "Aspect of the Cheetah",
["Aspect of the Chameleon"] = "Aspect of the Chameleon",
["Feign Death"] = "Feign Death",
["Flare"] = "Flare",
["Wildfire Bomb"] = "Wildfire Bomb",
["Coordinated Assault"] = "Coordinated Assault",
["Carve"] = "Carve",
["Muzzle"] = "Muzzle",
["Harpoon"] = "Harpoon",
["Aspect of the Eagle"] = "Aspect of the Eagle",
["Steel Trap"] = "Steel Trap",
["Chakrams"] = "Chakrams",
["Butchery"] = "Butchery",
["Flanking Strike"] = "Flanking Strike",
}
end