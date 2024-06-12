
local difficultys = {
	[1] = "Bloodforged",
	[100] = "Heroic Bloodforged",
	[3] = "Heroic",
	[4] = "Mythic",
	[5] = "Mythic 1",  [6] = "Mythic 2",  [7] = "Mythic 3",  [8] = "Mythic 4",  [9] = "Mythic 5",
	[10] = "Mythic 6", [11] = "Mythic 7", [12] = "Mythic 8", [13] = "Mythic 9", [14] = "Mythic 10",
	[15] = "Mythic 11", [16] = "Mythic 12", [17] = "Mythic 13", [18] = "Mythic 14", [19] = "Mythic 15",
	[20] = "Mythic 16", [21] = "Mythic 17", [22] = "Mythic 18", [23] = "Mythic 19", [24] = "Mythic 20",
	[25] = "Mythic 21", [26] = "Mythic 22", [27] = "Mythic 23", [28] = "Mythic 24", [29] = "Mythic 25",
	[30] = "Mythic 26", [31] = "Mythic 27", [32] = "Mythic 28", [33] = "Mythic 29", [34] = "Mythic 30",
	[35] = "Mythic 31", [36] = "Mythic 32", [37] = "Mythic 33", [38] = "Mythic 34", [39] = "Mythic 35",
	[40] = "Mythic 36", [41] = "Mythic 37", [42] = "Mythic 38", [43] = "Mythic 39", [44] = "Mythic 40",
};

local raidDifficultys = {
	[3] = "Heroic Raid",
	[4] = "Ascended Raid",
	[5] = "Mythic Raid",
}

local difficultyList = {
	["Heroic"] = 3,
	["Mythic"] = 4,
	["Heroic Raid"] = 3,
	["Mythic Raid"] = 5,
	["Ascended Raid"] = 4,
	["Heroic Bloodforged"] = 100,
	["Bloodforged"] = 1,
	["Mythic 1"] = 5,  ["Mythic 2"] = 6,  ["Mythic 3"] = 7,  ["Mythic 4"] = 8,  ["Mythic 5"] = 9,
	["Mythic 6"] = 10, ["Mythic 7"] = 11, ["Mythic 8"] = 12, ["Mythic 9"] = 13, ["Mythic 10"] = 14,
	["Mythic 11"] = 15, ["Mythic 12"] = 16, ["Mythic 13"] = 17, ["Mythic 14"] = 18, ["Mythic 15"] = 19,
	["Mythic 16"] = 20, ["Mythic 17"] = 21, ["Mythic 18"] = 22, ["Mythic 19"] = 23, ["Mythic 20"] = 24,
	["Mythic 21"] = 25, ["Mythic 22"] = 26, ["Mythic 23"] = 27, ["Mythic 24"] = 28, ["Mythic 25"] = 29,
	["Mythic 26"] = 30, ["Mythic 27"] = 31, ["Mythic 28"] = 32, ["Mythic 29"] = 33, ["Mythic 30"] = 34,
	["Mythic 31"] = 35, ["Mythic 32"] = 36, ["Mythic 33"] = 37, ["Mythic 34"] = 38, ["Mythic 35"] = 39,
	["Mythic 36"] = 40, ["Mythic 37"] = 41, ["Mythic 38"] = 42, ["Mythic 39"] = 43, ["Mythic 40"] = 44,
};

function AtlasLoot:GetDifficulty(item)
	if not item then return end
	local _, description, _ = string.split("@", item.description, 3)
	if description then
		description = self:StripTextColor(description)
		local difficuilty = difficultyList[description]
		if difficuilty then
			return difficuilty, description
		end
	end
end

function AtlasLoot:CheckItemID(newIDs, ID, dif)
	if not newIDs then return end
	if type(newIDs) ~= "table" then newIDs = {newIDs} end
	for _, newID in ipairs(newIDs) do
		local ogName = GetItemInfoInstant(ID)
		local newName = GetItemInfoInstant(newID)
		if newName and ogName and newName.name and ogName.name then
			ogName.name = ogName.name:gsub( "%W", "" )
			newName.name = newName.name:gsub( "%W", "" )
			if dif == "Bloodforged" or dif == "Heroic Bloodforged" then
				ogName.name = "Bloodforged"..ogName.name
			end
		local _, description = self:GetDifficulty(newName)
			if description then
				if (not dif or (dif and (dif == description))) then
					if ogName.name == newName.name then
						return  newID
					end
				end
			end
		end
	end
