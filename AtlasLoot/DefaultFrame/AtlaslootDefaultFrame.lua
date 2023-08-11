--[[
Functions:
AtlasLoot:DewDropClick(tablename, text, tabletype, tabletype2)
AtlasLoot:DewDropSubMenuClick(tablename)
AtlasLoot:DewdropExpansionMenuClick(tablename, text)
AtlasLoot_DefaultFrame_OnShow()
AtlasLootDefaultFrame_OnHide()
AtlasLoot:DewdropExpansionMenuOpen(loottable)
AtlasLoot:DewdropSubMenuOpen(loottable)
AtlasLoot:DewdropOpen()
AtlasLoot:SetNewStyle(style)
]]

--Include all needed libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local WHITE = "|cffFFFFFF";
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
    --Remove the selection of a loot table in Atlas
    AtlasLootItemsFrame.activeBoss = nil;
    --Set the item table to the loot table
    --Show the last displayed loot table
    local lastboss = AtlasLoot.db.profile.LastBoss[AtlasLoot_Expac];
    if AtlasLoot.db.profile.AutoCurrentInstance and AtlasLoot:ShowInstance() then
        return;
    elseif lastboss and lastboss[4] then
        AtlasLoot.currentTable = lastboss[5];
        AtlasLoot.lastModule = lastboss[4];
        AtlasLoot.moduleName = lastboss[6];
        AtlasLoot:IsLootTableAvailable(lastboss[4]);
        AtlasLootDefaultFrame_Menu:SetText(AtlasLoot.moduleName);
        AtlasLoot:ShowItemsFrame(lastboss[1], "AtlasLoot_Data", lastboss[3]);
    else
        AtlasLoot:ShowItemsFrame("EmptyTable", "AtlasLoot_Data", 1);
    end
end

-- Show the Instance you are in
function AtlasLoot:ShowInstance()
    for _, v in pairs(AtlasLoot_SubMenus) do
        for _, t in ipairs(v) do
            if t[4] == BabbleZone[GetRealZoneText()] or (t[5] and t[5] == BabbleZone[GetRealZoneText()]) then
                AtlasLoot.currentTable = v.SubMenu;
                AtlasLoot.lastModule = v.Module;
                AtlasLoot:IsLootTableAvailable(AtlasLoot.lastModule);
                AtlasLoot:ShowItemsFrame(t[2], "AtlasLoot_Data", 1);
                return true;
            end
        end
    end
end


--Expand Frame Size
function AtlasLoot:ExpandFrame(setup, updatedb)
    local function buttonResize(expanded)
        if expanded then
            for num = 1, 30 do
                _G["AtlasLootItem_"..num.."_Name"]:SetSize(400,12)
            end
            AtlasLootItem_1:ClearAllPoints()
            AtlasLootItem_1:SetPoint("TOP", "AtlasLootItemsFrame", "TOP",-180,-35);
            AtlasLootItem_16:ClearAllPoints()
            AtlasLootItem_16:SetPoint("TOP", "AtlasLootItemsFrame", "TOP", 180,-35);
        else
            for num = 1, 30 do
                _G["AtlasLootItem_"..num.."_Name"]:SetSize(205,12)
            end
            AtlasLootItem_1:ClearAllPoints()
            AtlasLootItem_1:SetPoint("TOP", "AtlasLootItemsFrame", "TOP",-125,-35);
            AtlasLootItem_16:ClearAllPoints()
            AtlasLootItem_16:SetPoint("TOP", "AtlasLootItemsFrame", "TOP", 125,-35);
        end
    end
    local function expand()
        AtlasLootDefaultFrame:SetSize(1110,690);
        AtlaslLoot_LootBackground:SetSize(770,515)
        AtlasLootItemsFrame:SetSize(765,510)
    end
    local function compact()
        AtlasLootDefaultFrame:SetSize(880,690);
        AtlaslLoot_LootBackground:SetSize(540,515)
        AtlasLootItemsFrame:SetSize(535,510)
    end
    if setup then
        expand()
        buttonResize(true)
    else
        if not AtlasLoot.frameExpanded then
            expand()
            buttonResize(true)
            AtlasLoot.frameExpanded = true
        else
            compact()
            buttonResize(false)
            AtlasLoot.frameExpanded = false
        end
    end
    if updatedb then AtlasLoot.db.profile.FrameExpanded = AtlasLoot.frameExpanded end
