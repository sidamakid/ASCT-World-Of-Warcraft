local ASCT = ASCT_Table
---------------------------
--ActiveSeason
---------------------------
ASCT.Client.Seasonal["ActiveSeason"] = ASCT.API.Documentation["C_Seasons.HasActiveSeason"]() == true
ASCT.Client.Seasonal["InActiveSeason"] = ASCT.API.Documentation["C_Seasons.HasActiveSeason"]() == false