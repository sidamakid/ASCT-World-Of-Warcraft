local ASCT = ASCT_Table
---------------------------
--ActiveSeason
---------------------------
if ASCT.Client.LE_EXPANSION_LEVEL["isVanillaWow"] then
ASCT.Client.Seasonal["ActiveSeason"] = ASCT.API.Documentation["C_Seasons.HasActiveSeason"]() == true
ASCT.Client.Seasonal["InActiveSeason"] = ASCT.API.Documentation["C_Seasons.HasActiveSeason"]() == false
end