end

--[[
AtlasLootDefaultFrame_OnHide:
When we close the loot browser, re-bind the item table to Atlas
and close all Dewdrop menus
]]
function AtlasLootDefaultFrame_OnHide()
    AtlasLoot.Dewdrop:Close(1);
end

--[[
AtlasLoot:DewDropClick(tablename, text, tabletype):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot.Dewdrop is clicked
]]
function AtlasLoot:DewDropClick(tablename, text, tablenum)
    AtlasLoot.filterEnable = false;
    AtlasLoot.backEnabled = false;
    AtlasLoot.moduleName = text;
    AtlasLootFilterCheck:SetChecked(false);
    tablename = tablename .. AtlasLoot_Expac;
    AtlasLoot.currentTable = tablename;
    tablenum = tablenum or 1;
    AtlasLoot.lastModule = AtlasLoot_SubMenus[tablename].Module;
    AtlasLootDefaultFrame_Menu:SetText(text);
    AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module);
    local lasttable = AtlasLoot.db.profile[AtlasLoot.currentTable];
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3]);
        else
            AtlasLoot:ShowItemsFrame(AtlasLoot_SubMenus[tablename][tablenum][2], "AtlasLoot_Data", tablenum);
        end
end

--[[
AtlasLoot:DewDropSubMenuClick(tablename):
tablename - Name of the loot table in the database
Called when a button in AtlasLoot.DewdropSubMenu is clicked
]]
function AtlasLoot:DewDropSubMenuClick(tablename)
    AtlasLoot.backEnabled = false;
    --Show the select loot table
    local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1;
    --Show the table that has been selected
    AtlasLoot:ShowItemsFrame(tablename, "AtlasLoot_Data", tablenum);
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
    );
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

--[[
AtlasLoot:DewdropExpansionMenuClick(expansion, name):
expansion - expansion to load
name - label for the expansion
Called when a button in DewdropExpansionMenuClick is clicked
]]
function AtlasLoot:DewdropExpansionMenuClick(expansion, name)
    AtlasLoot.backEnabled = false;
    AtlasLootDefaultFrame_ExpansionMenu:SetText(name);
    AtlasLoot_Expac = expansion;
    if AtlasLoot.currentTable then
        AtlasLoot.currentTable = AtlasLoot:CleandataID(AtlasLoot.currentTable, 1) .. AtlasLoot_Expac;
        AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[AtlasLoot.currentTable].Module);
        local tablename = AtlasLoot_SubMenus[AtlasLoot.currentTable][1][2];
        local lasttable = AtlasLoot.db.profile[AtlasLoot.currentTable];
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3]);
        else
            local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1;
            AtlasLoot:ShowItemsFrame(tablename, "AtlasLoot_Data", tablenum);
        end
    end
end

--[[
AtlasLoot:DewdropExpansionMenuOpen():
Adds expansion menu from expansion table in mainmenus.lua
]]
function AtlasLoot:DewdropExpansionMenuOpen()
    local frame = AtlasLootDefaultFrame_ExpansionMenu;
    if AtlasLoot.Dewdrop:IsOpen(frame) then AtlasLoot.Dewdrop:Close() return end
    AtlasLoot.Dewdrop:Register(frame,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            if AtlasLoot_ExpansionMenu then
                for k, v in ipairs(AtlasLoot_ExpansionMenu) do
                    if type(v) == "table" then
                        --If a link to show a expansion menu
                        AtlasLoot.Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 1,
                            'textG', 0.82,
                            'textB', 0,
                            'func', function() AtlasLoot:DewdropExpansionMenuClick(v[2], v[1]) end,
                            'textHeight', 12,
                            'textWidth', 12,
                            'closeWhenClicked', true,
                            'notCheckable', true
                        )
                    end
                end
            end
            --Close button
            AtlasLoot:CloseDewDrop(true,35)
        end,
        'dontHook', true
    )
    AtlasLoot.Dewdrop:Open(frame)
