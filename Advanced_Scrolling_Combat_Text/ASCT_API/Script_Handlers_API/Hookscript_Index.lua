local ASCT = ASCT_Table
--ASCT.Widget.Scripts
ASCT.Scripts.HookScript["OnClick"] = function (Frame, script) Frame:HookScript(ASCT.Strings.ScriptTypeName["OnClick"], script) return Frame end