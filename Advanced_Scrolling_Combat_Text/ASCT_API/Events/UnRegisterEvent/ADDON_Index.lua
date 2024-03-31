local ASCT = ASCT_Table
ASCT.Events.UnRegisterEvent["ADDON_LOADED"] = function(Frame) Frame:UnregisterEvent("ADDON_LOADED") return Frame end