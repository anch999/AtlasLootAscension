--[[
Functions:
AtlasLoot:OnShow()
AtlasLoot:DewDropClick(tablename, text, tabletype, tabletype2)
AtlasLoot:DewDropSubMenuClick(tablename)
AtlasLoot:DewdropExpansionMenuClick(tablename, text)
AtlasLoot:DewdropExpansionMenuOpen()
AtlasLoot:DewdropSubMenuOpen(loottable)
AtlasLoot:DewdropModuleMenuOpen()
AtlasLoot:SetSkin(skin)
]]

--Include all needed libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local WHITE = "|cffFFFFFF"
ItemindexID = 2

AtlasLoot_Data["AtlasLootFallback"] = {
    EmptyInstance = {}
}

--[[
AtlasLoot:OnShow():
Called whenever the loot browser is shown and sets up buttons and loot tables
]]
function AtlasLoot:OnShow()
    --Definition of where I want the loot table to be shown
    --Remove the selection of a loot table in Atlas
    AtlasLootItemsFrame.activeBoss = nil
    --Set the item table to the loot table
    --Show the last displayed loot table
    local lastboss = AtlasLoot.db.profile.LastBoss[AtlasLoot_Expac]
    if AtlasLoot.db.profile.AutoCurrentInstance and AtlasLoot:ShowInstance() then
        return
    elseif lastboss and lastboss[4] then
        AtlasLoot.currentTable = lastboss[5]
        AtlasLoot.lastModule = lastboss[4]
        AtlasLoot.moduleName = lastboss[6]
        AtlasLoot:IsLootTableAvailable(lastboss[4])
        AtlasLootDefaultFrame_Menu:SetText(AtlasLoot.moduleName)
        AtlasLoot:ShowItemsFrame(lastboss[1], "AtlasLoot_Data", lastboss[3])
    else
        AtlasLoot:ShowItemsFrame("EmptyTable", "AtlasLoot_Data", 1)
    end
end

-- Show the Instance you are in
function AtlasLoot:ShowInstance()
    for _, v in pairs(AtlasLoot_SubMenus) do
        for _, t in ipairs(v) do
            if t[4] == BabbleZone[GetRealZoneText()] or (t[5] and t[5] == BabbleZone[GetRealZoneText()]) then
                AtlasLoot.currentTable = v.SubMenu
                AtlasLoot.lastModule = v.Module
                AtlasLoot:IsLootTableAvailable(AtlasLoot.lastModule)
                AtlasLoot:ShowItemsFrame(t[2], "AtlasLoot_Data", 1)
                return true
            end
        end
    end
end

-- Used to strip the expansion out of the dataID
function AtlasLoot:CleandataID(newID, listnum)
	local cleanlist = {	[1] = {"CLASSIC", "TBC", "WRATH"} }
	for i = 1, #cleanlist[listnum] do
		newID = gsub(newID, cleanlist[listnum][i], "")
	end
	return newID
end

--[[
AtlasLoot:DewDropClick(tablename, text, tabletype):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot.Dewdrop is clicked
]]
function AtlasLoot:DewDropClick(tablename, text, tablenum)
    AtlasLoot.filterEnable = false
    AtlasLoot.backEnabled = false
    AtlasLoot.moduleName = text
    AtlasLootFilterCheck:SetChecked(false)
    tablename = tablename .. AtlasLoot_Expac
    AtlasLoot.currentTable = tablename
    tablenum = tablenum or 1
    AtlasLoot.lastModule = AtlasLoot_SubMenus[tablename].Module
    AtlasLootDefaultFrame_Menu:SetText(text)
    AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module)
    local lasttable = AtlasLoot.db.profile[AtlasLoot.currentTable]
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3])
        else
            AtlasLoot:ShowItemsFrame(AtlasLoot_SubMenus[tablename][tablenum][2], "AtlasLoot_Data", tablenum)
        end
end

--[[
AtlasLoot:DewDropSubMenuClick(tablename):
tablename - Name of the loot table in the database
Called when a button in AtlasLoot.DewdropSubMenu is clicked
]]
function AtlasLoot:DewDropSubMenuClick(tablename)
    AtlasLoot.backEnabled = false
    --Show the select loot table
    local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1
    --Show the table that has been selected
    AtlasLoot:ShowItemsFrame(tablename, "AtlasLoot_Data", tablenum)
end




