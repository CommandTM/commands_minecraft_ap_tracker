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
	local goal = Tracker:FindObjectForCode("goal")
	local endAdvancement = Tracker:FindObjectForCode("@The End?/Advancement Made")
	local netherAdvancement = Tracker:FindObjectForCode("@Withering Heights/Advancement Made")
	local bossesNeed = 1
	local bossesAccess = 0
	if goal.CurrentStage==0 then
		bossesNeed = 0
	end
	if goal.CurrentStage==1 then
		if endAdvancement.AvailableChestCount==0 then
			bossesAccess = bossesAccess + 1
		end
	end
	if goal.CurrentStage==2 then
		if netherAdvancement.AvailableChestCount==0 then
			bossesAccess = bossesAccess + 1
		end
	end
	if goal.CurrentStage==3 then
		bossesNeed = 2
		if endAdvancement.AvailableChestCount==0 then
			bossesAccess = bossesAccess + 1
		end
		if netherAdvancement.AvailableChestCount==0 then
			bossesAccess = bossesAccess + 1
		end
	end
	return (bossesAccess >= bossesNeed)
end