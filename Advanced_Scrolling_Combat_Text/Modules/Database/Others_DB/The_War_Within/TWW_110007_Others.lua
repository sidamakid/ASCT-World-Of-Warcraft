local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] and ASCT.Client.tocversion["is110007"] then
ASCT.Database.Spells["Others_TWW"] = {
	["Advanced_Scrolling_Combat_Text_Stats"] = {
        ["Armor"] = {StatEnable = false, Gains = false, Lost = false},
        ["Agility"] = {StatEnable = false, Gains = false, Lost = false},
        ["Strength"] = {StatEnable = false, Gains = false, Lost = false},
        ["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
        ["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
        ["Health"] = {StatEnable = false, Gains = false, Lost = false},
        --["Transmog"] = {StatEnable = false, Gains = false, Lost = false},
    },
    ["Advanced_Scrolling_Combat_Text_Leveling"] = {
        ["Experience Gains"] = false,
        ["Level up message"] = false,
        ["Skill Gained"] = false,
        ["Skill Up"] = false,
        ["Resource lost"] = false,
        ["Achievement Gains"] = false,
        ["Death Coordinates"] = false,
        ["Duel Requests"] = false,
        ["Sent Mail"] = false,
        ["Loot"] = false,
        ["Quest Progress"] = false,
    },
    ["Advanced_Scrolling_Combat_Text_Auras"] = {
        ["Fading DeBuffs"] = false,
    },
	["Trinkets"] = {
		["Trinket_1"] = {TrinketEnable = false, Name = false, Icon = false,},
		["Trinket_2"] = {TrinketEnable = false, Name = false, Icon = false,},
	},
	["Integer_Values"] = {
		["Icon"] = 18,
		["Debuff_time"] = 5,
        ["Minimum_Resource_Cost"] = 4,
	},
}
end