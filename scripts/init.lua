Tracker:AddItems("items/items.json")
Tracker:AddItems("items/options.json")

Tracker:AddMaps("maps/maps.json")

Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/options.json")

ScriptHost:LoadScript("scripts/loadlocations.lua")
ScriptHost:LoadScript("scripts/goal_logic.lua")
ScriptHost:LoadScript("scripts/ap_tracking.lua")

Tracker:AddLayouts("layouts/tracker.json")