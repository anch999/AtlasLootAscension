--[[
Functions:
AtlasLoot_DewDropClick(tablename, text, tabletype, tabletype2)
AtlasLoot_DewDropSubMenuClick(tablename, text)
AtlasLoot_DewdropExpansionMenuClick(tablename, text)
AtlasLoot_DefaultFrame_OnShow()
AtlasLootDefaultFrame_OnHide()
AtlasLoot_DewdropExpansionMenuClick(raidtablename, itemID, itemColour)
AtlasLoot_DifficultyDisable()
AtlasLoot_DifficultyEnable(dataID, dataSource)
AtlasLootDefaultFrame_GetRaidDifficulty(raidtablename, itemID, itemColour)
AtlasLoot_DewdropExpansionMenuRegister(loottable)
AtlasLoot_DewdropSubMenuRegister(loottable)
AtlasLoot_DewdropRegister()
AtlasLoot_SetNewStyle(style)
]]

--Include all needed libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

--Load the 2 dewdrop menus
AtlasLoot_Dewdrop = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropSubMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DewdropExpansionMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DifficultyAtlas = AceLibrary("Dewdrop-2.0");

ItemindexID = 2;

AtlasLoot_Data["AtlasLootFallback"] = {
    EmptyInstance = {};
};

--[[
AtlasLootDefaultFrame_OnShow:
Called whenever the loot browser is shown and sets up buttons and loot tables
]]
function AtlasLootDefaultFrame_OnShow()
    --Definition of where I want the loot table to be shown
    pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };
    --Having the Atlas and loot browser frames shown at the same time would
    --cause conflicts, so I hide the Atlas frame when the loot browser appears
    if AtlasFrame then
        AtlasFrame:Hide();
    end
    --Remove the selection of a loot table in Atlas
    AtlasLootItemsFrame.activeBoss = nil;
    --Set the item table to the loot table
    AtlasLoot_SetItemInfoFrame(pFrame);
        --Show the last displayed loot table
    local lastboss = AtlasLoot.db.profile.LastBoss;
    if lastboss then
        ATLASLOOT_CURRENTTABLE = lastboss[7];
        ATLASLOOT_LASTMODULE = lastboss[6];
        AtlasLoot_IsLootTableAvailable(lastboss[6]);
        AtlasLoot_ShowItemsFrame(lastboss[1], AtlasLoot_Data, AtlasLoot_Data[lastboss[1]][lastboss[5]].Name, pFrame, lastboss[5]);
        AtlasLootDefaultFrame_SubTableScrollFrameUpdate(lastboss[1], AtlasLoot_Data, pFrame, lastboss[5]);
        AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
        AtlasLoot_DewdropSubMenuRegister(AtlasLoot_SubMenus[lastboss[7]]);
    else
        AtlasLoot_ShowItemsFrame("EmptyTable", AtlasLoot_Data, AtlasLoot_Data["EmptyTable"].Name,pFrame,1);
    end
end

--[[
AtlasLootDefaultFrame_OnHide:
When we close the loot browser, re-bind the item table to Atlas
and close all Dewdrop menus
]]
function AtlasLootDefaultFrame_OnHide()
    AtlasLoot_Dewdrop:Close(1);
    AtlasLoot_DewdropSubMenu:Close(1);
    AtlasLoot_DewdropExpansionMenu:Close(1);
end

--[[
AtlasLoot_DewDropClick(tablename, text, tabletype):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_Dewdrop is clicked
]]
function AtlasLoot_DewDropClick(tablename, text, tablenum)
    ATLASLOOT_FILTER_ENABLE = false;
    AtlasLootFilterCheck:SetChecked(false);
    tablename = tablename .. AtlasLoot_Expac;
    ATLASLOOT_CURRENTTABLE = tablename;
    tablenum = tablenum or 1;
    ATLASLOOT_LASTMODULE = AtlasLoot_SubMenus[tablename].Module;
    AtlasLootDefaultFrame_Menu:SetText(text);
    AtlasLoot_IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module);
    AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
    AtlasLoot_DewdropSubMenuRegister(AtlasLoot_SubMenus[tablename]);
    AtlasLoot_DewDropSubMenuClick(AtlasLoot_SubMenus[tablename][tablenum][2])
    AtlasLoot_Dewdrop:Close(1);
end

--[[
AtlasLoot_DewDropSubMenuClick(tablename, text):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_DewdropSubMenu is clicked
]]
function AtlasLoot_DewDropSubMenuClick(tablename)
    --Definition of where I want the loot table to be shown
    pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };
    --Show the select loot table
    local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1;
    ItemindexID = ItemindexID or 2;
    if AtlasLoot_Data[tablename].Type == "Crafting" then
        ItemindexID = "Pattern";
    end
    --Show the table that has been selected
    AtlasLoot_ShowItemsFrame(tablename, AtlasLoot_Data, AtlasLoot_Data[tablename][tablenum].Name, pFrame, tablenum);
    AtlasLootDefaultFrame_SubTableScrollFrameUpdate(tablename, AtlasLoot_Data, pFrame, tablenum);
    AtlasLoot_DewdropSubMenu:Close(1);
