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

-- Used to create a dewdrop menu from a table
function AtlasLoot:OpenDewdropMenu(self, menuList, skipRegister)
	if AtlasLoot.Dewdrop:IsOpen(self) then AtlasLoot.Dewdrop:Close() return end
	if not skipRegister then
		AtlasLoot.Dewdrop:Register(self,
			'point', function(parent)
				return "TOP", "BOTTOM"
			end,
			'children', function(level, value)
				local altar
			for _, menu in pairs(menuList[level]) do
				if menu.divider then
					local text = WHITE.."----------------------------------------------------------------------------------------------------"
					AtlasLoot.Dewdrop:AddLine(
						'text' , text:sub(1, menu.divider),
						'textHeight', 13,
						'textWidth', 13,
						'isTitle', true,
						'notCheckable', true
					)
				else
					AtlasLoot.Dewdrop:AddLine(
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
					AtlasLoot.Dewdrop:AddLine(
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
	AtlasLoot.Dewdrop:Open(self)
	return true
end

--for a adding a divider to dew drop menus 
function AtlasLoot:AddDividerLine(maxLenght)
    local text = WHITE.."----------------------------------------------------------------------------------------------------"
    AtlasLoot.Dewdrop:AddLine(
        'text' , text:sub(1, maxLenght),
        'textHeight', 12,
        'textWidth', 12,
        'isTitle', true,
        "notCheckable", true
    )
end

function AtlasLoot:CloseDewDrop(divider, maxLenght)
    if divider then
        AtlasLoot:AddDividerLine(maxLenght)
    end
    AtlasLoot.Dewdrop:AddLine(
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
			v = AtlasLoot:CloneTable(v)
		end
		new[i] = v
	end
	return new
end

--[[
AtlasLoot:FindId(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {normal, heroic, mythic, mythic1, mythic2, ... ,mythicN}}
]]
function AtlasLoot:FindId(id, difficulty, type)
	if not ItemIDsDatabase[id] then return nil, false end

	if difficulty == 5 and (type == "BCRaid" or type == "ClassicRaid") then
		return ItemIDsDatabase[id]["MythicRaid"], true
	else
		return ItemIDsDatabase[id][difficulty], true
	end
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
        SendChatMessage(AtlasLoot:GetEnchantLink(ID) ,chatType)
    else
        SendChatMessage(select(2,GetItemInfo(ID)) ,chatType)
    end
end

function AtlasLoot:GetRecipeData(recipeID, idType)
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
AtlasLoot:PopoupItemFrame(self, data)
Used to create a popup item frame for items like gem sacks to show what they contain
]] 
local popupFrameLoaded
local popupframe
function AtlasLoot:PopoupItemFrame(self, data)
	if not data then AtlasLoot_PopupFrame:Hide() return end
	--only create frame first time its used
	if not popupFrameLoaded then
		popupframe = CreateFrame("Frame", "AtlasLoot_PopupFrame")
		popupframe:SetBackdrop({
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
			insets = { left = 4, right = 4, top = 4, bottom = 4 },
		})
		popupframe:EnableMouse()
		popupframe:SetScript("OnLeave", function()
			AtlasLoot:ItemOnLeave(self)
		end)
		popupframe:SetScript("OnEnter", function()
			AtlasLoot_PopupFrame:Show()
		end)
		popupframe:SetWidth(211)
    	popupframe:Hide()
		popupFrameLoaded = true
	end
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
		button:SetScript("OnClick", function(self, arg1) AtlasLoot:ItemOnClick(self, arg1) end)
		button:SetScript("OnEnter", function(self)
			AtlasLoot:ItemOnEnter(self)
			AtlasLoot_PopupFrame:Show()
		end)
		button:SetScript("OnLeave", function(self)
			if not AtlasLoot.Dewdrop:IsOpen(_G["AtlasLoot_PopupButton_"..num]) then
				AtlasLoot:ItemOnLeave(self)
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
		data = data[AtlasLoot:GetReputationFaction(data.Faction)]
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
					AtlasLoot:ItemsLoading(1)
					itemData:ContinueOnLoad(function(itemID)
						AtlasLoot:ItemsLoading(-1)
					end)
				end
			button.icon:SetTexture(GetItemIcon(itemID))
			button.itemID = itemID
			button.itemTexture = self.itemTexture
			local recipe = AtlasLoot:GetRecipeData(itemID, "item")
			if recipe then
			button.craftingData = AtlasLoot:RecipeSource(recipe.spellID)
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
		popupframe:SetWidth((numberBtns*33)+16)
	else
		popupframe:SetWidth(214)
	end
	if numberBtns > 6 then
		popupframe:SetHeight(79)
	elseif numberBtns > 12 then
		popupframe:SetHeight(107)
	else
		popupframe:SetHeight(46)
	end
	popupframe:SetParent(self)
	popupframe:ClearAllPoints()
	popupframe:SetPoint("TOPLEFT",self,0,-25)
	popupframe:Show()
end

--[[
AtlasLoot:AddTooltip(frameb, tooltiptext)
Adds explanatory tooltips to UI objects.
]]
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

 --[[
AtlasLoot:NavButton_OnClick:
Called when 'Back'Button is pressed and calls up the appropriate loot page
]]
function AtlasLoot:BackButton_OnClick()
	AtlasLoot.backEnabled = false
	AtlasLoot:ShowItemsFrame(AtlasLootItemsFrame.refreshBack[1], AtlasLootItemsFrame.refreshBack[2], AtlasLootItemsFrame.refreshBack[3])
end

--[[
AtlasLoot:IsLootTableAvailable(dataID):
Checks if a loot table is in memory and attempts to load the correct LoD module if it isn't
dataID: Loot table dataID
]]
function AtlasLoot:IsLootTableAvailable(dataSource)
	local moduleName = nil
	moduleName = AtlasLoot.ModuleName[dataSource]
	if IsAddOnLoaded(moduleName) then
		return true
	else
		LoadAddOn(moduleName)
	end
end

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(self)
	if AtlasLootDefaultFrame_Map:IsVisible() then
		AtlasLoot:MapSelect(self.mapID, self.mapNum)
	else
		local tablenum, dataID, dataSource = self.tablenum, self.tablebase[1], self.tablebase[2]
		if #_G[dataSource][dataID] > 26 then
			local min, max = AtlasLootDefaultFrameSubTableScrollScrollBar:GetMinMaxValues()
			AtlasLootDefaultFrameSubTableScrollScrollBar:SetValue(tablenum * (max / #_G[dataSource][dataID]))
		end
		AtlasLoot:ShowItemsFrame(dataID, dataSource, tablenum)
	end
end