end

function AtlasLoot:CheckIfEmptyTable(table)
	if next(table) then
		return false
	else
		return true
	end
end

local updateFrameCreated
function AtlasLoot:CreateUpdateText()
    if updateFrameCreated then return end
    local updateCounterFrame = CreateFrame("Frame", "AtlasLootDbUpdate", UIParrnt, nil)
	updateCounterFrame:SetPoint("CENTER",0,200)
	updateCounterFrame:SetSize(400,50)
	updateCounterFrame:Hide()
	updateCounterFrame.cText = updateCounterFrame:CreateFontString("AtlasLootDbUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.cText:Show()
	updateCounterFrame.cText:SetPoint("CENTER",0,0)
    updateFrameCreated = true
end

local itemTypeIgnore = {[18] = true, [19] = true, [24] = true}

AtlasLoot.unknownIDs = {}
function AtlasLoot:UpdateItemIDsDatabase(firstID, lastID)
	self:IsLootTableAvailable("AtlasLootOriginalWoW")
	self:IsLootTableAvailable("AtlasLootBurningCrusade")
	self:IsLootTableAvailable("AtlasLootWotLK")
    for dataID, data in pairs(AtlasLoot_Data) do
		if data.Type then
			for tableNum, t in ipairs(data) do
				for _, itemData in pairs(t) do
					if type(itemData) == "table" then
						if itemData.itemID then
							for _, dif in pairs(self.Difficultys[data.Type]) do
								local idCheck = ItemIDsDatabase[itemData.itemID] and self:CheckItemID(ItemIDsDatabase[itemData.itemID][dif[2]], itemData.itemID, dif[1]) or nil
								local itemType = GetItemInfoInstant(itemData.itemID) or nil
								if dif[2] ~= 100 and dif[2] ~= 1 and dif[2] ~= 2 and itemType and itemType.inventoryType ~= 0 and not itemTypeIgnore[itemType.inventoryType] and
								((not ItemIDsDatabase[itemData.itemID]) or
								(ItemIDsDatabase[itemData.itemID] and (not ItemIDsDatabase[itemData.itemID][dif[2]] or
								(ItemIDsDatabase[itemData.itemID][dif[2]] and not idCheck)))) then
									self.unknownIDs[dif[1]] = self.unknownIDs[dif[1]] or {}
									self.unknownIDs[dif[1]][itemType.name:gsub( "%W", "" )] = itemData.itemID
								end
							end
						end
					end
				end
			end
		end
    end
	self:GetItemVariationIDs(firstID, lastID)
end

function AtlasLoot:GetItemVariationIDs(firstID, lastID)
	if self:CheckIfEmptyTable(self.unknownIDs) then return end
    self:CreateUpdateText()
    AtlasLootDbUpdate:Show()

	local maxDuration = 500/GetFramerate()
    local startTime = debugprofilestop()
	firstID = firstID or 1
	lastID = lastID or 10000000
	AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)

		local function checkID(item, difficulty)
				if difficulty and item and item.name then
					local foundName = item.name:gsub( "%W", "" )
					if foundName then
						local orignalID = self.unknownIDs[difficulty] and self.unknownIDs[difficulty][foundName]
						if orignalID then
							AtlasLootItemCache[orignalID] = AtlasLootItemCache[orignalID] or {}
							AtlasLootItemCache[orignalID][difficultyList[difficulty]] = item.itemID
							ItemIDsDatabase[orignalID] = ItemIDsDatabase[orignalID] or {}
							ItemIDsDatabase[orignalID][difficultyList[difficulty]] = item.itemID
							self.unknownIDs[difficulty][foundName] = nil
						end
					end
				end
			AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
		end

    local function continue()
		if self:CheckIfEmptyTable(self.unknownIDs) then
			return
		end
        startTime = debugprofilestop()
        while (firstID ~= lastID) do
			local item = GetItemInfoInstant(firstID)
			local _, difficulty = self:GetDifficulty(item)
			if item and item.inventoryType ~= 0 and not itemTypeIgnore[item.inventoryType] and difficulty then
				checkID(item, difficulty)
			end
			firstID = firstID + 1
            AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
            if (debugprofilestop() - startTime > maxDuration) then
				collectgarbage("collect")
                Timer.After(0, continue)
                return
            end
        end
		AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\nUpdate Complete Reloadui To Save")
    end

    return continue()