end

--[[
AtlasLoot_DewdropExpansionMenuClick(expansion, name):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot_DewdropSubMenu is clicked
]]
function AtlasLoot_DewdropExpansionMenuClick(expansion, name)
	AtlasLootDefaultFrame_ExpansionMenu:SetText(name);
    AtlasLoot_DewdropExpansionMenu:Close(1);
    AtlasLoot_Expac = expansion;
    if ATLASLOOT_CURRENTTABLE then
    local tablename = AtlasLoot_CleandataID(ATLASLOOT_CURRENTTABLE, 1) .. AtlasLoot_Expac;
    AtlasLoot_IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module);
    AtlasLoot_DewdropSubMenu:Unregister(AtlasLootDefaultFrame_SubMenu);
    AtlasLoot_DewdropSubMenuRegister(AtlasLoot_SubMenus[tablename]);
    end
end

--[[
AtlasLoot_DewdropExpansionMenuRegister():
Adds expansion menu from expansion table in mainmenus.lua
]]
function AtlasLoot_DewdropExpansionMenuRegister()
    AtlasLoot_DewdropExpansionMenu:Register(AtlasLootDefaultFrame_ExpansionMenu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if AtlasLoot_ExpansionMenu then
                for k,v in ipairs(AtlasLoot_ExpansionMenu) do
                    if type(v) == "table" then
                    --If a link to show a expansion menu
                        local checked = false;
                            AtlasLoot_Dewdrop:AddLine(
                                'text', v[1],
                                'textR', 1,
                                'textG', 0.82,
                                'textB', 0,
                                'func', AtlasLoot_DewdropExpansionMenuClick,
                                'arg1', v[2],
                                'arg2', v[1],
                                'arg3', k,
                                'notCheckable', true
                            )
                    end
                end
            end
            --Close button
            AtlasLoot_Dewdrop:AddLine(
                'text', AL["Close Menu"],
                'textR', 0,
                'textG', 1,
                'textB', 1,
                'func', function() AtlasLoot_Dewdrop:Close() end,
                'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot_DewdropSubMenuRegister(loottable):
loottable - Table defining the sub menu
Generates the sub menu needed by passing a table of loot tables and titles
]]
function AtlasLoot_DewdropSubMenuRegister(loottable)
	AtlasLoot_DewdropSubMenu:Register(AtlasLootDefaultFrame_SubMenu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
                for k,v in pairs(loottable) do
					if type(v) == "table" then
                        if v[3] == "Header" then
                            AtlasLoot_DewdropSubMenu:AddLine(
                                    'text', v[1],
                                    'textR', 0.2,
                                    'textG', 0.82,
                                    'textB', 0.5,
                                    'func', AtlasLoot_DewDropSubMenuClick,
                                    'arg1', v[2],
                                    'arg2', v[1],
                                    'arg2', v[3],
                                    'notCheckable', true
                                )
                        else
                            AtlasLoot_DewdropSubMenu:AddLine(
                                'text', AtlasLoot_Data[v[2]].Name,
                                'func', AtlasLoot_DewDropSubMenuClick,
                                'arg1', v[2],
                                'arg2', AtlasLoot_Data[v[2]].Name,
                                'notCheckable', true
                            )
                        end
                    end
                end
                --Close button
                AtlasLoot_DewdropSubMenu:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() AtlasLoot_DewdropSubMenu:Close() end,
					'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot_DewdropRegister:
Constructs the main category menu from a tiered table
]]
function AtlasLoot_DewdropRegister()
	AtlasLoot_Dewdrop:Register(AtlasLootDefaultFrame_Menu,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
				if AtlasLoot_Modules then
                    for k,v in ipairs(AtlasLoot_Modules) do
                        --If a link to show a submenu
                        local checked = false;
                        AtlasLoot_Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 1,
                            'textG', 0.82,
                            'textB', 0,
                            'func', AtlasLoot_DewDropClick,
                            'arg1', v[2],
                            'arg2', v[1],
                            'arg3', v[3],
                            'notCheckable', true
                        )
                    end
                end
                --Close button
				AtlasLoot_Dewdrop:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() AtlasLoot_Dewdrop:Close() end,
					'notCheckable', true
				)
		end,
		'dontHook', true
	)
end

