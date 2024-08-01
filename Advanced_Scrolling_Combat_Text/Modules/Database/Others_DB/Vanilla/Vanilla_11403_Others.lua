local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] and ASCT.Client.tocversion["is11403"] then
ASCT.Database.Spells["Others_Vanilla"] = {
    ["Advanced_Scrolling_Combat_Text_Stats"] = {
        ["Armor"] = {StatEnable = false, Gains = false, Lost = false},
        ["Agility"] = {StatEnable = false, Gains = false, Lost = false},
        ["Attack Power"] = {StatEnable = false, Gains = false, Lost = false},
        ["Strength"] = {StatEnable = false, Gains = false, Lost = false},
        ["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
        ["Spirit"] = {StatEnable = false, Gains = false, Lost = false},
        ["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
        ["Health"] = {StatEnable = false, Gains = false, Lost = false},
        ["Shadow Resistance"] = {StatEnable = false, Gains = false, Lost = false},
        ["Arcane Resistance"] = {StatEnable = false, Gains = false, Lost = false},
        ["Frost Resistance"] = {StatEnable = false, Gains = false, Lost = false},
        ["Fire Resistance"] = {StatEnable = false, Gains = false, Lost = false},
        ["Nature Resistance"] = {StatEnable = false, Gains = false, Lost = false},
    },
    ["Advanced_Scrolling_Combat_Text_Leveling"] = {
        ["Experience Gains"] = false,
        ["Level up message"] = false,
        ["Skill Gained"] = false,
        ["Skill Up"] = false,
        ["Resource lost"] = false,
        ["Death Quadrants"] = false,
        ["Duel Requests"] = false,
        ["Sent Mail"] = false,
        ["Loot"] = false,
    },
    ["Advanced_Scrolling_Combat_Text_Auras"] = {
        ["Fading DeBuffs"] = false,
    },
	["Trinkets"] = {
		["Trinket_1"] = {TrinketEnable = false, Name = false, Icon = false,},
		["Trinket_2"] = {TrinketEnable = false, Name = false, Icon = false,},
	},
	["Integer_Values"] = {
		Icon = 18,
		Debuff_time = 5,
	},
}
end