end

--[[
AtlasLoot:DewdropSubMenuOpen(loottable):
loottable - Table defining the sub menu
Generates the sub menu needed by passing a table of loot tables and titles
]]
function AtlasLoot:DewdropSubMenuOpen(loottable)
    local frame = AtlasLootDefaultFrame_SubMenu
    if AtlasLoot.Dewdrop:IsOpen(frame) then AtlasLoot.Dewdrop:Close() return end
    AtlasLoot.Dewdrop:Register(frame,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            for k, v in pairs(loottable) do
                if type(v) == "table" then
                    if v[3] == "Header" then
                        if k ~= 1 then AtlasLoot:AddDividerLine(40) end
                        AtlasLoot.Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 0.2,
                            'textG', 0.82,
                            'textB', 0.5,
                            'textHeight', 13,
                            'textWidth', 13,
                            'func', function(arg1) AtlasLoot:DewDropSubMenuClick(arg1) end,
                            'arg1', v[2],
                            'notCheckable', true
                        )
                    else
                        AtlasLoot.Dewdrop:AddLine(
                            'text', AtlasLoot_Data[v[2]].Name,
                            'func', function(arg1) AtlasLoot:DewDropSubMenuClick(arg1) end,
                            'arg1', v[2],
                            'textHeight', 12,
                            'textWidth', 12,
                            'closeWhenClicked', true,
                            'notCheckable', true
                        )
                    end
                end
            end
            --Close button
            AtlasLoot:CloseDewDrop(true,40)
        end,
        'dontHook', true
    )
    AtlasLoot.Dewdrop:Open(frame)
end

--[[
AtlasLoot:DewdropOpen:
Constructs the main category menu from a tiered table
]]
function AtlasLoot:DewdropOpen()
    local frame = AtlasLootDefaultFrame_Menu
    if AtlasLoot.Dewdrop:IsOpen(frame) then AtlasLoot.Dewdrop:Close() return end
    local loaded
    if not loaded then
        AtlasLoot.Dewdrop:Register(frame,
            'point', function(parent)
                return "TOP", "BOTTOM"
            end,
            'children', function(level, value)
                if AtlasLoot_Modules then
                    for k, v in ipairs(AtlasLoot_Modules) do
                        --If a link to show a submenu
                        AtlasLoot.Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 1,
                            'textG', 0.82,
                            'textB', 0,
                            'func', function() AtlasLoot:DewDropClick(v[2], v[1], v[3]) end,
                            'textHeight', 12,
                            'textWidth', 12,
                            'closeWhenClicked', true,
                            'notCheckable', true
                        )
                    end
                end
                --Close button
                AtlasLoot:CloseDewDrop(true,35)
            end,
            'dontHook', true
        )
    end
    AtlasLoot.Dewdrop:Open(frame)
end

