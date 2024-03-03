local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
-- Colours stored for code readability
local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local CYAN =  "|cff00ffff"
local SPRINGGREEN = "|cFF00FF7F"
local YELLOW = "|cffFFd200"

-- Used to create a dewdrop menu from a table
function AtlasLoot:OpenDewdropMenu(frame, menuList, skipRegister)
	if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
	if not skipRegister then
		self.Dewdrop:Register(frame,
			'point', function(parent)
				return "TOP", "BOTTOM"
			end,
			'children', function(level, value)
				local altar
			for _, menu in pairs(menuList[level]) do
				if menu.divider then
					local text = WHITE.."----------------------------------------------------------------------------------------------------"
					self.Dewdrop:AddLine(
						'text' , text:sub(1, menu.divider),
						'textHeight', 13,
						'textWidth', 13,
						'isTitle', true,
						'notCheckable', true
					)
				else
					self.Dewdrop:AddLine(
					'text', menu.text,
					'func', menu.func,
					'closeWhenClicked', menu.closeWhenClicked,
					'textHeight', menu.textHeight,
					'textWidth', menu.textWidth,
					'notCheckable', menu.notCheckable,
					'tooltip', menu.tooltip,
					'secure', menu.secure,
					'icon', menu.icon
				)
				end
				-- create close button
				if menu.close then
					self.Dewdrop:AddLine(
						'text', AL["Close Menu"],
						'textR', 0,
						'textG', 1,
						'textB', 1,
						'textHeight', 12,
						'textWidth', 12,
						'closeWhenClicked', true,
						'notCheckable', true
					)
				end
			end
		end,
		'dontHook', true
		)
	end
	self.Dewdrop:Open(frame)
	return true
end

--for a adding a divider to dew drop menus 
function AtlasLoot:AddDividerLine(maxLenght)
    local text = WHITE.."----------------------------------------------------------------------------------------------------"
    self.Dewdrop:AddLine(
        'text' , text:sub(1, maxLenght),
        'textHeight', 12,
        'textWidth', 12,
        'isTitle', true,
        "notCheckable", true
    )
end

function AtlasLoot:CloseDewDrop(divider, maxLenght)
    if divider then
        self:AddDividerLine(maxLenght)
    end
    self.Dewdrop:AddLine(
        'text', AL["Close Menu"],
        'textR', 0,
        'textG', 1,
        'textB', 1,
        'textHeight', 12,
        'textWidth', 12,
        'closeWhenClicked', true,
        'notCheckable', true
    )
end

-- return a copy of the table table
function AtlasLoot:CloneTable(table)
	if type(table) ~= "table" then return end
	local new = {}	-- create a new table
	for i, v in pairs(table) do
		if type(v) == "table" then
			v = self:CloneTable(v)
		end
		new[i] = v
	end
	return new
end

--drop down map menu
function AtlasLoot:OpenDB(frame, type, text)
    local menuList = { [1] = {
        {text = ORANGE..AL["Open AscensionDB To NPC"], func = function() self:OpenDBURL(text , type) end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12},
		{close = true, divider = 35},
		}
	}
    self:OpenDewdropMenu(frame, menuList)
end

--[[
AtlasLoot:FindId(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {normal, heroic, mythic, mythic1, mythic2, ... ,mythicN}}
]]
function AtlasLoot:FindId(id, difficulty, type, sourceType)
	if not ItemIDsDatabase[id] then return nil, false end
	if difficulty == 100 then
		return ItemIDsDatabase[id]["HeroicBloodforged"], true
	end
	if (difficulty == 4 and (type == "BCRaid" or type == "ClassicRaid") and sourceType == "Search") or
	(difficulty == 5 and (type == "BCRaid" or type == "ClassicRaid") and sourceType ~= "Search") then
		return ItemIDsDatabase[id]["MythicRaid"], true
	end
	if (difficulty == 5 and (type == "BCRaid" or type == "ClassicRaid") and sourceType == "Search") then
		difficulty = 4
	end
	return ItemIDsDatabase[id][difficulty], true
	end