--[[
AtlasLoot:DewdropExpansionMenuClick(expansion, name):
expansion - expansion to load
name - label for the expansion
Called when a button in DewdropExpansionMenuClick is clicked
]]
function AtlasLoot:DewdropExpansionMenuClick(expansion, name)
    AtlasLoot.backEnabled = false
    AtlasLootDefaultFrame_ExpansionMenu:SetText(name)
    AtlasLoot_Expac = expansion
    if AtlasLoot.currentTable then
        AtlasLoot.currentTable = AtlasLoot:CleandataID(AtlasLoot.currentTable, 1) .. AtlasLoot_Expac
        AtlasLoot:IsLootTableAvailable(AtlasLoot_SubMenus[AtlasLoot.currentTable].Module)
        local tablename = AtlasLoot_SubMenus[AtlasLoot.currentTable][1][2]
        local lasttable = AtlasLoot.db.profile[AtlasLoot.currentTable]
        if lasttable then
            AtlasLoot:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3])
        else
            local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1
            AtlasLoot:ShowItemsFrame(tablename, "AtlasLoot_Data", tablenum)
        end
    end
end

--[[
AtlasLoot:DewdropExpansionMenuOpen():
Adds expansion menu from expansion table in mainmenus.lua
]]
local expansionMenuLoaded
function AtlasLoot:DewdropExpansionMenuOpen(self)
    local menuList = { [1] = {} }
    if not expansionMenuLoaded then
        if AtlasLoot_ExpansionMenu then
            for i,v in ipairs(AtlasLoot_ExpansionMenu) do
                if type(v) == "table" then
                    tinsert(menuList[1], {text = v[1], func = function() AtlasLoot:DewdropExpansionMenuClick(v[2], v[1]) end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12})
                end
            end
            tinsert(menuList[1], {close = true, divider = 35})
        end
    end
    expansionMenuLoaded = AtlasLoot:OpenDewdropMenu(self, menuList, expansionMenuLoaded)
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
            if level == 1 then
                for k, v in pairs(loottable) do
                    if type(v) == "table" then
                            if type(v[3]) == "table" then
                                AtlasLoot.Dewdrop:AddLine(
                                    "text", v[1],
                                    "value", v[3],
                                    "hasArrow", true,
                                    'textHeight', 12,
                                    'textWidth', 12,
                                    "notCheckable", true
                                )
                            elseif v[3] == "Header" then
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
            elseif level == 2 then
                if value then
                    for _,v in pairs(value) do
                        if v[3] == "Header" then
                            if k ~= 1 then AtlasLoot:AddDividerLine(40) end
                            AtlasLoot.Dewdrop:AddLine(
                                'text', v[1],
                                'textR', 0.2,
                                'textG', 0.82,
                                'textB', 0.5,
                                'textHeight', 13,
                                'textWidth', 13,
                                'func', function() AtlasLoot:DewDropSubMenuClick(v[2]) end,
                                'notCheckable', true
                            )
                        elseif type(v) == "table" then
                            AtlasLoot.Dewdrop:AddLine(
                                "text", AtlasLoot_Data[v[2]].Name,
                                "func", function() AtlasLoot:DewDropSubMenuClick(v[2]) end,
                                'textHeight', 12,
                                'textWidth', 12,
                                'closeWhenClicked', true,
                                "notCheckable", true
                            )
                        end    
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
AtlasLoot:DewdropModuleMenuOpen:
Constructs the main category menu from a tiered table
]]
local moduleMenuLoaded
function AtlasLoot:DewdropModuleMenuOpen()
    local frame = AtlasLootDefaultFrame_Menu
    if AtlasLoot.Dewdrop:IsOpen(frame) then AtlasLoot.Dewdrop:Close() return end
    if not moduleMenuLoaded then
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
        moduleMenuLoaded = true
    end
    AtlasLoot.Dewdrop:Open(frame)
end

AtlasLoot.CloseDefaults = {}
local DF = AtlasLoot.CloseDefaults
DF[1], DF[2], DF[3], DF[4], DF[5] = _G["AtlasLootDefaultFrameCloseButton"]:GetPoint()

AtlasLoot.TitleDefaults = {}
local TDF = AtlasLoot.TitleDefaults
TDF[1], TDF[2], TDF[3], TDF[4], TDF[5] = _G["AtlasLootDefaultFrame"].TitleText:GetPoint()

local buttons = {
    "AtlasLootDefaultFrame_Menu",
    "AtlasLootDefaultFrame_SubMenu",
    "AtlasLootDefaultFrame_ExpansionMenu",
    "AtlasLootDefaultFrame_Preset1",
    "AtlasLootDefaultFrame_Preset2",
    "AtlasLootDefaultFrame_Preset3",
    "AtlasLootDefaultFrame_Preset4",
    "AtlasLootDefaultFrameSearchButton",
    "AtlasLootDefaultFrameLastResultButton",
    "AtlasLootDefaultFrameWishListButton",
    "AtlasLootDefaultFrameAdvancedSearchButton",
    "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton",
    "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton",
    "AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton",
    "AtlasLootDefaultFrame_AdvancedSearchPanel_SearchButton",
    "AtlasLootDefaultFrame_AdvancedSearchPanel_ClearButton",
    "AtlasLootDefaultFrame_MapButton",
    "AtlasLootDefaultFrame_LoadInstanceButton",
    "AtlasLoot_Favorites",
}