--[[
AtlasLoot_SetNewStyle:
Create the new Default Frame style
	style = "new"
	style = "old"
]]
function AtlasLoot_SetNewStyle(style)

	local buttons = {
		"AtlasLootDefaultFrame_Options",
		"AtlasLootDefaultFrame_LoadModules",
		"AtlasLootDefaultFrame_Menu",
		"AtlasLootDefaultFrame_SubMenu",
		"AtlasLootDefaultFrame_ExpansionMenu",
		"AtlasLootDefaultFrame_Preset1",
		"AtlasLootDefaultFrame_Preset2",
		"AtlasLootDefaultFrame_Preset3",
		"AtlasLootDefaultFrame_Preset4",
		"AtlasLootDefaultFrameSearchButton",
		"AtlasLootDefaultFrameSearchClearButton",
		"AtlasLootDefaultFrameLastResultButton",
		"AtlasLootDefaultFrameWishListButton",
        "AtlasLootDefaultFrameAdvancedSearchButton",
<<<<<<< Updated upstream
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_SearchButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_ClearButton",
=======
        "AtlasLootDefaultFrame_MapButton",
>>>>>>> Stashed changes
	}

	if style == "new" then
		AtlasLootDefaultFrame_LootBackground:SetBackdrop({bgFile = "Interface/AchievementFrame/UI-Achievement-StatsBackground"});
		AtlasLootDefaultFrame_LootBackground:SetBackdropColor(1,1,1,0.5)
		AtlasLootDefaultFrame:SetBackdrop({bgFile = "Interface/AchievementFrame/UI-Achievement-AchievementBackground",
			  edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
			  edgeSize = 16,
			  insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		AtlasLootDefaultFrame:SetBackdropColor(1,1,1,0.5)
		AtlasLootDefaultFrame:SetBackdropBorderColor(1,0.675,0.125,1)
		AtlasLootDefaultFrameHeader:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Alert-Background.blp")
		AtlasLootDefaultFrameHeader:SetTexCoord(0,0.605,0,0.703)
		AtlasLootDefaultFrameHeader:SetWidth(299)
		AtlasLootDefaultFrameHeader:SetHeight(60)
		AtlasLootDefaultFrameHeader:SetPoint("TOP",AtlasLootDefaultFrame,"TOP",-3,22)

		AtlasLootDefaultFrame_Options:SetNormalTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		AtlasLootDefaultFrame_Options:SetHeight(24)
		AtlasLootDefaultFrame_Options:SetPushedTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		AtlasLootDefaultFrame_Options:SetHeight(24)

		local function SetButtons(path)
		   getglobal(path):SetNormalTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		   getglobal(path):SetHeight(24)
		   getglobal(path):SetPushedTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
		   getglobal(path):SetHeight(24)
		   local tex = getglobal(path):GetNormalTexture();
		   tex:SetTexCoord(0, 0.6640625, 0, 0.8);
		   tex:SetHeight(32)

		   local tex2 = getglobal(path):GetPushedTexture();
		   tex2:SetTexCoord(0, 0.6640625, 0, 0.8);
		   tex2:SetHeight(32)
		end

		for k,v in pairs(buttons) do
		   SetButtons(v)
		end
	elseif style == "old" then

		AtlasLootDefaultFrame_LootBackground:SetBackdrop({bgFile = ""});
		AtlasLootDefaultFrame_LootBackground:SetBackdropColor(0,0,0.5,0.5)

		AtlasLootDefaultFrame:SetBackdrop({bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
			  edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
			  edgeSize = 32,
			  insets = { left = 11, right = 12, top = 12, bottom = 11 }});
		AtlasLootDefaultFrame:SetBackdropColor(1,1,1,1)
		AtlasLootDefaultFrame:SetBackdropBorderColor(1,1,1,1)


		AtlasLootDefaultFrameHeader:SetTexture("Interface/DialogFrame/UI-DialogBox-Header")
		AtlasLootDefaultFrameHeader:SetTexCoord(0,1,0,1)
		AtlasLootDefaultFrameHeader:SetWidth(425)
		AtlasLootDefaultFrameHeader:SetHeight(64)
		AtlasLootDefaultFrameHeader:SetPoint("TOP",AtlasLootDefaultFrame,"TOP",0,12)

		AtlasLootDefaultFrame_Options:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
		AtlasLootDefaultFrame_Options:SetHeight(20)
		AtlasLootDefaultFrame_Options:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
		AtlasLootDefaultFrame_Options:SetHeight(20)

		local function SetButtons(path)
		   getglobal(path):SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
		   getglobal(path):SetHeight(20)
		   getglobal(path):SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
		   getglobal(path):SetHeight(20)
		   local tex = getglobal(path):GetNormalTexture();
		   tex:SetTexCoord(0, 0.625, 0, 0.6875);
		   tex:SetHeight(20)

		   local tex2 = getglobal(path):GetPushedTexture();
		   tex2:SetTexCoord(0, 0.625, 0, 0.6875);
		   tex2:SetHeight(20)
		end

		for k,v in pairs(buttons) do
		   SetButtons(v)
		end

	end
end
