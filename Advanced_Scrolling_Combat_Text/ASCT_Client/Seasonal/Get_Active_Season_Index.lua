local ASCT = ASCT_Table
local Client, API, Str_Int = ASCT.Client, ASCT.API, ASCT.Str_Int
---------------------------
--Seasonal_Functions
---------------------------
Client.Seasonal["NoSeason"] = Client.Seasonal["InActiveSeason"] and API.Documentation["C_Seasons.GetActiveSeason"]() == Str_Int.SeasonID["NoSeason"]
Client.Seasonal["SOD"] = Client.Seasonal["ActiveSeason"] and API.Documentation["C_Seasons.GetActiveSeason"]() == Str_Int.SeasonID["SOD"]
Client.Seasonal["Anniversary"] = Client.Seasonal["ActiveSeason"] and API.Documentation["C_Seasons.GetActiveSeason"]() == Str_Int.SeasonID["Anniversary"]
Client.Seasonal["Hardcore"] = Client.Seasonal["ActiveSeason"] and API.Documentation["C_Seasons.GetActiveSeason"]() == Str_Int.SeasonID["Hardcore"]