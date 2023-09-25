local L_Function_Keys = Functions_For_ASDC_Table
local f = CreateFrame("Frame")
function f:OnEvent(event, ...)
	self[event](self, event, ...)
end

function f:ADDON_LOADED(event, name)
    if name == "Advanced_Scrolling_Combat_Text" then
        local ASCT_Color_Picker_Variables_Function_DB = ASCT_Color_Picker_Variables
        local ASCT_Spell_DB = ASCT_DB
        L_Function_Keys["Color_Picker_DB"] = ASCT_Color_Picker_Variables_Function_DB
        L_Function_Keys["ASCT_Spells_DB"] = ASCT_Spell_DB
        --local ASCT_DB = L_Function_Keys["Spell_DB"]
    end
end
--[[
function f:PLAYER_ENTERING_WORLD(event, isLogin, isReload)
    if isLogin or isReload then
        L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"]()
    end
end
]]
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)