AtlasLoot.skinKeys = {
    {"Modern", AL["Modern"]},
    {"OldAtlasLoot", AL["Old AtlasLoot"]},
    {"ElvUIDark", AL["ElvUI Dark"]},
}

local skins = {
    Modern = {
        DefaultFrame = {
            bg = "Interface\\DialogFrame\\UI-DialogBox-Background",
            bgColor = {2,2,2,2},
            edge = "Interface\\Tooltips\\UI-Tooltip-Border",
            edgeColor = {1,1,1,1},
            tile = true,
        },
        Backdrop = {
            bg = "Interface\\DialogFrame\\UI-DialogBox-Background",
            bgColor = {2,2,2,2},
            edge = "Interface\\Tooltips\\UI-Tooltip-Border",
            edgeColor = {1,1,1,1},
            tile = true,
        },
        btTex = "Interface\\Buttons\\UI-Silver-Button-Up",
        insets = {1,1,1,1},
        showFrame = true,
        searchP = {0,-0.5},
        searchH = 24,
        edgeSize = 16,
        closebtn = {0,0},
        title = {0,0},
    },

    OldAtlasLoot = {
        DefaultFrame = {
            bg = "Interface/AchievementFrame/UI-Achievement-AchievementBackground",
            bgColor = {1, 1, 1, 0.5},
            edge = "Interface/Tooltips/UI-Tooltip-Border",
            edgeColor = {1, 0.675, 0.125, 1},
            tile = false,
        },
        Backdrop = {
            bg = "Interface/AchievementFrame/UI-Achievement-StatsBackground",
            bgColor = {0, 0, 0, .7},
            edge = nil,
            edgeColor = {nil,nil,nil,nil},
            tile = false,
        },
        btTex = "Interface/AchievementFrame/UI-Achievement-Category-Background",
        insets = {4,4,4,4},
        showFrame = false,
        searchP = {2,0},
        searchH = 23,
        edgeSize = 8,
        closebtn = {-5,-5},
        title = {0,-5},
    },

    ElvUIDark = {
        DefaultFrame = {
            bg = "Interface\\DialogFrame\\UI-DialogBox-Background",
            bgColor = {2,2,2,2},
            edge = "Interface\\Tooltips\\UI-Tooltip-Border",
            edgeColor = {0,0,0,5},
            tile = true,
        },
        Backdrop = {
            bg = "Interface\\DialogFrame\\UI-DialogBox-Background",
            bgColor = {2,2,2,2},
            edge = "Interface\\Tooltips\\UI-Tooltip-Border",
            edgeColor = {0,0,0,5},
            tile = true,
        },
        btTex = {0,0,0,.6},
        insets = {1,1,1,1},
        showFrame = false,
        searchP = {2,0},
        searchH = 25,
        edgeSize = 8,
        closebtn = {-5,-5},
        title = {0,0},
    },
}

local backDropFrames = {
    "AtlasLoot_FavoritesPopupFrame",
    "AtlaslLoot_LootBackground",
    "Atlasloot_Difficulty_ScrollFrame",
    "Atlasloot_SubTableFrame",
    "AtlasLoot_PopupFrame",
}