-- Create enchant tooltip
function AtlasLoot:GetEnchantLink(enchantID)
	if not enchantID then return end
	local EnchantLink = nil
	AtlasLootScanTooltip:SetOwner(UIParent, "ANCHOR_NONE")
	AtlasLootScanTooltip:ClearLines()
	AtlasLootScanTooltip:SetHyperlink("enchant:"..enchantID)
	AtlasLootScanTooltip:Show()
	local tooltipline = _G["AtlasLootScanTooltipTextLeft1"]
	local text = tooltipline:GetText()
	if text and string.find(text, ":") then
	   EnchantLink = "|cffffd000|Henchant:"..enchantID.."|h["..text.."]|h|r"
	else
	   EnchantLink = GetSpellLink(enchantID)
	end
	AtlasLootScanTooltip:Hide()
	return EnchantLink
 end

-- Open a ascension db link
function AtlasLoot:OpenDBURL(ID, Type)
    OpenAscensionDBURL("?"..Type.."="..ID)
end

-- create a enchant or item chat link!
function AtlasLoot:Chatlink(ID,chatType,Type)
    if Type == "spell" then
        SendChatMessage(self:GetEnchantLink(ID) ,chatType)
    else
        SendChatMessage(select(2,GetItemInfo(ID)) ,chatType)
    end
end

function AtlasLoot:GetRecipeData(recipeID, idType)
	if not TRADESKILL_RECIPES then return end
	for _,prof in pairs(TRADESKILL_RECIPES) do
		for _,cat in pairs(prof) do
		   for _,recipe in pairs(cat) do
			  if (idType == "spell" and recipeID == recipe.SpellEntry) or (idType == "item" and recipeID == recipe.RecipeItemEntry) then
				local info = {{recipe.CreatedItemEntry}, "blank", "blank", "blank", "blank", "blank",spellID = recipe.SpellEntry}
				if ItemIDsDatabase[recipe.CreatedItemEntry] and ItemIDsDatabase[recipe.CreatedItemEntry][1] then
					info[2] = {ItemIDsDatabase[recipe.CreatedItemEntry][1]}
				end
				if recipe.RecipeItemEntry and recipe.RecipeItemEntry ~= 0 then
					local number = 3
					if info[2] == "blank" then
						number = 2
					end
					info[number] = {recipe.RecipeItemEntry}

				end
				for _,v in pairs(recipe.Reagents) do
					tinsert(info, v)
				end
				return info
			  end
		   end
		end
	 end
end

-- Returns the recipe itemID from a crafting spellID
function AtlasLoot:GetRecipeID(spellID)
	if not TRADESKILL_RECIPES then return end
	for _,prof in pairs(TRADESKILL_RECIPES) do
		for _,cat in pairs(prof) do
			for _,recipe in pairs(cat) do
				if spellID == recipe.SpellEntry and recipe.RecipeItemEntry ~= 0 then
					return recipe.RecipeItemEntry
				end
			end
		end
	 end
end

-- Get rep faction for when you have 2 loot tables and want to show a different one depending on rep
function AtlasLoot:GetReputationFaction(factions)
	local factionIndex = 1
	local lastFactionName
	repeat
	local name, _, _, _, _, totalRep = GetFactionInfo(factionIndex)
			for _, faction in pairs(factions) do
			if name == faction and totalRep and totalRep >= 1 then
				return faction
			end
			if name == faction then
				lastFactionName = faction
			end
		end
	factionIndex = factionIndex + 1
	until factionIndex > 200
	return lastFactionName
end

