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

-- return a copy of the table t
function AtlasLoot:CloneTable(t)				
	local new = {}					-- create a new table
	local i, v = next(t, nil)		-- i is an index of t, v = t[i]
	while i do
		if type(v)=="table" then 
			v=AtlasLoot:CloneTable(v)
		end
		new[i] = v
		i, v = next(t, i)			-- get next index
	end
	return new
end

--Return the spellID of a crafting recipe
function AtlasLoot:GetRecipeSpellID(findID)
	for spellID, itemID in pairs(AtlasLoot_CraftingData["SpellToRecipe"]) do
		if itemID == findID then return spellID end
	end
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

-- Open a ascension db link
function AtlasLoot:OpenDBURL(ID, Type)
    OpenAscensionDBURL("?"..Type.."="..ID)
end

-- create a enchant or item chat link!
function AtlasLoot:Chatlink(ID,chatType,Type)
    if Type == "spell" then
        SendChatMessage(AtlasLoot_GetEnchantLink(ID) ,chatType)
    else
        SendChatMessage(select(2,GetItemInfo(ID)) ,chatType)
    end
end

function AtlasLoot:GetRecipeData(recipeID)
	for _,prof in pairs(TRADESKILL_RECIPES) do
		for _,cat in pairs(prof) do
		   for _,recipe in pairs(cat) do
			  if recipeID == recipe.SpellEntry then
				 return recipe.Reagents
			  end
		   end
		end
	 end
end

-- Get Rep Faction
function AtlasLoot:GetReputationFaction(data)
	local factionIndex = 1
	local lastFactionName
	repeat
	local name, _, standingId = GetFactionInfo(factionIndex)
	if name == lastFactionName then return data end
	lastFactionName  = name
		if data[name] and standingId and standingId > 1 then
			return data[name]
		end
		if data[name] then
			data = data[name]
		end
	factionIndex = factionIndex + 1
	until factionIndex > 200
	return data
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
			AtlasLootItem_OnLeave(self)
		end)
		popupframe:SetScript("OnEnter", function()
			AtlasLoot_PopupFrame:Show()
		end)
		popupframe:SetWidth(181)
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
		button:SetSize(25,25)
		button:EnableMouse()
		button:RegisterForClicks("AnyDown")
		button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
		button.icon = button:CreateTexture(nil,"ARTWORK")
		button.icon:SetSize(25,25)
		button.icon:SetPoint("CENTER")
		button.name = button:CreateFontString(nil,"ARTWORK","GameFontHighlightLarge")
		button.name:SetFont("GameFontHighlightLarge", 15)
        button.name:SetSize(25,25)
        button.name:SetPoint("CENTER", button.icon,0,0)
        button.name:SetJustifyH("CENTER")
		button.name:Hide()
		button.number = num
		button:SetScript("OnClick", function(self, arg1) AtlasLoot:ItemOnClick(self, arg1) end)
		button:SetScript("OnEnter", function(self)
			AtlasLootItem_OnEnter(self)
			AtlasLoot_PopupFrame:Show()
		end)
		button:SetScript("OnLeave", function(self)
			AtlasLootItem_OnLeave(self)
		end)
		
		if num == 1 then
			button:SetPoint("TOPLEFT", "AtlasLoot_PopupFrame", 9, -8)
		elseif num == 7 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_1", 0, -28)
		elseif num == 13 then
			button:SetPoint("BOTTOM", "AtlasLoot_PopupButton_6", 0, -28)
		else
			button:SetPoint("LEFT", _G["AtlasLoot_PopupButton_"..(num-1)],"RIGHT",3,0)
		end
	end
	if data.Faction then
		data = AtlasLoot:GetReputationFaction(data)
	end

	local numberBtns
	for i, item in ipairs(data) do
		createButton(i)
		local button = _G["AtlasLoot_PopupButton_"..i]
		button.icon:SetTexture(GetItemIcon(item.itemID or item[1]))
		button.itemID = item.itemID or item[1]
		if item[2] then
			button.name:SetText(WHITE..item[2])
			button.name:Show()
		else
			button.name:Hide()
		end
		button:Show()
		numberBtns = i
	end
	if numberBtns < 6 then
		popupframe:SetWidth((numberBtns*27.5)+16)
	else
		popupframe:SetWidth(181)
	end
	if numberBtns > 6 then
		popupframe:SetHeight(69)
	elseif numberBtns > 12 then
		popupframe:SetHeight(97)
	else
		popupframe:SetHeight(41)
	end
	popupframe:SetParent(self)
	popupframe:ClearAllPoints()
	popupframe:SetPoint("BOTTOMLEFT",self,0,-65)
	popupframe:Show()
end