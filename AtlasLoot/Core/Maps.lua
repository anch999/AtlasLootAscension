local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local BLUE = "|cff6666ff"
local GREY = "|cff999999"
local GREN = "|cff66cc33"
local _RED = "|cffcc6666"
local ORNG = "|cffcc9933"
local PURP = "|cff9900ff"
local INDENT = "      "
local YELLOW = "|cffFFd200"
local WHITE = "|cFFFFFFFF"
local CYAN =  "|cff00ffff"
local DefaultPin = "questlog-questtypeicon-daily"
-- Map Functions

local lastMap
local totalPins = 0

-- Creates the map pins 
function AtlasLoot:CreateMapPins(list)
    _G["AtlasLoot_PlayerMapPin"]:Hide()
    -- Hide all pins before reshowing so any extras arnt showing
    if totalPins then
        for i = 1, totalPins do
            _G["AtlasLoot_MapPin"..i]:Hide()
        end
    end
    -- Creates buttons on the map for pins if a button dosnt already exist
    -- If a button exists reuse it
    for i,v in ipairs(list) do
        --create pin buttons
        if not _G["AtlasLoot_MapPin"..i] then
            -- Map Pins
            local mapPin = CreateFrame("Button","AtlasLoot_MapPin"..i, AtlasLootDefaultFrame_Map)
            mapPin:SetSize(25,25)
            mapPin:SetFrameStrata("HIGH")
            mapPin.text = mapPin:CreateFontString(nil, "OVERLAY","GameFontNormal")
            mapPin.text:SetPoint("LEFT",mapPin, 30, 0)
            mapPin.text:SetJustifyH("LEFT")
            mapPin.text:SetFont("GameFontNormal", 28)
            mapPin.text:SetSize(150,12)
            mapPin.tex = mapPin:CreateTexture(nil, "ARTWORK")
            mapPin.tex:SetPoint("CENTER")
            totalPins = totalPins + 1
        end
        -- converts a standard coordinate x,y to stardard anchor points
        local x = ((AtlasLootDefaultFrame_Map:GetWidth()/100) * v[2][1]) - (_G["AtlasLoot_MapPin"..i]:GetWidth()/2)
        local y = (-(AtlasLootDefaultFrame_Map:GetHeight()/100) * v[2][2]) + (_G["AtlasLoot_MapPin"..i]:GetHeight()/2)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnEnter", function(self)
            AtlasLoot.showCords = true
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
            GameTooltip:AddLine(WHITE..v[1])
            GameTooltip:AddLine("("..v[2][1]..", "..v[2][2]..")")
            GameTooltip:Show()
        end)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        if v[3] then
            local tex = AtlasUtil:GetAtlasInfo(v[3])
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        else
            local tex = AtlasUtil:GetAtlasInfo(DefaultPin)
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        end
        _G["AtlasLoot_MapPin"..i].text:SetText(CYAN..v[1])
        _G["AtlasLoot_MapPin"..i]:ClearAllPoints()
        _G["AtlasLoot_MapPin"..i]:SetPoint("TOPLEFT",AtlasLootDefaultFrame_Map,x ,y)
        _G["AtlasLoot_MapPin"..i]:Show()
    end
end

local lastCord1, lastCord2 = 0,0
function AtlasLoot:CursorCords()
    --AtlasLoot:CancelTimer(AtlasLoot.cursorRefreshTimer)
    if AtlasLoot.showCords then
        local scale,x, y = AtlasLootDefaultFrame_Map:GetEffectiveScale(), GetCursorPosition()
        local width, height = AtlasLootDefaultFrame_Map:GetWidth()/100, AtlasLootDefaultFrame_Map:GetHeight()/100
        x, y = math.ceil(((x/scale) - AtlasLootDefaultFrame_Map:GetLeft())/width), math.ceil((((y/scale) - AtlasLootDefaultFrame_Map:GetTop())/height) * -1)
        if lastCord1 ~= x and lastCord2 ~= y then
            AtlasLootDefaultFrame_Map.cursorCords:SetText(WHITE.."Cursor: "..x.." , "..y)
            lastCord1 = x
            lastCord2 = y
        end
        --AtlasLoot.cursorRefreshTimer = AtlasLoot:ScheduleTimer("CursorCords", .01)
    end
