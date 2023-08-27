local L_Function_Keys = Functions_For_ASDC_Table

Advanced_Scrolling_Combat_Text_Initializers = {}
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"] = function (func)
  table.insert(Advanced_Scrolling_Combat_Text_Initializers, func)
end
L_Function_Keys["Advanced_Scrolling_Combat_Text_RunInitializers"] = function ()
  for _, func in ipairs(Advanced_Scrolling_Combat_Text_Initializers) do
    func()
  end
end