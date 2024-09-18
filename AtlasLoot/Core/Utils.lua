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

local playerName = UnitName("player")
local realmName = GetRealmName()
local playerFaction = UnitFactionGroup("player")

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

local itemEquipLocConversion = {
	"INVTYPE_HEAD",
	"INVTYPE_NECK",
	"INVTYPE_SHOULDER",
	"INVTYPE_BODY",
	"INVTYPE_CHEST",
	"INVTYPE_WAIST",
	"INVTYPE_LEGS",
	"INVTYPE_FEET",
	"INVTYPE_WRIST",
	"INVTYPE_HAND",
	"INVTYPE_FINGER",
	"INVTYPE_TRINKET",
	"INVTYPE_WEAPON",
	"INVTYPE_SHIELD",
	"INVTYPE_RANGED",
	"INVTYPE_CLOAK",
	"INVTYPE_2HWEAPON",
	"INVTYPE_BAG",
	"INVTYPE_TABARD",
	"INVTYPE_ROBE",
	"INVTYPE_WEAPONMAINHAND",
	"INVTYPE_WEAPONOFFHAND",
	"INVTYPE_HOLDABLE",
	"INVTYPE_AMMO",
	"INVTYPE_THROWN",
	"INVTYPE_RANGEDRIGHT",
	"INVTYPE_QUIVER",
	"INVTYPE_RELIC",
}

function AtlasLoot:GetItemInfo(item)
	item = tonumber(item) and Item:CreateFromID(item) or Item:CreateFromLink(item)
	local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(item.itemID)
	if not item:GetInfo() then
		self:ItemsLoading(1)
		item:ContinueOnLoad(function()
			self:ItemsLoading(-1)
		end)
		local itemInstant = GetItemInfoInstant(item.itemID)
		if itemInstant then
			itemName, itemSubType, itemEquipLoc, itemTexture, itemQuality = itemInstant.name, _G["ITEM_SUBCLASS_"..itemInstant.classID.."_"..itemInstant.subclassID], itemEquipLocConversion[itemInstant.inventoryType], itemInstant.icon, itemInstant.quality
			local color = ITEM_QUALITY_COLORS[itemQuality] or ITEM_QUALITY_COLORS[1]
			itemLink = color:WrapText("|Hitem:"..item.itemID.."|h["..itemName.."]|h|r")
		end
	end
	return itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice
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
				local info = {{recipe.CreatedItemEntry}, "blank", "blank", "blank", "blank", "blank",spellID = recipe.SpellEntry, skillIndex = recipe.SkillIndex}
				local bloodForgedID = self:FindId(recipe.CreatedItemEntry, 1, nil, "Bloodforged")
				if bloodForgedID then
					info[2] = {bloodForgedID}
				end
				if recipe.RecipeItemEntry and recipe.RecipeItemEntry ~= 0 then
					local number = 3
					if info[2] == "blank" then
						number = 2
					end
					info[number] = {recipe.RecipeItemEntry}
					info.Recipe = recipe.RecipeItemEntry
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

function AtlasLoot:IsRecipeKnown(ID, profile)
	if not profile or not profile.professions then return end
	for _, prof in pairs(profile.professions) do
		if prof.knownRecipes[ID] then return true end
	end
end

function AtlasLoot:GetKnownRecipes(spellID)
    --returns a list of characters with the recipe
	local text
    for key, profile in pairs(self.db.profiles) do
        if gsub(key,"-",""):match(gsub(realmName,"-","")) and not gsub(key,"-",""):match(gsub(playerName,"-","")) and self:IsRecipeKnown(spellID, profile) then
            local charName = strsplit("-", key, 5)
            text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
        end
    end
	return text
end

function AtlasLoot:IsProfessionKnown(skillID, profile)
	if profile and profile.professions and profile.professions[skillID] then return true end
end

function AtlasLoot:IsRecipeUnknown(ID)
	local recipeData = self:GetRecipeData(ID, "item")
	if not recipeData or not recipeData.skillIndex then return end

	local text
	for key, profile in pairs(self.db.profiles) do
		if gsub(key,"-",""):match(gsub(realmName,"-","")) and
		self:IsProfessionKnown(recipeData.skillIndex, profile) and not self:IsRecipeKnown(recipeData.spellID, profile) then
			local charName = strsplit("-", key, 5)
			text = text and text..", "..gsub(charName, " ", "") or gsub(charName, " ", "")
		end
	end
	return text
end

local professionTable = {
	[171] = {
	"AlchemyCLASSIC",
	"AlchemyTBC",
	"AlchemyWRATH",
},
	[164] = {
	"SmithingCLASSIC",
	"SmithingTBC",
	"SmithingWRATH",
	},
	[333] = {
	"EnchantingCLASSIC",
	"EnchantingTBC",
	"EnchantingWRATH",
},
	[202] = {
	"EngineeringCLASSIC",
	"EngineeringTBC",
	"EngineeringWRATH",
},
	[755] = {
	"JewelcraftingTBC",
	"JewelcraftingWRATH",
},
	[165] = {
	"LeatherworkingCLASSIC",
	"LeatherworkingTBC",
	"LeatherworkingWRATH",
},
	[197] = {
	"TailoringCLASSIC",
	"TailoringTBC",
	"TailoringWRATH",
},
	[186] = {
	"MiningCLASSIC",
	"MiningTBC",
	"MiningWRATH",
},
	[185] = {
	"CookingCLASSIC",
	"CookingTBC",
	"CookingWRATH",
},
	[129] = {
	"FirstAidCLASSIC",
	"FirstAidTBC",
	"FirstAidWRATH",
},
	[773] = {
	"Inscription",
},
}

