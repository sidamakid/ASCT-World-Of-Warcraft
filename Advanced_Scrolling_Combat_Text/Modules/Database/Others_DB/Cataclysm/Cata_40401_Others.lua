local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] and ASCT.Client.tocversion["is40401"] then
ASCT.Database.Spells["Others_Cataclysm"] = {
	["Advanced_Scrolling_Combat_Text_Stats"] = {
		["Armor"] = {StatEnable = false, Gains = false, Lost = false},
		["Dodge Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Agility"] = {StatEnable = false, Gains = false, Lost = false},
		["Attack Power"] = {StatEnable = false, Gains = false, Lost = false},
		["Strength"] = {StatEnable = false, Gains = false, Lost = false},
		["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
		["Spirit"] = {StatEnable = false, Gains = false, Lost = false},
		["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
		["Health"] = {StatEnable = false, Gains = false, Lost = false},
		["Hit Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Critical Strike Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Expertise Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Resilience Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Haste Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Parry Rating"] = {StatEnable = false, Gains = false, Lost = false},
		["Spell Power"] = {StatEnable = false, Gains = false, Lost = false},
		["Spell Penetration"] = {StatEnable = false, Gains = false, Lost = false},
		["Mastery"] = {StatEnable = false, Gains = false, Lost = false},
		--["Transmog"] = {StatEnable = false, Gains = false, Lost = false},
	},
	--["Advanced_Scrolling_Combat_Text_Miscellaneous"] = {
	["Advanced_Scrolling_Combat_Text_Leveling"] = {
		--["Fading DeBuffs"] = false,
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
		["Quest Progress"] = false,
	},
	["Advanced_Scrolling_Combat_Text_Resistance"] = {
		["Arcane Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Fire Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Frost Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Nature Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Shadow Resistance"] = {StatEnable = false, Gains = false, Lost = false},
	},
	["Advanced_Scrolling_Combat_Text_Auras"] = {
		["Fading DeBuffs"] = false,
	},
	--[[
    ["Advanced_Scrolling_Combat_Text_Settings"] = {
        ["IconEnable"] = false,
        ["NameEnable"] = false,
    },
    ]]
	["Trinkets"] = {
		["Trinket_1"] = {TrinketEnable = false, Name = false, Icon = false,},
		["Trinket_2"] = {TrinketEnable = false, Name = false, Icon = false,},
	},
	["Integer_Values"] = {
		Icon = 18,
		Debuff_time = 5,
	},
	--[[
	["Message_Selector"] = {
		["Ready!"] = false,
		["Is Ready!"] = false,
		["is now ready!"] = false,
	},
	]]
}
end