--[[
AtlasLoot:PopoupItemFrame(item, data)
Used to create a popup item frame for items like gem sacks to show what they contain
]] 
function AtlasLoot:PopoupItemFrame(frame, data)
	if not data then AtlasLoot_PopupFrame:Hide() return end
	--hide the unused buttons
	for i = 1, 15 do
		local button = _G["AtlasLoot_PopupButton_"..i]
		if button then
			button:Hide()
		end
	end
	--creates a button only if one dosnt already exist re use old one if it does
	local function createButton(num)
		if _G["AtlasLoot_PopupButton_"..num] then return end
		local button = CreateFrame("Button", "AtlasLoot_PopupButton_"..num, AtlasLoot_PopupFrame)
		button:SetID(num)
		button:SetSize(30,30)
		button:EnableMouse()
		button:RegisterForClicks("AnyDown")
		button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
		button.icon = button:CreateTexture(nil,"ARTWORK")
		button.icon:SetSize(30,30)
		button.icon:SetPoint("CENTER")
		button.name = button:CreateFontString(nil,"ARTWORK","GameFontHighlightLarge")
		button.name:SetFont("GameFontHighlightLarge", 30)
        button.name:SetSize(30,30)
        button.name:SetPoint("CENTER", button.icon,0,0)
        button.name:SetJustifyH("CENTER")
		button.name:Hide()
		button.number = num
		button:SetScript("OnClick", function(btn, arg1) self:ItemOnClick(btn, arg1) end)
		button:SetScript("OnEnter", function(btn)
			self:ItemOnEnter(btn)
			AtlasLoot_PopupFrame:Show()
		end)
		button:SetScript("OnLeave", function(btn)
			if not self.Dewdrop:IsOpen(_G["AtlasLoot_PopupButton_"..num]) then
				self:ItemOnLeave(btn)
			end
		end)
		
		if num == 1 then
			button:SetPoint("TOPLEFT", "AtlasLoot_PopupFrame", 9, -8)
		elseif num == 7 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_1", 0, -33)
		elseif num == 13 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_6", 0, -33)
		else
			button:SetPoint("LEFT", _G["AtlasLoot_PopupButton_"..(num-1)],"RIGHT",3,0)
		end
	end
	if data.Faction then
		data = data[self:GetReputationFaction(data.Faction)]
	end

	local numberBtns
	for i, item in ipairs(data) do
		createButton(i)
		local button = _G["AtlasLoot_PopupButton_"..i]
		if item == "blank" then
			button:Hide()
		else
			local itemID = item.itemID or item[1]
			local itemData = Item:CreateFromID(itemID)
				if itemID and not itemData:GetInfo() then
					self:ItemsLoading(1)
					itemData:ContinueOnLoad(function(itemID)
						self:ItemsLoading(-1)
					end)
				end
			button.icon:SetTexture(GetItemIcon(itemID))
			button.itemID = itemID
			button.itemTexture = frame.itemTexture
			local recipe = self:GetRecipeData(itemID, "item")
			if recipe then
			button.craftingData = self:RecipeSource(recipe.spellID)
			end
		if item[2] then
			button.name:SetText(WHITE..item[2])
			button.name:Show()
		else
			button.name:Hide()
		end
		button:Show()
		end
		numberBtns = i
	end
	if numberBtns < 6 then
		AtlasLoot_PopupFrame:SetWidth((numberBtns*33)+16)
	else
		AtlasLoot_PopupFrame:SetWidth(214)
	end
	if numberBtns > 6 then
		AtlasLoot_PopupFrame:SetHeight(79)
	elseif numberBtns > 12 then
		AtlasLoot_PopupFrame:SetHeight(107)
	else
		AtlasLoot_PopupFrame:SetHeight(46)
	end
	AtlasLoot_PopupFrame:SetParent(frame)
	AtlasLoot_PopupFrame:ClearAllPoints()
	AtlasLoot_PopupFrame:SetPoint("TOPLEFT",frame,0,-25)
	AtlasLoot_PopupFrame:Show()
end


--Adds explanatory tooltips to UI objects.
function AtlasLoot:AddTooltip(frameb, tooltiptext)
	if not tooltiptext or not frameb then return end
	local frame = _G[frameb]
	frame:SetScript("OnEnter", function()
	   GameTooltip:SetOwner(frame, "ANCHOR_RIGHT")
	   GameTooltip:SetText(tooltiptext)
	   GameTooltip:Show()
	end)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
 end