end

function AtlasLoot:PlayerPin(firstSet)
    if AtlasLootDefaultFrame_Map:IsVisible() and AtlasLoot_MapData[AtlasLoot.CurrentMap].ZoneName[1] == GetRealZoneText() and AtlasLoot.MapNum == GetCurrentMapDungeonLevel() then
        _G["AtlasLoot_PlayerMapPin"]:Show()
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = ((AtlasLootDefaultFrame_Map:GetWidth()/100) * (x * 100)) - (_G["AtlasLoot_PlayerMapPin"]:GetWidth()/2)
        y = (-(AtlasLootDefaultFrame_Map:GetHeight()/100) * (y * 100)) + (_G["AtlasLoot_PlayerMapPin"]:GetHeight()/2)
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints()
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",AtlasLootDefaultFrame_Map, x, y )
        _G["AtlasLoot_PlayerMapPin"].texture:SetRotation(GetPlayerFacing())
    end
    AtlasLoot.playerPinTimer = AtlasLoot:ScheduleTimer("PlayerPin", .1)
end

function AtlasLoot:SetNavButtons(mapID, mapNum)
    if not AtlasLootDefaultFrame_Map:IsVisible() then return end
    --Hide navigation buttons by default, only show what we need
    _G["AtlasLootItemsFrame_BACK"]:Hide()
    _G["AtlasLootItemsFrame_NEXT"]:Hide()
    _G["AtlasLootItemsFrame_PREV"]:Hide()

        if mapNum ~= #_G["AtlasLoot_MapData"][mapID] then
            _G["AtlasLootItemsFrame_NEXT"]:SetParent("AtlasLootDefaultFrame_Map")
            _G["AtlasLootItemsFrame_NEXT"]:Show()
            _G["AtlasLootItemsFrame_NEXT"].mapNum = mapNum + 1
            _G["AtlasLootItemsFrame_NEXT"].mapID = mapID
            _G["AtlasLootItemsFrame_NEXT"]:ClearAllPoints()
            _G["AtlasLootItemsFrame_NEXT"]:SetPoint("BOTTOMRIGHT", "AtlasLootDefaultFrame_Map", "BOTTOMRIGHT",-5,5)
        end
        if mapNum ~= 1 then
            _G["AtlasLootItemsFrame_PREV"]:SetParent("AtlasLootDefaultFrame_Map")
            _G["AtlasLootItemsFrame_PREV"]:Show()
            _G["AtlasLootItemsFrame_PREV"].mapNum = mapNum - 1
            _G["AtlasLootItemsFrame_PREV"].mapID = mapID
            _G["AtlasLootItemsFrame_PREV"]:ClearAllPoints()
            _G["AtlasLootItemsFrame_PREV"]:SetPoint("BOTTOMLEFT", "AtlasLootDefaultFrame_Map", "BOTTOMLEFT",5,5)
        end
end