local craftingXpac = { ClassicCrafting = 1, BCCrafting = 2, WrathCrafting = 3 }

function AtlasLoot:SetRecipeMapPins()
	local xpac = GetAccountExpansionLevel()+1
	self:LoadAllModules()
	for profKey, _ in pairs(self.db.profile.professions) do
		if professionTable[profKey] then
			for _, profTable in pairs(professionTable[profKey]) do
				if craftingXpac[AtlasLoot_Data[profTable].Type] <= xpac then
					for _, profType in pairs(AtlasLoot_Data[profTable]) do
						if type(profType) == "table" then
							for _, recipeData in pairs(profType) do
								if recipeData.spellID and not CA_IsSpellKnown(recipeData.spellID) then
									local craftingData = self:GetRecipeSource(recipeData.spellID)
									if craftingData then
										for _,v in pairs(craftingData) do
											if v.cords and tonumber(v.cords[1]) ~= 0 and tonumber(v.cords[2]) ~= 0 then
												local line1 = v[1]
												local line2 = v[2]
												if v.fac and (v.fac[2] == playerFaction or v.fac[2] == "Netural") then line1 = v.fac[1]..line1 end
												self:AddWayPoint({ line2, tonumber(v.cords[1]), tonumber(v.cords[2]), line1})
											end
										end
									end
								end
							end
						end
					end
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
		local button = CreateFrame("Button", "AtlasLoot_PopupButton_"..num, AtlasLoot_PopupFrame, "ItemButtonTemplate")
		button:SetID(num)
		button:SetSize(30,30)
		button:EnableMouse()
		button:RegisterForClicks("AnyDown")
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
			local correctID = item.itemID or item[1]
			local itemID = self:FindId(correctID, ItemindexID) or correctID
			local itemData = {self:GetItemInfo(itemID)}
			SetItemButtonTexture(button, itemData[10])
			SetItemButtonQuality(button, itemData[3])

			button.itemID = itemID
			button.itemTexture = frame.itemTexture
			local recipe = self:GetRecipeData(itemID, "item")
			if recipe then
			button.craftingData = self:GetRecipeSource(recipe.spellID)
			end
			if item[2] then
				SetItemButtonCount(button, item[2])
			else
				SetItemButtonCount(button)
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
    self:ScheduleTimer("ItemRefreshTimer", .5)
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

local function CheckTooltipForDuplicate(tooltip, text)
    -- Check if we already added to this tooltip.
    for i = 1, 30 do
        local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
        local textOld
        if frame then textOld = frame:GetText() end
        if textOld and textOld == text then return true end
    end
end

-- finds and sets the tooltip for the itemID that it is sent
local function SetTooltip(itemID, tooltip)
    local self = AtlasLoot
	if not self.db.profile.showUnknownRecipeTooltip or UnitAffectingCombat("player") then return end
	local text = self:IsRecipeUnknown(itemID)
	if not text then return end
	text = "Recipe could be learned by: "..GREEN..text
	if not CheckTooltipForDuplicate(tooltip, text) then
		tooltip:AddLine(text)
	end
end

-- item tooltip handler
local function TooltipHandlerItem(tooltip)
    --checks for combat less likley to cause a lag spike
    if UnitAffectingCombat("player") then return end
    --get item link and itemID
	local link = select(2, tooltip:GetItem())
	if not link then return end
	local itemID = GetItemInfoFromHyperlink(link)
	if not itemID then return end
    SetTooltip(itemID, tooltip)
end

GameTooltip:HookScript("OnTooltipSetItem", TooltipHandlerItem)

function AtlasLoot:StripTextColor(txt)
	local txt = txt or ""
	txt = string.gsub( txt, "|c%x%x%x%x%x%x%x%x", "" )
	txt = string.gsub( txt, "|c%x%x %x%x%x%x%x", "" ) -- the trading parts colour has a space instead of a zero for some weird reason
	txt = string.gsub( txt, "|r", "" )
	return txt
end

function AtlasLoot:CheckIfEmptyTable(table)
	if next(table) then
		return false
	else
		return true
	end
end

