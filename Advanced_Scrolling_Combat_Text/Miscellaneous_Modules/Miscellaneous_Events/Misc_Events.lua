local ASCT = ASCT_Table
local Event = ASCT.Events
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.Miscellaneous["SCT_Check_Frame"])
Event.RegisterEvent["SPELL_DATA_LOAD_RESULT"](ASCT.Frames.Miscellaneous["loadingFrame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.Miscellaneous["Initialize_Locale_Frame"])