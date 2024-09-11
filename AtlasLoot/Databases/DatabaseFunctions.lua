local difficultyList = {
	["Heroic"] = 3,
	["Mythic"] = 4,
	["Heroic Raid"] = 3,
	["Mythic Raid"] = 4,
	["Ascended Raid"] = 5,
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
		return self:StripTextColor(description)
	end
end

function AtlasLoot:CheckItemID(newIDs, ID, dif)
	if not newIDs then return end
	if type(newIDs) ~= "table" then newIDs = {newIDs} end
	for _, newID in ipairs(newIDs) do
		local ogName = GetItemInfoInstant(ID)
		local newName = GetItemInfoInstant(newID)
		if newName and ogName and newName.name and ogName.name and newName.inventoryType == ogName.inventoryType then
			ogName.name = ogName.name:gsub( "%W", "" )
			newName.name = newName.name:gsub( "%W", "" )
			if dif == "Bloodforged" or dif == "Heroic Bloodforged" then
				ogName.name = "Bloodforged"..ogName.name
			end
		local description = self:GetDifficulty(newName)
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
	updateCounterFrame.lastIDText = updateCounterFrame:CreateFontString("AtlasLootIDUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.lastIDText:Show()
	updateCounterFrame.lastIDText:SetPoint("TOP", updateCounterFrame.cText, "BOTTOM" ,10,0)
    updateFrameCreated = true
end

local unknownIDs = {}
function AtlasLoot:UpdateItemIDsDatabase(firstID, lastID)
	AtlasLootItemCache = ItemIDsDatabase
	self:IsLootTableAvailable("AtlasLootOriginalWoW")
	self:IsLootTableAvailable("AtlasLootBurningCrusade")
	self:IsLootTableAvailable("AtlasLootWotLK")
    for _, data in pairs(AtlasLoot_Data) do
		if data.Type then
			for _, t in ipairs(data) do
				for _, itemData in pairs(t) do
					if type(itemData) == "table" then
						if itemData.itemID then
							for _, dif in ipairs(self.Difficulties[data.Type]) do
								local itemType = GetItemInfoInstant(itemData.itemID) or nil
								if dif[2] ~= 100 and dif[2] ~= 1 and dif[2] ~= 2 and itemType then
									unknownIDs[dif[1]] = unknownIDs[dif[1]] or {}
									unknownIDs[dif[1]][itemType.name:gsub( "%W", "" )..itemType.inventoryType] = itemData.itemID
								end
							end
						end
					end
				end
			end
		end
    end

	if self:CheckIfEmptyTable(unknownIDs) then return end
    self:CreateUpdateText()
    AtlasLootDbUpdate:Show()

	local maxDuration = 500/GetFramerate()
    local startTime = debugprofilestop()
	firstID = firstID or 1
	lastID = lastID or 10000000
	AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)

		local function checkID(item, difficulty)
			if difficulty and item and item.name then
				local foundName = item.name:gsub( "%W", "" )..item.inventoryType
				if foundName then
					local orignalID = unknownIDs[difficulty] and unknownIDs[difficulty][foundName]
					if orignalID then
						ItemIDsDatabase[orignalID] = ItemIDsDatabase[orignalID] or {}
						ItemIDsDatabase[orignalID][difficultyList[difficulty]] = item.itemID
						AtlasLootIDUpdateText:SetText("Last ItemID Added: "..firstID)
					end
				end
			end
			AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
		end

    local function continue()
		if self:CheckIfEmptyTable(unknownIDs) then
			return
		end
        startTime = debugprofilestop()
        while (firstID ~= lastID) do
			local item = GetItemInfoInstant(firstID)
			local difficulty = self:GetDifficulty(item)
			if item and difficulty then
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
function AtlasLoot:FindId(id, difficulty, type, Difficultiestring)
	local hasID
	if self.Difficulties[type] then
		for _, dif in ipairs (self.Difficulties[type]) do
			if dif[2] == difficulty then
				Difficultiestring = dif[1]
			end
		end
	end
	if difficulty == 2 then return end
	-- Create Heroic Bloodforged Id
	if difficulty == 100 then
		local newIDs = {
			(id < 1000000 and (id) + 6300000),
			(id < 1000000 and (id) + 7800000),
			(id > 1000000 and (id - 1500000) + 6300000),
			(id > 1000000 and (id - 1500000) + 7800000),
	}
		hasID = self:CheckItemID(newIDs, id, Difficultiestring)
		if hasID then return  hasID, true end
	end
	-- Create Bloodforged Id
	if difficulty == 1 then
		local newIDs = {
			(id < 1000000 and (id) + 6000000),
			(id < 1000000 and (id) + 7500000),
			(id > 1000000 and (id - 1500000) + 6000000),
			(id > 1000000 and (id - 1500000) + 7500000),
	}
		hasID = self:CheckItemID(newIDs, id, Difficultiestring)
		if hasID then return  hasID, true end
	end
	if ItemIDsDatabase[id] and ItemIDsDatabase[id][difficulty] then
		return ItemIDsDatabase[id][difficulty], true
	end
end