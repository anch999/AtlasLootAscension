local difficultyList = {
	["Bloodforged"] = 1,
	["Heroic Bloodforged"] = 2,
	["Heroic"] = 4,
	["Mythic"] = 5,
	["Heroic Raid"] = 4,
	["Mythic Raid"] = 5,
	["Ascended Raid"] = 6,
	["Mythic 1"] = 6,  ["Mythic 2"] = 7,  ["Mythic 3"] = 8,  ["Mythic 4"] = 9,  ["Mythic 5"] = 10,
	["Mythic 6"] = 11, ["Mythic 7"] = 12, ["Mythic 8"] = 13, ["Mythic 9"] = 14, ["Mythic 10"] = 15,
	["Mythic 11"] = 16, ["Mythic 12"] = 17, ["Mythic 13"] = 18, ["Mythic 14"] = 19, ["Mythic 15"] = 20,
	["Mythic 16"] = 21, ["Mythic 17"] = 22, ["Mythic 18"] = 23, ["Mythic 19"] = 24, ["Mythic 20"] = 25,
	["Mythic 21"] = 26, ["Mythic 22"] = 27, ["Mythic 23"] = 28, ["Mythic 24"] = 29, ["Mythic 25"] = 30,
	["Mythic 26"] = 31, ["Mythic 27"] = 32, ["Mythic 28"] = 33, ["Mythic 29"] = 34, ["Mythic 30"] = 35,
	["Mythic 31"] = 36, ["Mythic 32"] = 37, ["Mythic 33"] = 38, ["Mythic 34"] = 39, ["Mythic 35"] = 40,
	["Mythic 36"] = 41, ["Mythic 37"] = 42, ["Mythic 38"] = 43, ["Mythic 39"] = 44, ["Mythic 40"] = 45,
};

local itemLevels = {
	{1, 101}, -- Vanilla / Classic
	{101, 178}, -- TBC
	{167, 290}, -- WoTLK
}

function AtlasLoot:MatchItemLevelBracket(ogILevel, newILevel)
	for _, bracket in pairs(itemLevels) do
		if ogILevel >= bracket[1] and ogILevel <= bracket[2] and ogILevel <= newILevel and newILevel <= bracket[2] then return true end
	end
end

function AtlasLoot:GetDifficulty(item)
	if not item then return end
	local _, description, _ = string.split("@", item.description, 3)
	if description then
		description = self:StripTextColor(description)
		description = description:gsub("Karazhan Crypts ", "")
		description = description:gsub(" Frozen Reach", "")
		return description
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

local function removeExtraText(text)
	text = text:gsub( "Bloodforged", "" )
	text = text:gsub( "%W", "" )
	return text
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
								if dif[2] ~= 3 and itemType then
									unknownIDs[dif[1]] = unknownIDs[dif[1]] or {}
									local name = itemType.name:gsub( "%W", "" )..itemType.inventoryType
									unknownIDs[dif[1]][name] = unknownIDs[dif[1]][name] or {}
									local itemTable = unknownIDs[dif[1]][name]
										local function checkForDuplicate(itemID)
											for _ , item in pairs(itemTable) do
												if item[1] == itemID then return true end
											end
										end
									if not checkForDuplicate(itemData.itemID) then
										tinsert(itemTable, {itemData.itemID, itemType.itemLevel})
									end
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
				local foundName = removeExtraText(item.name)..item.inventoryType
				if foundName then
					local itemData = unknownIDs[difficulty] and unknownIDs[difficulty][foundName]
					if itemData then
						for _ , storedItem in pairs(itemData) do
							local orignalID = storedItem[1]
							ItemIDsDatabase[orignalID] = ItemIDsDatabase[orignalID] or {}
							if not ItemIDsDatabase[orignalID][difficultyList[difficulty]] or self:MatchItemLevelBracket(storedItem[2], item.itemLevel) then
								ItemIDsDatabase[orignalID][difficultyList[difficulty]] = item.itemID
								AtlasLootIDUpdateText:SetText("Last ItemID Added: "..firstID)
							end
						end
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
On the form of {ID, {bloodforged, heroic bloodforged, normal, heroic, mythic, mythic1/ascended, mythic2, ... ,mythicN}}
]]
function AtlasLoot:FindId(id, difficulty)
	if difficulty == 3 then return id end
	if ItemIDsDatabase[id] and ItemIDsDatabase[id][difficulty] then
		return ItemIDsDatabase[id][difficulty]
	end
	return id
end