--[[
AtlasLoot:SetSkin()
Changes the skin
]]
function AtlasLoot:SetSkin(skin)
    skin = skins[skin]
        for _, frame in pairs(backDropFrames) do
            _G[frame]:SetBackdrop({
                bgFile = skin.Backdrop.bg, tile = skin.Backdrop.tile, tileSize = 16,
                edgeFile = skin.Backdrop.edge, edgeSize = skin.edgeSize,
                insets = { left = skin.insets[1], right = skin.insets[2], top = skin.insets[3], bottom = skin.insets[4] },
            })
            _G[frame]:SetBackdropColor(skin.Backdrop.bgColor[1], skin.Backdrop.bgColor[2], skin.Backdrop.bgColor[3], skin.Backdrop.bgColor[4])
            _G[frame]:SetBackdropBorderColor(skin.Backdrop.edgeColor[1], skin.Backdrop.edgeColor[2], skin.Backdrop.edgeColor[3], skin.Backdrop.edgeColor[4])
        end

        local DF = AtlasLoot.CloseDefaults
        _G["AtlasLootDefaultFrameCloseButton"]:SetPoint(DF[1], DF[2], DF[3], DF[4]+skin.closebtn[1], DF[5]+skin.closebtn[2])

        local TDF = AtlasLoot.TitleDefaults
        _G["AtlasLootDefaultFrame"].TitleText:SetPoint(TDF[1], TDF[2], TDF[3], TDF[4]+skin.title[1], TDF[5]+skin.title[2])


        _G["AtlasLootDefaultFrame"].CloseButton:Hide()
        if type(skin.btTex) == "table" then
            local color = skin.btTex
            _G["AtlasLootDefaultFrameSearchBox"].Left:SetTexture(color[1],color[2],color[3],color[4])
            _G["AtlasLootDefaultFrameSearchBox"].Right:SetTexture(color[1],color[2],color[3],color[4])
            _G["AtlasLootDefaultFrameSearchBox"].Middle:SetTexture(color[1],color[2],color[3],color[4])
        else
            _G["AtlasLootDefaultFrameSearchBox"].Left:SetTexture("")
            _G["AtlasLootDefaultFrameSearchBox"].Right:SetTexture("")
            _G["AtlasLootDefaultFrameSearchBox"].Middle:SetTexture("")
            _G["AtlasLootDefaultFrameSearchBox"].Left:SetAtlas("common-search-border-left")
            _G["AtlasLootDefaultFrameSearchBox"].Right:SetAtlas("common-search-border-right")
            _G["AtlasLootDefaultFrameSearchBox"].Middle:SetAtlas("common-search-border-middle")
        end

        _G["AtlasLootDefaultFrameSearchBox"].Left:SetHeight(skin.searchH)
        _G["AtlasLootDefaultFrameSearchBox"].Right:SetHeight(skin.searchH)
        _G["AtlasLootDefaultFrameSearchBox"].Middle:SetHeight(skin.searchH)
        _G["AtlasLootDefaultFrameSearchButton"]:ClearAllPoints()
        _G["AtlasLootDefaultFrameSearchButton"]:SetPoint("LEFT","AtlasLootDefaultFrameSearchBox","RIGHT",skin.searchP[1],skin.searchP[2])

        local frame = {"RightEdge","LeftEdge","BottomEdge","TopEdge","BottomRightCorner","BottomLeftCorner","TopRightCorner","TopLeftCorner"}
        if skin.showFrame then
            for _, frame in ipairs(frame) do
                _G["AtlasLootDefaultFrameNineSlice"][frame]:Show()
            end
            _G["AtlasLootDefaultFramePortrait"]:Show()
            _G["AtlasLootDefaultFrameBg"]:Show()
            _G["AtlasLootDefaultFrame"].TitleBg:Show()
            _G["AtlasLootDefaultFrameTopTileStreaks"]:Show()
            _G["AtlasLootDefaultFrame"]:SetBackdrop(nil)
        else
            for _, frame in ipairs(frame) do
                _G["AtlasLootDefaultFrameNineSlice"][frame]:Hide()
            end
            _G["AtlasLootDefaultFramePortrait"]:Hide()
            _G["AtlasLootDefaultFrameBg"]:Hide()
            _G["AtlasLootDefaultFrame"].TitleBg:Hide()
            _G["AtlasLootDefaultFrameTopTileStreaks"]:Hide()
            _G["AtlasLootDefaultFrame"]:SetBackdrop({
                bgFile = skin.DefaultFrame.bg, tile = skin.DefaultFrame.tile, tileSize = 16,
                edgeFile = skin.DefaultFrame.edge, edgeSize = skin.edgeSize,
                insets = { left = skin.insets[1], right = skin.insets[2], top = skin.insets[3], bottom = skin.insets[4] },
            })
            _G["AtlasLootDefaultFrame"]:SetBackdropColor(skin.DefaultFrame.bgColor[1], skin.DefaultFrame.bgColor[2], skin.DefaultFrame.bgColor[3], skin.DefaultFrame.bgColor[4])
            _G["AtlasLootDefaultFrame"]:SetBackdropBorderColor(skin.DefaultFrame.edgeColor[1], skin.DefaultFrame.edgeColor[2], skin.DefaultFrame.edgeColor[3], skin.DefaultFrame.edgeColor[4])
        end

        local function SetButtons(path)
            if _G[path].template and _G[path].template == "FilterDropDownMenuTemplate" then
                local tex, tex2, tex3, tex4
                if type(skin.btTex) == "table" then
                    tex, tex2, tex3, tex4 = unpack(skin.btTex)
                else
                    tex = skin.btTex
                end
                _G[path.."TopLeft"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."TopRight"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."BottomLeft"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."BottomRight"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."TopMiddle"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."MiddleLeft"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."MiddleRight"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."BottomMiddle"]:SetTexture(tex, tex2, tex3, tex4)
                _G[path.."MiddleMiddle"]:SetTexture(tex, tex2, tex3, tex4)
            end
        end

        for _, v in pairs(buttons) do
            SetButtons(v)
        end
end