--Called when 'Back'Button is pressed and calls up the appropriate loot page
function AtlasLoot:BackButton_OnClick()
	self.backEnabled = false
	if AtlasLootItemsFrame.refreshSearch then
		self:ShowItemsFrame(AtlasLootItemsFrame.refreshSearch[1], AtlasLootItemsFrame.refreshSearch[2], AtlasLootItemsFrame.refreshSearch[3])
	else
		self:ShowItemsFrame(AtlasLootItemsFrame.refreshBack[1], AtlasLootItemsFrame.refreshBack[2], AtlasLootItemsFrame.refreshBack[3])
	end
end

--[[
AtlasLoot:IsLootTableAvailable(dataID):
Checks if a loot table is in memory and attempts to load the correct LoD module if it isn't
dataID: Loot table dataID
]]
function AtlasLoot:IsLootTableAvailable(dataSource)
	local moduleName
	moduleName = self.ModuleName[dataSource]
	if moduleName and IsAddOnLoaded(moduleName) then
		return true
	elseif moduleName then
		LoadAddOn(moduleName)
	end
end

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(btn)
	if AtlasLootDefaultFrame_Map:IsVisible() then
		self:MapSelect(btn.mapID, btn.mapNum)
	else
		local tablenum, dataID, dataSource = btn.tablenum, btn.tablebase[1], btn.tablebase[2]
		if #_G[dataSource][dataID] > 26 then
			local min, max = AtlasLootDefaultFrameSubTableScrollScrollBar:GetMinMaxValues()
			AtlasLootDefaultFrameSubTableScrollScrollBar:SetValue(tablenum * (max / #_G[dataSource][dataID]))
		end
		self:ShowItemsFrame(dataID, dataSource, tablenum)
	end
end

--------- rate limited item frame refresh ---------
local refreshTimer
function AtlasLoot:ItemRefreshTimer()
    self:ShowItemsFrame(AtlasLootItemsFrame.refresh[1], AtlasLootItemsFrame.refresh[2], AtlasLootItemsFrame.refresh[3])
    refreshTimer = false
end

function AtlasLoot:ItemFrameRefresh()
    if refreshTimer then return end
    self:ScheduleTimer("ItemRefreshTimer", 5)
    refreshTimer = true
end
-----------------------------------------------------

function AtlasLoot:getMaxDifficulty(difficultyKey)
    if(difficultyKey == "ClassicDungeon" or difficultyKey == "PVP") then
        return 2
    elseif (difficultyKey == "ClassicDungeonExt" or difficultyKey == "BCDungeon" or difficultyKey == "WrathDungeon") then
        return 44
    elseif (difficultyKey == "ClassicRaid" or difficultyKey == "BCRaid" or difficultyKey == "WrathRaid") then
        return 5
    else
        return 0
    end
end

-- Loading items spinner 
local loadingCount = 0
function AtlasLoot:ItemsLoading(count)
	if count == "reset" then
		loadingCount = 0
		count = 0
	end
	loadingCount = loadingCount + count
	if(loadingCount > 0) then
        AtlasLoot_ItemsLoadingSpinner:SetVertexColor(0,1,0)
        AtlasLoot_ItemsLoadingFrameBackground:SetVertexColor(0,1,0)
        AtlasLoot_ItemsLoading.tooltip = WHITE..loadingCount..YELLOW.." Items still caching\n(This can take awhile after a launcher update)"
		AtlasLoot_ItemsLoading.Loop:Play()
		AtlasLoot_ItemsLoading:Show()
		if GameTooltip:GetOwner() == AtlasLoot_ItemsLoading then
			GameTooltip:SetOwner(AtlasLoot_ItemsLoading, "ANCHOR_LEFT")
			GameTooltip:SetText(AtlasLoot_ItemsLoading.tooltip, nil, nil, nil, nil, true)
		end
	else
        AtlasLoot_ItemsLoading.Loop:Stop()
        AtlasLoot_ItemsLoading:Hide()
	end
end

function AtlasLoot:BatchRequestVanity(itemList)
	itemList = self:CloneTable(itemList)
	  local function nextItem()
        local task = tremove(itemList)
		while task do
            RequestDeliverVanityCollectionItem(task)
            return Timer.After(1, nextItem)
        end
    end
    return nextItem()
end