local ASCT = ASCT_Table
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_Initializers"] = {}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Add function to Initializers table
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"] = function (func)
  table.insert(ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_Initializers"], func)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Runs with the Options Panel
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_RunInitializers"] = function ()
  for _, func in ipairs(ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_Initializers"]) do
    func()
  end
end