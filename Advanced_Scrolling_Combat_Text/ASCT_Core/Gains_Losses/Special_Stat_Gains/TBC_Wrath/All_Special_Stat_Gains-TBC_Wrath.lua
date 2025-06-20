local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Str_Int = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Str_Int
if Client.LE_EXPANSION_LEVEL["is_Tbc-Wrath_Wow"] then


local function CreateStatFrame(statType, frameName, combatRatingType, lastStat)
    local f = Frames.SARTE[frameName]
    Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
        Scripts.Frame["OnEvent"](f, function()
            local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][statType]
            local currentRating = API.Documentation["GetCombatRating"](Str_Int.CR[combatRatingType])
            if not (stats.StatEnable and API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])) then return end
            local currentStat = currentRating
            local diff = currentStat - lastStat
            if lastStat == -1 then
            elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
                local msg = string.format("%s%d %s (%d)", (diff > 0) and "+" or "", diff, L[statType], currentStat)
                Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
            end
            lastStat = currentStat
        end)
    end)
    return lastStat
end
local lastStatDefenseRating, lastStatBlockRating, lastStatArmorPenetration =
-1, -1, -1

lastStatDefenseRating, lastStatBlockRating, lastStatArmorPenetration =
CreateStatFrame("Defense Rating", "Defense_Frame", "CR_DEFENSE_SKILL", lastStatDefenseRating),
CreateStatFrame("Block Rating", "Block_Frame", "CR_BLOCK", lastStatBlockRating),
CreateStatFrame("Armor Penetration", "Armor_Pen_Frame", "CR_ARMOR_PENETRATION", lastStatArmorPenetration)
end