--called everytime you on a map hiding the loot item buttons 
function AtlasLoot:MapOnShow()
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLootDefaultFrame_Map:Hide()
        AtlaslLoot_LootBackground:Show()
        AtlasLoot:BackButton_OnClick()
        AtlasLoot_BossName:Show()
        Atlasloot_HeaderLabel:Hide()
        AtlasLoot:ScrollFrameUpdate()
    else
        if AtlasLoot.CurrentMap then
            AtlasLoot_BossName:Hide()
            --Ditch the Quicklook selector
            AtlasLootQuickLooksButton:Hide()
            -- Hide the Filter Check-Box
	        AtlasLootFilterCheck:Hide()
            AtlaslLoot_LootBackground:Hide()
            --Hide UI objects so that only needed ones are shown
            for i = 1, 30, 1 do
                _G["AtlasLootItem_"..i.."_Unsafe"]:Hide()
                _G["AtlasLootItem_"..i]:Hide()
                _G["AtlasLootItem_"..i].itemID = 0
                _G["AtlasLootItem_"..i].spellitemID = 0
            end
                AtlasLootDefaultFrame_Map:Show()
                Atlasloot_HeaderLabel:Show()
                AtlasLoot:ScrollFrameUpdate(true)
                AtlasLootDefaultFrameScroll:Hide()
                local mapNum = 1
                SetMapToCurrentZone()
                if AtlasLoot_MapData[AtlasLoot.CurrentMap].ZoneName[1] == GetRealZoneText() then
                    if GetCurrentMapDungeonLevel() == 0 then
                        mapNum = 1
                    else
                        mapNum = GetCurrentMapDungeonLevel()
                    end
                elseif lastMap == AtlasLoot.CurrentMap then
                    mapNum = AtlasLoot.MapNum
                end
                AtlasLoot:MapSelect(AtlasLoot.CurrentMap, mapNum)
        end
    end
    if not AtlasLoot.db.profile.FrameExpanded then AtlasLoot:ExpandFrame(false, false) end
end

--called to change the current displayed map
function AtlasLoot:MapSelect(mapID, mapNum, text)
    mapNum = mapNum or 1
    local map = AtlasLoot_MapData[mapID]
    if map.MapName then
        for i = 1, 12 do
            local texture = _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..mapNum.."_"..i)
            if not texture then
                _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..i)
            end
        end
    end
    local pinsList = {}
    for _, v in ipairs (map[mapNum]) do
        if v.cords then
            tinsert(pinsList,{v[1],v.cords,v.pinType})
        end
    end
    AtlasLoot.MapNum = mapNum
    AtlasLoot:SubTableScrollFrameUpdate(mapID, "AtlasLoot_MapData", mapNum)
    AtlasLoot:SetNavButtons(mapID, mapNum)
    AtlasLoot:CreateMapPins(pinsList)
    AtlasLoot:CancelTimer(AtlasLoot.playerPinTimer)
    AtlasLoot:PlayerPin(true)

    Atlasloot_HeaderLabel:SetText(
    map.ZoneName[1].._RED.." ["..map.Acronym.."]\n"..
    "Location: "..map.Location[1].."\n"..
    "Level Range: "..map.LevelRange.."\n"..
    "Minimum Level: "..map.MinLevel.."\n"..
    "Player Limit: "..map.PlayerLimit
    )
    if map[mapNum][1].Zone then
        text = map[mapNum][2][1]
    else
        text = map[mapNum][1][1]
    end
    AtlasLootDefaultFrame_MapSelectButton:SetText(text)
end

--called when you click on a map in the drop down menu
function AtlasLoot:MapMenuClick(mapID, mapNum)
    mapNum = mapNum or 1
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLoot:MapSelect(mapID, mapNum)
    end
    AtlasLoot.MapNum = mapNum
    AtlasLoot.CurrentMap = mapID
end

--drop down map menu
local lastMapLoaded
function AtlasLoot:MapMenuOpen(self)
    local mapID = AtlasLoot.CurrentMap
    local map = AtlasLoot_MapData[mapID]
    if AtlasLoot.Dewdrop:IsOpen(self) then AtlasLoot.Dewdrop:Close() return end
    if lastMapLoaded ~= mapID then
        AtlasLoot.Dewdrop:Register(self,
            'point', function(parent)
                return "TOP", "BOTTOM"
            end,
            'children', function(level, value)
                    for i,v in ipairs(map) do
                        local text
                        if v[1].Zone then
                            text = map[i][2][1]
                        else
                            text = v[1][1]
                        end
                        AtlasLoot.Dewdrop:AddLine(
                            'text', WHITE..text,
                            'func', function() AtlasLoot:MapMenuClick(mapID, i) end,
                            'textHeight', 12,
                            'textWidth', 12,
                            'closeWhenClicked', true,
                            'notCheckable', true
                        )
                    end
                    --Close button
                    AtlasLoot:CloseDewDrop(true,35)
            end,
            'dontHook', true
        )
    end
    AtlasLoot.Dewdrop:Open(self)
end