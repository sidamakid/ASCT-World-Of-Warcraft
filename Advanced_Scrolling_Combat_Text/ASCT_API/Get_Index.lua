local ASCT = ASCT_Table
ASCT.API.Documentation["GetBuildInfo"] = function()
    local version, build, date, tocversion, localizedVersion, buildType = GetBuildInfo()
    return version, build, date, tocversion, localizedVersion, buildType
end