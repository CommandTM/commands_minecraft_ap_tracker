function Advancement()
    local currentAdvancements = Tracker:ProviderCountForCode("advancements")
	local requiredAdvancements = Tracker:ProviderCountForCode("required_advancements")
	return (currentAdvancements >= requiredAdvancements)
end

function EggShards()
    local currentEggShards = Tracker:ProviderCountForCode("egg_shards")
	local requiredEggShards = Tracker:ProviderCountForCode("required_egg_shards")
	return (currentEggShards >= requiredEggShards)
end