function AtlasLoot:GetRecipeSource(spellID)
	if not spellID then return end
	local cData = AtlasLoot_CraftingData
	local data = {}
	-- extra information on where to find the recipe
	-- trainer learnt
	local trainer = cData["Trainer"][spellID]
	if trainer then tinsert(data, {AL["Source"]..": "..WHITE..trainer}) end
	-- aquire type
	local aquireType = cData["AquireType"][spellID]
	if aquireType then
		tinsert(data, {AL["Source"]..": "..WHITE..cData[aquireType[1]][aquireType[2]][1]})
	end
	-- vendor recipe
	local vendor = cData["Vendor"][spellID]
	if vendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Vendor"]})
		for _,v in pairs(vendor) do
			local vendor = AtlasLoot_CraftingData["VendorList"][v]
			tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5]})
		end
	end
	-- vendor recipe
	local recipeRepVendor = cData["RecipeRepVendor"][spellID]
	if recipeRepVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Vendor"]})
		local vendor = AtlasLoot_CraftingData["VendorList"][spellID]
		for	i = 3, 6 do
			if vendor and vendor[i] then
			tinsert(data, {vendor[1], vendor[2], fac = vendor[i]})
			end
		end
	end
	--limited vendor recipes
	local limitedVendor = cData["LimitedVendor"][spellID]
	if limitedVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Limited Stock"]})
		local sort = {}
		local limited = false
		for i,v in pairs(limitedVendor) do
			 if limited then
				 tinsert(sort[i-1],v)
				 limited = false
			 else
				 sort[i] = {v}
				 limited = true
			 end
		end
		for _,v in pairs(sort) do
			 local vendor = AtlasLoot_CraftingData["VendorList"][v[1]]
			 tinsert(data, {vendor[1], vendor[2], cords = {vendor[3], vendor[4]}, fac = vendor[5], limited = v[2]})
		end
	end
	--mob drop
	local mobDrop = cData["MobDrop"][spellID]
	if mobDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Mob Drop"]})
		for _,v in pairs(mobDrop) do
			local mob = AtlasLoot_CraftingData["MobList"][v]
			local cords = nil
			if mob[3] ~= 0 and mob[4] ~= 0 then
				cords = {mob[3], mob[4]}
			end
			tinsert(data, {mob[1], WHITE..mob[2], cords})
		end
	end
	-- World Drop
	local worldDrop = cData["WorldDrop"][spellID]
	if worldDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["World Drop"]})
		local text = worldDrop[1]
		if worldDrop[2] then
			text = text.." / "..worldDrop[2]
		end
		tinsert(data, {text})
	end
	--quest
	local questDrop = cData["QuestDrop"][spellID]
	if questDrop then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Quest"]})
		for _,v in pairs(questDrop) do
			local quest = AtlasLoot_CraftingData["QuestList"][v]
			tinsert(data, {quest[1],  quest[2], cords = {quest[3], quest[4]}, fac = quest[5]})
		end
	end
	--rep vendor
	local repVendor = cData["RepVendor"][spellID]
	if repVendor then
		tinsert(data, {AL["Source"]..": "..WHITE..AL["Reputation Vendor"]})
		local line1, line2
		local list = {}
		for i,v in pairs(repVendor) do
			 if type(v) == "table" then
				 for i,v in pairs(v) do
					 if i == 1 then
						 line1 = AL["Faction"]..": "..WHITE..v
					 elseif i == 2 then
						 line2 = AL["Required Reputation"]..": "..WHITE..v
					 else
						 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
					 end
				 end
			 else
				 if i == 1 then
					 line1 = AL["Faction"]..": "..WHITE..v
				 elseif i == 2 then
					 line2 = AL["Required Reputation"]..": "..WHITE..v
				 else
					 tinsert(list,AtlasLoot_CraftingData["VendorList"][v])
				 end
			 end
		end
		tinsert(data, {line1, line2})
		for _,v in pairs(list) do
			local cords
			if v[3] ~= 0 and v[4] ~= 0 then
				cords = {v[3], v[4]}
			end
			tinsert(data, {v[1], WHITE..v[2], cords, fac = v[5]})
		end
	end
	return data
end

-- handle minimap tooltip
function AtlasLoot:GetTipAnchor(frame)
    local x, y = frame:GetCenter()
    if not x or not y then return 'TOPLEFT', 'BOTTOMLEFT' end
    local hhalf = (x > UIParent:GetWidth() * 2 / 3) and 'RIGHT' or (x < UIParent:GetWidth() / 3) and 'LEFT' or ''
    local vhalf = (y > UIParent:GetHeight() / 2) and 'TOP' or 'BOTTOM'
    return vhalf .. hhalf, frame, (vhalf == 'TOP' and 'BOTTOM' or 'TOP') .. hhalf
end

-- Search Auction House for crafting patern/enchant
function AtlasLoot:SearchAuctionHouse(text)
	if not text then return end
	if BrowseName:IsVisible() then
		BrowseName:SetText(text)
		BrowseSearchButton:Click()
	elseif Atr_Search_Box:IsVisible() then
		Atr_Search_Box:SetText(text)
		Atr_Search_Button:Click()
	end

end

function AtlasLoot:GetDropRate(lootTable, lootGroup)
	if not lootGroup then return end
	local count = 0
	for _, item in pairs(lootTable) do
		if type(item) == "table" and item.lootGroup and item.lootGroup == lootGroup then
			count = count + 1
		end
	end
	return string.format("%.2f%%",lootTable.LootGroups[lootGroup]/count) or nil
end