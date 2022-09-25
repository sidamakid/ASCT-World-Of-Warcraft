local isWrathWoW = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING)
if isWrathWoW then
local L = ASDC_LOCALE_TABLE
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("COMBAT_RATING_UPDATE")
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Haste Rating"]
    local HitChance = GetCombatRating(18)
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local currentStat = HitChance
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Haste Rating"],  currentStat)
        CombatText_AddMessage(msg, CombatText_StandardScroll, 0.1, 0.1, 1)
    end
    lastStat = currentStat
end)
end