end

--[[
AtlasLoot:FindId(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {normal, heroic, mythic, mythic1, mythic2, ... ,mythicN}}
]]
function AtlasLoot:FindId(id, difficulty, type, sourceType)
	local hasID
	local difficultyString
		for _, dif in pairs (self.Difficultys[type]) do
			if dif[2] == difficulty then
				difficultyString = dif[1]
			end
		end

	if difficulty == 2 then return end
	if difficulty == 100 then
		local newIDs = {
			(id < 1000000 and (id) + 6300000),
			(id < 1000000 and (id) + 7800000),
			(id > 1000000 and (id - 1500000) + 6300000),
			(id > 1000000 and (id - 1500000) + 7800000),
	}
		hasID = self:CheckItemID(newIDs, id, difficultyString)
		if hasID then return  hasID, true end
		if not ItemIDsDatabase[id] then return nil, false end
	end

	if difficulty == 1 then
		local newIDs = {
			(id < 1000000 and (id) + 6000000),
			(id < 1000000 and (id) + 7500000),
			(id > 1000000 and (id - 1500000) + 6000000),
			(id > 1000000 and (id - 1500000) + 7500000),
	}
		hasID = self:CheckItemID(newIDs, id, difficultyString)
		if hasID then return  hasID, true end
	end

	if difficulty == 3 then
		local newIDs = {
			(id < 1000000 and (id) + 1550000),
			(id > 1000000 and (id - 1500000) + 1550000),
	}
		hasID = self:CheckItemID(newIDs, id, difficultyString)
		if hasID then return  hasID, true end
	end

	if difficulty == 4 then
		local newIDs = {
			(id < 1000000 and (id) + 1650000),
			(id > 1000000 and (id - 1500000) + 1650000),
	}
		hasID = self:CheckItemID(newIDs, id, difficultyString)
		if hasID then return  hasID, true end
	end

	if (difficulty == 4 and (type == "BCRaid" or type == "ClassicRaid") and sourceType == "Search") then
		difficulty = 5
	elseif (difficulty == 5 and (type == "BCRaid" or type == "ClassicRaid") and sourceType == "Search") then
		difficulty = 4
	end

	if ItemIDsDatabase[id] then
		hasID = self:CheckItemID(ItemIDsDatabase[id][difficulty] or nil, id, difficultyString)
		if hasID then
			return hasID, true
		end
	end
end

--Updates the ItemIDsDatabase with any missing or incorrect items
function AtlasLoot:LoadMissingIDs()
	--loads any items in the saved varriables cache
    if AtlasLootItemCache and not self:CheckIfEmptyTable(AtlasLootItemCache) then
		for normalID, item in pairs(AtlasLootItemCache) do
			for itemDif, itemID in pairs(item) do
				ItemIDsDatabase[normalID] = ItemIDsDatabase[normalID] or {}
				ItemIDsDatabase[normalID][itemDif] = itemID
			end
		end
	end
	-- loads ids that have been manuely corrected
	if ItemIDManuelCorrections then
		for normalID, item in pairs(ItemIDManuelCorrections) do
			for itemDif, itemID in pairs(item) do
				ItemIDsDatabase[normalID] = ItemIDsDatabase[normalID] or {}
				ItemIDsDatabase[normalID][itemDif] = itemID
			end
		end
	end
	ItemIDManuelCorrections = nil
    collectgarbage("collect")
end