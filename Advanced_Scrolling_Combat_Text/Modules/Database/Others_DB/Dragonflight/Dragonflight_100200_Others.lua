local ASCT = ASCT_Table
local L_Database_Keys = Spell_Database_For_ASDC_Table
if ASCT.Client["isDragonFlightWow"] then
if ASCT.Client["is100200"] then
L_Database_Keys["Others_DF"] = {
	["Advanced_Scrolling_Combat_Text_Stats"] = {
        ["Armor"] = {StatEnable = false, Gains = false, Lost = false},
        ["Agility"] = {StatEnable = false, Gains = false, Lost = false},
        ["Strength"] = {StatEnable = false, Gains = false, Lost = false},
        ["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
        ["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
        ["Health"] = {StatEnable = false, Gains = false, Lost = false},
    },
    ["Advanced_Scrolling_Combat_Text_Leveling"] = {
        ["Experience Gains"] = false,
        ["Level up message"] = false,
        ["Skill Gained"] = false,
        ["Skill Up"] = false,
        ["Resource lost"] = false,
        ["Achievement Gains"] = false,
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
end