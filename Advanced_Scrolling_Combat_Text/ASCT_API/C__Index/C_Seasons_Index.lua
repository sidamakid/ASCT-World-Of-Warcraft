local ASCT = ASCT_Table
---------------------------
--Season_Functionality
---------------------------
ASCT.API.Documentation["C_Seasons.HasActiveSeason"] = function()
    local active = C_Seasons.HasActiveSeason()
    return active
end
ASCT.API.Documentation["C_Seasons.GetActiveSeason"] = function()
    local seasonID = C_Seasons.GetActiveSeason()
    return seasonID
end

