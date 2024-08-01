local ASCT = ASCT_Table
local Frames, Event = ASCT.Frames, ASCT.Events
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](Frames.Miscellaneous["SCT_Check_Frame"])
Event.RegisterEvent["SPELL_DATA_LOAD_RESULT"](Frames.Miscellaneous["loadingFrame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](Frames.Miscellaneous["Initialize_Locale_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](Frames.Miscellaneous["Color_Picker_loadingFrame"])