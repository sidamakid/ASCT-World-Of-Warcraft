local L_Function_Keys = Functions_For_ASDC_Table

L_Function_Keys["Advanced_Scrolling_Combat_Text_Initializers"] = {}
---------------------------
--Add function to Initializers table
---------------------------
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"] = function (func)
  table.insert(L_Function_Keys["Advanced_Scrolling_Combat_Text_Initializers"], func)
end
---------------------------
--Runs with the Options Panel
---------------------------
L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"] = function ()
  for _, func in ipairs(L_Function_Keys["Advanced_Scrolling_Combat_Text_Initializers"]) do
    func()
  end
end