--[[
AtlasLoot:SetNewStyle:
Create the new Default Frame style
	style = "new"
	style = "old"
]]
function AtlasLoot:SetNewStyle(style)

    local buttons = {
        --"AtlasLootDefaultFrame_Menu",
        --"AtlasLootDefaultFrame_SubMenu",
        --"AtlasLootDefaultFrame_ExpansionMenu",
        "AtlasLootDefaultFrame_Preset1",
        "AtlasLootDefaultFrame_Preset2",
        "AtlasLootDefaultFrame_Preset3",
        "AtlasLootDefaultFrame_Preset4",
        "AtlasLootDefaultFrameSearchButton",
        "AtlasLootDefaultFrameSearchClearButton",
        "AtlasLootDefaultFrameLastResultButton",
        "AtlasLootDefaultFrameWishListButton",
        "AtlasLootDefaultFrameAdvancedSearchButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_SearchButton",
        "AtlasLootDefaultFrame_AdvancedSearchPanel_ClearButton",
        "AtlasLootDefaultFrame_MapButton",
        "AtlasLootDefaultFrame_MapSelectButton",
        "AtlasLootDefaultFrame_LoadInstanceButton",
        "AtlasLootDefaultFrame_LoadInstanceDBButton",
    }

    if style == "new" then
        --AtlaslLoot_LootBackground:SetBackdrop({ bgFile = "Interface/AchievementFrame/UI-Achievement-StatsBackground" });
        --AtlaslLoot_LootBackground:SetBackdropColor(1, 1, 1, 0.5);
 
        AtlaslLoot_LootBackground:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
            insets = { left = 4, right = 4, top = 4, bottom = 4 },
        });
        --AtlasLootDefaultFrame:SetBackdropColor(1, 1, 1, 0.5)
        --AtlasLootDefaultFrame:SetBackdropBorderColor(1, 0.675, 0.125, 1)
        --AtlasLootDefaultFrame.header:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Alert-Background.blp")
        --AtlasLootDefaultFrame.header:SetTexCoord(0, 0.605, 0, 0.703)
        --AtlasLootDefaultFrame.header:SetWidth(299)
        --AtlasLootDefaultFrame.header:SetHeight(60)
        --AtlasLootDefaultFrame.header:SetPoint("TOP", AtlasLootDefaultFrame, "TOP", -3, 22) ]]

        local function SetButtons(path)
            _G[path]:SetNormalTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
            _G[path]:SetHeight(24)
            _G[path]:SetPushedTexture("Interface/AchievementFrame/UI-Achievement-Category-Background")
            _G[path]:SetHeight(24)
            local tex = _G[path]:GetNormalTexture();
            tex:SetTexCoord(0, 0.6640625, 0, 0.8);
            tex:SetHeight(32)

            local tex2 = _G[path]:GetPushedTexture();
            tex2:SetTexCoord(0, 0.6640625, 0, 0.8);
            tex2:SetHeight(32)
        end

        for _, v in pairs(buttons) do
            SetButtons(v)
        end
    elseif style == "old" then

        AtlaslLoot_LootBackground:SetBackdrop({ bgFile = "" });
        AtlaslLoot_LootBackground:SetBackdropColor(0, 0, 0.5, 0.5);

        AtlasLootDefaultFrame:SetBackdrop({ bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
            edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
            edgeSize = 32,
            insets = { left = 11, right = 12, top = 12, bottom = 11 } });
        AtlasLootDefaultFrame:SetBackdropColor(1, 1, 1, 1)
        AtlasLootDefaultFrame:SetBackdropBorderColor(1, 1, 1, 1)


        AtlasLootDefaultFrame.header:SetTexture("Interface/DialogFrame/UI-DialogBox-Header")
        AtlasLootDefaultFrame.header:SetTexCoord(0, 1, 0, 1)
        AtlasLootDefaultFrame.header:SetWidth(425)
        AtlasLootDefaultFrame.header:SetHeight(64)
        AtlasLootDefaultFrame.header:SetPoint("TOP", AtlasLootDefaultFrame, "TOP", 0, 12)

        local function SetButtons(path)
            _G[path]:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Up")
            _G[path]:SetHeight(20)
            _G[path]:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
            _G[path]:SetHeight(20)
            local tex = _G[path]:GetNormalTexture();
            tex:SetTexCoord(0, 0.625, 0, 0.6875);
            tex:SetHeight(20)

            local tex2 = _G[path]:GetPushedTexture();
            tex2:SetTexCoord(0, 0.625, 0, 0.6875);
            tex2:SetHeight(20)
        end

        for _, v in pairs(buttons) do
            SetButtons(v)
        end

    end
end
