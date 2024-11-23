local ASCT = ASCT_Table
---------------------------
--Seasonal_Functions
---------------------------
ASCT.Client.Seasonal["NoSeason"] = ASCT.Client.Seasonal["InActiveSeason"] and ASCT.API.Documentation["C_Seasons.GetActiveSeason"]() == ASCT.Str_Int.SeasonID["NoSeason"]
ASCT.Client.Seasonal["SOD"] = ASCT.Client.Seasonal["ActiveSeason"] and ASCT.API.Documentation["C_Seasons.GetActiveSeason"]() == ASCT.Str_Int.SeasonID["SOD"]
ASCT.Client.Seasonal["Anniversary"] = ASCT.Client.Seasonal["ActiveSeason"] and ASCT.API.Documentation["C_Seasons.GetActiveSeason"]() == ASCT.Str_Int.SeasonID["Anniversary"]
ASCT.Client.Seasonal["Hardcore"] = ASCT.Client.Seasonal["ActiveSeason"] and ASCT.API.Documentation["C_Seasons.GetActiveSeason"]() == ASCT.Str_Int.SeasonID["Hardcore"]