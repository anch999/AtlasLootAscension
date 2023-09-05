local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
-- Colours stored for code readability
local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"

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