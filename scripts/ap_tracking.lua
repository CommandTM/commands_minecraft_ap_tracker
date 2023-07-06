ScriptHost:LoadScript("scripts/mapping/item_mapping.lua")
ScriptHost:LoadScript("scripts/mapping/location_mapping.lua")

function onClear(slot_data)
    if slot_data == nil then
        return
    end

    if slot_data['advancement_goal'] then
        local obj = Tracker:FindObjectForCode("required_advancements")
        if obj then
            obj.AcquiredCount = slot_data['advancement_goal']
        end
    end
end