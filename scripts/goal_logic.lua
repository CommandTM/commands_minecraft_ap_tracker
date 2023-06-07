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

function BossAccess()
	if Tracker:ProviderCountForCode("goal")==1 then
		if Tracker:FindObjectForCode("@The End?/Advancement Made").AvailableChectCount==1 then
			return 0
		else
			return 1
		end
	end
end