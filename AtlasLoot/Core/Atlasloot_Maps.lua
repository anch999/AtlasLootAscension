local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


local BLUE = "|cff6666ff";
local GREY = "|cff999999";
local GREN = "|cff66cc33";
local _RED = "|cffcc6666";
local ORNG = "|cffcc9933";
local PURP = "|cff9900ff";
local INDENT = "      ";
local YELLOW = "|cffFFd200"
local WHITE = "|cFFFFFFFF"
local CYAN =  "|cff00ffff"

local ZONE = 1;
local NPC = 2;
local ITEM = 3;
local OBJECT = 4;
local FACTION = 5;
local QUEST = 6;

local lastMapNum, lastMap
local totalPins = 0
-- Creates the map pins 
-- x = (x * 7.7) - 12.5    
-- y = (y * 5.13) + 12.5
-- 12.5 is half the size of the button
function AtlasLoot:CreateMapPins(list, map)
    _G["AtlasLoot_PlayerMapPin"]:Hide()
    -- Hide all pins before reshowing them 
    if totalPins then
        for i = 1, totalPins do
            _G["AtlasLoot_MapPin"..i]:Hide()
        end
    end

    for i,v in ipairs(list) do
        if not _G["AtlasLoot_MapPin"..i] then
            -- Map Pins
            local mapPin = CreateFrame("Button","AtlasLoot_MapPin"..i, AtlasLootDefaultFrame_Map);
            mapPin:SetSize(35,35);
            mapPin:SetFrameStrata("HIGH");
            mapPin:SetNormalTexture("Interface\\AddOns\\AtlasLoot\\Images\\pin-yellow-new");
            mapPin.text = mapPin:CreateFontString(nil, "OVERLAY","GameFontNormal")
            mapPin.text:SetPoint("LEFT",mapPin, 30, 0);
            mapPin.text:SetJustifyH("LEFT");
            mapPin.text:SetFont("GameFontNormal", 28);
            totalPins = totalPins + 1
        end
        local x = (7.7 * v[2][1]) - 17.5
        local y = (-5.13 * v[2][2]) + 17.5
        _G["AtlasLoot_MapPin"..i]:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
            GameTooltip:AddLine(WHITE..v[1])
            GameTooltip:AddLine("("..v[2][1]..", "..v[2][2]..")")
            GameTooltip:Show()
        end)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        _G["AtlasLoot_MapPin"..i].text:SetText(CYAN..v[1]);
        _G["AtlasLoot_MapPin"..i]:ClearAllPoints();
        _G["AtlasLoot_MapPin"..i]:SetPoint("TOPLEFT",AtlasLootDefaultFrame_Map,x ,y);
        _G["AtlasLoot_MapPin"..i]:Show();
    end
end

function AtlasLoot:PlayerPin(firstSet)
    if AtlasLootDefaultFrame_Map:IsVisible() and AtlasLoot_MapData[ATLASLOOT_CURRENT_MAP].ZoneName[1] == GetRealZoneText() then
        _G["AtlasLoot_PlayerMapPin"]:Show();
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = (7.7 * (x * 100)) - 17.5
        y = (-5.13 * (y * 100)) + 17.5
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints();
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",AtlasLootDefaultFrame_Map, x, y );
    end
    AtlasLoot.playerPinTimer = AtlasLoot:ScheduleTimer("PlayerPin", .5)
end

--called everytime you on a map hiding the loot item buttons 
function AtlasLoot:MapOnShow()
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLootDefaultFrame_Map:Hide();
        AtlasLootDefaultFrame_LootBackground:Show();
        AtlasLoot:BackButton_OnClick();
        AtlasLoot_BossName:Show();
        Atlasloot_HeaderLabel:Hide();
        AtlasLoot:ScrollFrameUpdate();
    else
        if ATLASLOOT_CURRENT_MAP then
            AtlasLoot_BossName:Hide();
            --Ditch the Quicklook selector
            AtlasLootQuickLooksButton:Hide();
            -- Hide the Filter Check-Box
	        AtlasLootFilterCheck:Hide();
            --Hide navigation buttons by default, only show what we need
            _G["AtlasLootItemsFrame_BACK"]:Hide();
            _G["AtlasLootItemsFrame_NEXT"]:Hide();
            _G["AtlasLootItemsFrame_PREV"]:Hide();
            AtlasLootDefaultFrame_LootBackground:Hide();
            --Hide UI objects so that only needed ones are shown
            for i = 1, 30, 1 do
                _G["AtlasLootItem_"..i.."_Unsafe"]:Hide();
                _G["AtlasLootItem_"..i]:Hide();
                _G["AtlasLootItem_"..i].itemID = 0;
                _G["AtlasLootItem_"..i].spellitemID = 0;
            end
                AtlasLootDefaultFrame_Map:Show();
                Atlasloot_HeaderLabel:Show();
                AtlasLoot:ScrollFrameUpdate(true);
                AtlasLootDefaultFrameScroll:Hide();
                local mapNum = 1
                if lastMap == ATLASLOOT_CURRENT_MAP then mapNum = lastMapNum end
                AtlasLoot:SubTableScrollFrameUpdate(ATLASLOOT_CURRENT_MAP, "AtlasLoot_MapData", mapNum);
                lastMapNum = mapNum
                AtlasLoot:PlayerPin(true)
        end
    end
    if not AtlasLoot.db.profile.FrameExpanded then AtlasLoot:ExpandFrame(false, false) end
end

--called to change the current displayed map
function AtlasLoot:MapSelect(mapID, mapNum)
    mapNum = mapNum or 1
    if AtlasLoot_MapData[mapID].MapName then
        for i = 1, 12 do
            _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..AtlasLoot_MapData[mapID].MapName.."\\"..AtlasLoot_MapData[mapID].MapName..mapNum.."_"..i);
        end
    end
    local pinsList = {}
    for _, v in pairs (AtlasLoot_MapData[mapID][mapNum]) do
        if v.cords then
            tinsert(pinsList,{v[1],v.cords})
        end
    end
    AtlasLoot:CreateMapPins(pinsList)
    AtlasLoot:CancelTimer(AtlasLoot.playerPinTimer)
    AtlasLoot:PlayerPin(true)

    Atlasloot_HeaderLabel:SetText(
    AtlasLoot_MapData[mapID].ZoneName[1].._RED.." ["..AtlasLoot_MapData[mapID].Acronym.."]\n"..
    "Location: "..AtlasLoot_MapData[mapID].Location[1].."\n"..
    "Level Range: "..AtlasLoot_MapData[mapID].LevelRange.."\n"..
    "Minimum Level: "..AtlasLoot_MapData[mapID].MinLevel.."\n"..
    "Player Limit: "..AtlasLoot_MapData[mapID].PlayerLimit
    );
    AtlasLootDefaultFrame_MapSelectButton:SetText(AtlasLoot_MapData[mapID][mapNum][1][1]);
end

--called when you click on a map in the drop down menu
function AtlasLoot:MapMenuClick(mapID, mapNum)
    mapNum = mapNum or 1
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLoot:SubTableScrollFrameUpdate(mapID, "AtlasLoot_MapData", mapNum);
        lastMapNum = mapNum
    end
    AtlasLoot:MapSelect(mapID, mapNum);
    AtlasLootDefaultFrame_MapSelectButton:SetText(AtlasLoot_MapData[mapID][mapNum][1][1]);
    ATLASLOOT_CURRENT_MAP = mapID;
end

--drop down map menu
local lastMapLoaded
function AtlasLoot:MapMenuOpen(self)
    local mapID = ATLASLOOT_CURRENT_MAP;
    if AtlasLoot_Dewdrop:IsOpen(self) then AtlasLoot_Dewdrop:Close() return end
    if lastMapLoaded ~= mapID then
        AtlasLoot_Dewdrop:Register(self,
            'point', function(parent)
                return "TOP", "BOTTOM"
            end,
            'children', function(level, value)
                    for i,v in ipairs(AtlasLoot_MapData[mapID]) do
                        AtlasLoot_Dewdrop:AddLine(
                            'text', WHITE..v[1][1],
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
    AtlasLoot_Dewdrop:Open(self)
end



--all the map data
AtlasLoot_MapData = {
--************************************************
-- Kalimdor Instances (Classic)
--************************************************

["BlackfathomDeeps"] = {
    ZoneName = { BabbleZone["Blackfathom Deeps"], 719 };
    Location = { BabbleZone["Ashenvale"], 331 };
    LevelRange = "20-28";
    MinLevel = "19";
    PlayerLimit = "5";
    Acronym = AL["BFD"];
    MapName = "BlackFathomDeeps";
    [1] = {
        { BabbleSubZone["The Pool of Ask'ar"]};
        { AL["Ghamoo-ra"], NPC, 4887, cords = {32.9,59.9}};
        { AL["Lorgalis Manuscript"], ITEM, 5359 };
        { AL["Lady Sarevess"], NPC, 4831, cords = {10.1,36}};
        { AL["Argent Guard Thaelrid <The Argent Dawn>"], NPC, 4787 };
        { AL["Gelihast"], NPC, 6243, cords = {52.3,55.1} };
        { INDENT..AL["Shrine of Gelihast"] };
    };
    [2] = {
        { BabbleSubZone["Moonshrine Sanctum"]};
        { AL["Lorgus Jett"].." ("..AL["Varies"]..")", NPC, 12902, cords = {46,68.9} };
        { AL["Fathom Stone"], OBJECT, 177964 };
        { INDENT..AL["Baron Aquanis"], NPC, 12876 };
        { AL["Old Serra'kis"], NPC, 4830, cords = {53.4,69.4} };
        { AL["Twilight Lord Kelris"], NPC, 4832, cords = {51,81} };
        { AL["Aku'mai"], NPC, 4829, cords = {81.7,84.5} };
        { INDENT..AL["Morridune"], NPC, 6729 };
        { INDENT..AL["Altar of the Deeps"] };
    };
    [3] = {
        { BabbleSubZone["The Forgotten Pool"]};
        { AL["Old Serra'kis"], NPC, 4830, cords = {59.4,31.4} };
    };
};

["DireMaul"] = {
    ZoneName = { BabbleZone["Dire Maul"], 2557 };
    Location = { BabbleZone["Feralas"], 357 };
    LevelRange = "57-60";
    MinLevel = "45";
    PlayerLimit = "5";
    Acronym = AL["DM"];
    MapName = "DireMaul";
    [1] = {
        { AL["Gordok Commons"].." (North)" };
        { BLUE.."B) "..BabbleZone["Library"].." "..AL["Entrance"] };
        { "1) "..AL["Guard Mol'dar"], NPC, 14326, cords = {69.9,76} };
        { "2) "..AL["Stomper Kreeg <The Drunk>"], NPC, 14322, cords = {} };
        { "3) "..AL["Guard Fengus"], NPC, 14321, cords = {42.9,77.6} };
        { "4) "..AL["Knot Thimblejack"], NPC, 14338 };
        { INDENT..AL["Guard Slip'kik"], NPC, 14323, cords = {26.5,57.8} };
        { "5) "..AL["Captain Kromcrush"], NPC, 14325, cords = {31.8,51.4} };
        { "6) "..AL["King Gordok"], NPC, 11501, cords = {32,27.7} };
        { INDENT..AL["Cho'Rush the Observer"], NPC, 14324, cords = {31.4,26.2} };
    };
    [2] = {
        { BabbleSubZone["Capital Gardens"].." (West)" };
        { BLUE.."B) "..AL["Pylons"] };
    };
    [3] = {
        { BabbleSubZone["Court of the Highborne"].." (West)" };
        { "1) "..AL["Shen'dralar Ancient"], NPC, 14358 };
        { "2) "..AL["Tendris Warpwood"], NPC, 11489, cords = {49.4,49.5} };
    };
    [4] = {
        { BabbleSubZone["Prison of Immol'thar"].." (West)" };
        { INDENT..AL["Ancient Equine Spirit"], NPC, 14566 };
        { "3) "..AL["Illyanna Ravenoak"], NPC, 11488, cords = {36.2,57.4} };
        { INDENT..AL["Ferra"], NPC, 14308 };
        { "4) "..AL["Magister Kalendris"], NPC, 11487, cords = {66.1,47.3} };
        { "5) "..AL["Tsu'zee"].." ("..AL["Rare"]..")", NPC, 11467, cords = {68.3,23.9} };
        { "6) "..AL["Immol'thar"], NPC, 11496, cords = {35.2,58.1} };
        { INDENT..AL["Lord Hel'nurath"].." ("..AL["Summon"]..")", NPC, 14506, cords = {14.9,57.7} };
        { "7) "..AL["Prince Tortheldrin"], NPC, 11486, cords = {61.4,15.1} };
        { GREN.."1') "..BabbleZone["Library"] };
        { GREN..INDENT..AL["Falrin Treeshaper"], NPC, 16032 };
        { GREN..INDENT..AL["Lorekeeper Lydros"], NPC, 14368 };
        { GREN..INDENT..AL["Lorekeeper Javon"], NPC, 14381 };
        { GREN..INDENT..AL["Lorekeeper Kildrath"], NPC, 14383 };
        { GREN..INDENT..AL["Lorekeeper Mykos"], NPC, 14382 };
        { GREN..INDENT..AL["Shen'dralar Provisioner"], NPC, 14371 };
        { GREN..INDENT..AL["Skeletal Remains of Kariel Winthalus"], OBJECT, 179544 };
    };
    [5] = {
        { BabbleSubZone["Warpwood Quarter"].." (East)" };
        { "3) "..AL["Zevrim Thornhoof"], NPC, 11490 };
        { INDENT..AL["Hydrospawn"], NPC, 13280, cords = {41,49.2} };
        { INDENT..AL["Lethtendris"], NPC, 14327, cords = {44.5,46.6} };
        { INDENT..AL["Pimgib"], NPC, 14349 };
    };
    [6] = {
        { BabbleSubZone["The Shrine of Eldretharr"].." (East)" };
        { "4) "..AL["Old Ironbark"], NPC, 11491 };
        { "5) "..AL["Alzzin the Wildshaper"], NPC, 11492, cords = {57.3,28.9} };
        { INDENT..AL["Isalien"].." ("..AL["Summon"]..")", NPC, 16097 };
    };
};
["Maraudon"] = {
    ZoneName = { BabbleZone["Maraudon"], 2100 };
    Location = { BabbleZone["Desolace"], 405 };
    LevelRange = "42-51";
    MinLevel = "30";
    PlayerLimit = "5";
    Acronym = AL["Mara"];
    MapName = "Maraudon";
    [1] = {
    { BLUE.."A) "..AL["Entrance"].." ("..AL["Orange"]..")" };
    { BLUE.."B) "..AL["Entrance"].." ("..AL["Purple"]..")" };
    { BLUE.."C) "..AL["Entrance"].." ("..AL["Portal"]..")" };
    { "1) "..AL["Veng <The Fifth Khan>"], NPC, 13738 };
    { "2) "..AL["Noxxion"], NPC, 13282 };
    { "3) "..AL["Razorlash"], NPC, 12258 };
    { "4) "..AL["Maraudos <The Fourth Khan>"], NPC, 13739 };
    { "5) "..AL["Lord Vyletongue"], NPC, 12236 };
    { "6) "..AL["Meshlok the Harvester"].." ("..AL["Rare"]..")", NPC, 12237 };
    { "7) "..AL["Celebras the Cursed"], NPC, 12225 };
    { "8) "..AL["Landslide"], NPC, 12203 };
    { "9) "..AL["Tinkerer Gizlock"], NPC, 13601 };
    { "10) "..AL["Rotgrip"], NPC, 13596 };
    { "11) "..AL["Princess Theradras"], NPC, 12201 };
    { "12) "..AL["Elder Splitrock"].." ("..AL["Lunar Festival"]..")", NPC, 15556 };
    };
};
["RagefireChasm"] = {
    ZoneName = { BabbleZone["Ragefire Chasm"], 2437 };
    Location = { BabbleZone["Orgrimmar"], 1637 };
    LevelRange = "12-18";
    MinLevel = "8";
    PlayerLimit = "5";
    Acronym = AL["RFC"];
    MapName = "RagefireChasm";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Maur Grimtotem"], NPC, 11834 };
    { INDENT..AL["Oggleflint <Ragefire Chieftain>"], NPC, 11517 };
    { "2) "..AL["Taragaman the Hungerer"], NPC, 11520 };
    { "3) "..AL["Jergosh the Invoker"], NPC, 11518 };
    { INDENT..AL["Zelemar the Wrathful"].." ("..AL["Summon"]..")", NPC, 17830 };
    { "4) "..AL["Bazzalan"], NPC, 11519 };
    };
};
["RazorfenDowns"] = {
    ZoneName = { BabbleZone["Razorfen Downs"], 722 };
    Location = { BabbleZone["The Barrens"], 17 };
    LevelRange = "33-42";
    MinLevel = "25";
    PlayerLimit = "5";
    Acronym = AL["RFD"];
    MapName = "RazorfenDowns";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Tuten'kash"], NPC, 7355 };
    { "2) "..AL["Henry Stern"], NPC, 8696 };
    { INDENT..AL["Belnistrasz"], NPC, 8516 };
    { INDENT..AL["Sah'rhee"], NPC, 8767 };
    { "3) "..AL["Mordresh Fire Eye"], NPC, 7357 };
    { "4) "..AL["Glutton"], NPC, 8567 };
    { "5) "..AL["Ragglesnout"].." ("..AL["Rare"]..", "..AL["Varies"]..")", NPC, 7354 };
    { "6) "..AL["Amnennar the Coldbringer"], NPC, 7358 };
    { "7) "..AL["Plaguemaw the Rotting"], NPC, 7356 };
    };
};
["RazorfenKraul"] = {
    ZoneName = { BabbleZone["Razorfen Kraul"], 491 };
    Location = { BabbleZone["The Barrens"], 17 };
    LevelRange = "23-33";
    MinLevel = "17";
    PlayerLimit = "5";
    Acronym = AL["RFK"];
    MapName = "RazorfenKraul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Roogug"], NPC, 6168 };
    { "2) "..AL["Aggem Thorncurse <Death's Head Prophet>"], NPC, 4424 };
    { "3) "..AL["Death Speaker Jargba <Death's Head Captain>"], NPC, 4428 };
    { "4) "..AL["Overlord Ramtusk"], NPC, 4420 };
    { INDENT..AL["Razorfen Spearhide"], NPC, 4438 };
    { "5) "..AL["Agathelos the Raging"], NPC, 4422 };
    { "6) "..AL["Blind Hunter"].." ("..AL["Rare"]..")", NPC, 4425 };
    { "7) "..AL["Charlga Razorflank <The Crone>"], NPC, 4421 };
    { "8) "..AL["Willix the Importer"], NPC, 4508 };
    { INDENT..AL["Heralath Fallowbrook"], NPC, 4510 };
    { "9) "..AL["Earthcaller Halmgar"].." ("..AL["Rare"]..")", NPC, 4842 };
    };
};
["TheRuinsofAhnQiraj"] = {
    ZoneName = { BabbleZone["Ruins of Ahn'Qiraj"], 3429 };
    Location = { BabbleZone["Silithus"], 1377 };
    LevelRange = "60-70";
    MinLevel = "50";
    PlayerLimit = "20";
    Acronym = AL["AQ20"];
    MapName = "RuinsofAhnQiraj";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Circle"], FACTION, 609 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Kurinnaxx"], NPC, 15348 };
    { INDENT..AL["Lieutenant General Andorov"], NPC, 15471 };
    { INDENT..AL["Four Kaldorei Elites"], NPC, 15473 };
    { "2) "..AL["General Rajaxx"], NPC, 15341 };
    { INDENT..AL["Captain Qeez"], NPC, 15391 };
    { INDENT..AL["Captain Tuubid"], NPC, 15392 };
    { INDENT..AL["Captain Drenn"], NPC, 15389 };
    { INDENT..AL["Captain Xurrem"], NPC, 15390 };
    { INDENT..AL["Major Yeggeth"], NPC, 15386 };
    { INDENT..AL["Major Pakkon"], NPC, 15388 };
    { INDENT..AL["Colonel Zerran"], NPC, 15385 };
    { "3) "..AL["Moam"].." ("..AL["Optional"]..")", NPC, 15340 };
    { "4) "..AL["Buru the Gorger"].." ("..AL["Optional"]..")", NPC, 15370 };
    { "5) "..AL["Ayamiss the Hunter"].." ("..AL["Optional"]..")", NPC, 15369 };
    { "6) "..AL["Ossirian the Unscarred"], NPC, 15339 };
    { GREN.."1') "..AL["Safe Room"] };
    };
};
["TheTempleofAhnQiraj"] = {
    ZoneName = { BabbleZone["Temple of Ahn'Qiraj"], 3428 };
    Location = { BabbleZone["Silithus"], 1377 };
    LevelRange = "60-70";
    MinLevel = "50";
    PlayerLimit = "10-25";
    Acronym = AL["AQ40"];
    MapName = "AhnQiraj";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Brood of Nozdormu"], FACTION, 910 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["The Prophet Skeram"].." ("..AL["Outside"]..")", NPC, 15263 };
    { "2) "..AL["The Bug Family"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Vem"], NPC, 15544 };
    { INDENT..AL["Lord Kri"], NPC, 15511 };
    { INDENT..AL["Princess Yauj"], NPC, 15543 };
    { "3) "..AL["Battleguard Sartura"], NPC, 15516 };
    { "4) "..AL["Fankriss the Unyielding"], NPC, 15510 };
    { "5) "..AL["Viscidus"].." ("..AL["Optional"]..")", NPC, 15299 };
    { "6) "..AL["Princess Huhuran"], NPC, 15509 };
    { "7) "..AL["Twin Emperors"] };
    { INDENT..AL["Emperor Vek'lor"], NPC, 15276 };
    { INDENT..AL["Emperor Vek'nilash"], NPC, 15275 };
    { "8) "..AL["Ouro"].." ("..AL["Optional"]..")", NPC, 15517 };
    { "9) "..AL["Eye of C'Thun"], NPC, 15589 };
    { INDENT..AL["C'Thun"], NPC, 15727 };
    { GREN.."1') "..AL["Andorgos <Brood of Malygos>"], NPC, 15502 };
    { GREN..INDENT..AL["Vethsera <Brood of Ysera>"], NPC, 15504 };
    { GREN..INDENT..AL["Kandrostrasz <Brood of Alexstrasza>"], NPC, 15503 };
    { GREN.."2') "..AL["Arygos"], NPC, 15380 };
    { GREN..INDENT..AL["Caelestrasz"], NPC, 15379 };
    { GREN..INDENT..AL["Merithra of the Dream"], NPC, 15378 };
    };
};
["WailingCaverns"] = {
    ZoneName = { BabbleZone["Wailing Caverns"], 718 };
    Location = { BabbleZone["The Barrens"], 17 };
    LevelRange = "16-25";
    MinLevel = "10";
    PlayerLimit = "5";
    Acronym = AL["WC"];
    MapName = "WailingCaverns";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Disciple of Naralex"], NPC, 3678 };
    { "2) "..AL["Lord Cobrahn <Fanglord>"], NPC, 3669 };
    { "3) "..AL["Lady Anacondra <Fanglord>"].." ("..AL["Varies"]..")", NPC, 3671 };
    { "4) "..AL["Kresh"].." ("..AL["Varies"]..")", NPC, 3653 };
    { "5) "..AL["Lord Pythas <Fanglord>"], NPC, 3670 };
    { "6) "..AL["Skum"], NPC, 3674 };
    { "7) "..AL["Lord Serpentis <Fanglord>"].." ("..AL["Upper"]..")", NPC, 3673 };
    { "8) "..AL["Verdan the Everliving"].." ("..AL["Upper"]..")", NPC, 5775 };
    { "9) "..AL["Mutanus the Devourer"], NPC, 3654 };
    { INDENT..AL["Naralex"], NPC, 3679 };
    { "10) "..AL["Deviate Faerie Dragon"].." ("..AL["Rare"]..")", NPC, 5912 };
    };
};
["ZulFarrak"] = {
    ZoneName = { BabbleZone["Zul'Farrak"], 978 };
    Location = { BabbleZone["Tanaris"], 440 };
    LevelRange = "42-48";
    MinLevel = "35";
    PlayerLimit = "5";
    Acronym = AL["ZF"];
    MapName = "ZulFarrak";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Antu'sul <Overseer of Sul>"], NPC, 8127 };
    { "2) "..AL["Theka the Martyr"], NPC, 7272 };
    { "3) "..AL["Witch Doctor Zum'rah"], NPC, 7271 };
    { INDENT..AL["Zul'Farrak Dead Hero"], NPC, 7276 };
    { "4) "..AL["Nekrum Gutchewer"], NPC, 7796 };
    { INDENT..AL["Shadowpriest Sezz'ziz"], NPC, 7275 };
    { INDENT..AL["Dustwraith"].." ("..AL["Rare"]..")", NPC, 10081 };
    { "5) "..AL["Sergeant Bly"], NPC, 7604 };
    { INDENT..AL["Weegli Blastfuse"], NPC, 7607 };
    { INDENT..AL["Murta Grimgut"], NPC, 7608 };
    { INDENT..AL["Raven"], NPC, 7605 };
    { INDENT..AL["Oro Eyegouge"], NPC, 7606 };
    { INDENT..AL["Sandfury Executioner"], NPC, 7274 };
    { "6) "..AL["Hydromancer Velratha"], NPC, 7795 };
    { INDENT..AL["Gahz'rilla"].." ("..AL["Summon"]..")", NPC, 7273 };
    { INDENT..AL["Elder Wildmane"].." ("..AL["Lunar Festival"]..")", NPC, 15578 };
    { "7) "..AL["Chief Ukorz Sandscalp"], NPC, 7267 };
    { INDENT..AL["Ruuzlu"], NPC, 7797 };
    { "8) "..AL["Zerillis"].." ("..AL["Rare"]..", "..AL["Wanders"]..")", NPC, 10082 };
    { "9) "..AL["Sandarr Dunereaver"].." ("..AL["Rare"]..")", NPC, 10080 };
    };
};

--************************************************
-- Eastern Kingdoms Instances (Classic)
--************************************************

["BlackrockDepths"] = {
    ZoneName = { BabbleZone["Blackrock Depths"], 1584 };
    Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
    LevelRange = "52-58";
    MinLevel = "10-25";
    PlayerLimit = "5";
    Acronym = AL["BRD"];
    MapName = "BlackrockDepths";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Shadowforge Key"], ITEM, 11000 };
    { ORNG..AL["Key"]..": "..AL["Prison Cell Key"].." ("..AL["Jail Break!"]..")", ITEM, 11140 };
    { ORNG..AL["Key"]..": "..AL["Banner of Provocation"].." ("..AL["Theldren"]..")", ITEM, 21986 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Lord Roccor"], NPC, 9025 };
    { "2) "..AL["Kharan Mighthammer"], NPC, 9021 };
    { "3) "..AL["Commander Gor'shak <Kargath Expeditionary Force>"], NPC, 9020 };
    { "4) "..AL["Marshal Windsor"], NPC, 9023 };
    { "5) "..AL["High Interrogator Gerstahn <Twilight's Hammer Interrogator>"], NPC, 9018 };
    { "6) "..AL["Ring of Law"] };
    { INDENT..AL["Anub'shiah"].." ("..AL["Random"]..")", NPC, 9031 };
    { INDENT..AL["Eviscerator"].." ("..AL["Random"]..")", NPC, 9029 };
    { INDENT..AL["Gorosh the Dervish"].." ("..AL["Random"]..")", NPC, 9027 };
    { INDENT..AL["Grizzle"].." ("..AL["Random"]..")", NPC, 9028 };
    { INDENT..AL["Hedrum the Creeper"].." ("..AL["Random"]..")", NPC, 9032 };
    { INDENT..AL["Ok'thor the Breaker"].." ("..AL["Random"]..")", NPC, 9030 };
    { INDENT..AL["Theldren"].." ("..AL["Summon"]..")", NPC, 16059 };
    { INDENT..AL["Lefty"], NPC, 16049 };
    { INDENT..AL["Malgen Longspear"], NPC, 16052 };
    { INDENT..AL["Gnashjaw <Malgen Longspear's Pet>"], NPC, 16095 };
    { INDENT..AL["Rotfang"], NPC, 16050 };
    { INDENT..AL["Va'jashni"], NPC, 16055 };
    { INDENT..AL["Houndmaster Grebmar"].." ("..AL["Lower"]..")", NPC, 9319 };
    { INDENT..AL["Elder Morndeep"].." ("..AL["Lunar Festival"]..")", NPC, 15549 };
    { INDENT..AL["High Justice Grimstone"], NPC, 10096 };
    { "7) "..AL["Monument of Franclorn Forgewright"], OBJECT, 164689 };
    { INDENT..AL["Pyromancer Loregrain"], NPC, 9024 };
    { "8) "..AL["The Vault"] };
    { INDENT..AL["Warder Stilgiss"], NPC, 9041 };
    { INDENT..AL["Verek"], NPC, 9042 };
    { INDENT..AL["Watchman Doomgrip"], NPC, 9476 };
    { "9) "..AL["Fineous Darkvire <Chief Architect>"], NPC, 9056 };
    { "10) "..AL["The Black Anvil"] };
    { INDENT..AL["Lord Incendius"], NPC, 9017 };
    { "11) "..AL["Bael'Gar"], NPC, 9016 };
    { "12) "..AL["Shadowforge Lock"] };
    { "13) "..AL["General Angerforge"], NPC, 9033 };
    { "14) "..AL["Golem Lord Argelmach"], NPC, 8983 };
    { INDENT..AL["Field Repair Bot 74A"], NPC, 14337 };
    { INDENT..AL["Blacksmithing Plans"], OBJECT, 173232 };
    { "15) "..AL["The Grim Guzzler"] };
    { INDENT..AL["Hurley Blackbreath"], NPC, 9537 };
    { INDENT..AL["Lokhtos Darkbargainer <The Thorium Brotherhood>"], NPC, 12944 };
    { INDENT..AL["Mistress Nagmara"], NPC, 9500 };
    { INDENT..AL["Phalanx"], NPC, 9502 };
    { INDENT..AL["Plugger Spazzring"], NPC, 9499 };
    { INDENT..AL["Private Rocknot"], NPC, 9503 };
    { INDENT..AL["Ribbly Screwspigot"], NPC, 9543 };
    { INDENT..AL["Coren Direbrew"].." ("..AL["Brewfest"]..")", NPC, 23872 };
    { INDENT..AL["Griz Gutshank <Arena Vendor>"], NPC, 28225 };
    { "16) "..AL["Ambassador Flamelash"], NPC, 9156 };
    { "17) "..AL["Panzor the Invincible"].." ("..AL["Rare"]..")", NPC, 8923 };
    { INDENT..AL["Blacksmithing Plans"], OBJECT, 173232 };
    { "18) "..AL["Summoner's Tomb"] };
    { "19) "..AL["The Lyceum"] };
    { "20) "..AL["Magmus"], NPC, 9938 };
    { "21) "..AL["Emperor Dagran Thaurissan"], NPC, 9019 };
    { INDENT..AL["Princess Moira Bronzebeard <Princess of Ironforge>"], NPC, 8929 };
    { INDENT..AL["High Priestess of Thaurissan"], NPC, 10076 };
    { "22) "..AL["The Black Forge"] };
    { "23) "..BabbleZone["Molten Core"], ZONE, 2717 };
    { INDENT..AL["Core Fragment"], OBJECT, 179553 };
    { "24) "..AL["Overmaster Pyron"], NPC, 9026 };
    { "25) "..AL["Blacksmithing Plans"], OBJECT, 173232 };
    };
};
["BlackrockSpireLower"] = {
    ZoneName = { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", 1583 };
    Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
    LevelRange = "54-60";
    MinLevel = "45";
    PlayerLimit = "5";
    Acronym = AL["LBRS"];
    MapName = "BlackrockSpire";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")", ITEM, 22057 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")", ZONE, 1583 };
    { BLUE.."C-F) "..AL["Connection"] };
    { "1) "..AL["Vaelan"].." ("..AL["Upper"]..")", NPC, 10296 };
    { "2) "..AL["Warosh <The Cursed>"].." ("..AL["Wanders"]..")", NPC, 10799 };
    { INDENT..AL["Elder Stonefort"].." ("..AL["Lunar Festival"]..")", NPC, 15560 };
    { "3) "..AL["Roughshod Pike"], OBJECT, 175886 };
    { "4) "..AL["Spirestone Butcher"].." ("..AL["Rare"]..")", NPC, 9219 };
    { "5) "..AL["Highlord Omokk"], NPC, 9196 };
    { "6) "..AL["Spirestone Battle Lord"].." ("..AL["Rare"]..")", NPC, 9218 };
    { INDENT..AL["Spirestone Lord Magus"].." ("..AL["Rare"]..")", NPC, 9217 };
    { "7) "..AL["Shadow Hunter Vosh'gajin"], NPC, 9236 };
    { INDENT..AL["Fifth Mosh'aru Tablet"], OBJECT, 175949 };
    { "8) "..AL["Bijou"], NPC, 10257 };
    { "9) "..AL["War Master Voone"], NPC, 9237 };
    { INDENT..AL["Mor Grayhoof"].." ("..AL["Summon"]..")", NPC, 16080 };
    { INDENT..AL["Sixth Mosh'aru Tablet"], OBJECT, 175950 };
    { "10) "..AL["Bijou's Belongings"], OBJECT, 175334 };
    { "11) "..AL["Human Remains"].." ("..AL["Lower"]..")", OBJECT, 176090 };
    { INDENT..AL["Unfired Plate Gauntlets"].." ("..AL["Lower"]..")", OBJECT, 176089 };
    { "12) "..AL["Bannok Grimaxe <Firebrand Legion Champion>"].." ("..AL["Rare"]..")", NPC, 9596 };
    { "13) "..AL["Mother Smolderweb"], NPC, 10596 };
    { "14) "..AL["Crystal Fang"].." ("..AL["Rare"]..")", NPC, 10376 };
    { "15) "..AL["Urok's Tribute Pile"], OBJECT, 175621 };
    { INDENT..AL["Urok Doomhowl"].." ("..AL["Summon"]..")", NPC, 10584 };
    { "16) "..AL["Quartermaster Zigris <Bloodaxe Legion>"], NPC, 9736 };
    { "17) "..AL["Halycon"], NPC, 10220 };
    { INDENT..AL["Gizrul the Slavener"], NPC, 10268 };
    { "18) "..AL["Ghok Bashguud <Bloodaxe Champion>"].." ("..AL["Rare"]..")", NPC, 9718 };
    { "19) "..AL["Overlord Wyrmthalak"], NPC, 9568 };
    { GREN.."1') "..AL["Burning Felguard"].." ("..AL["Rare"]..", "..AL["Summon"]..")", NPC, 10263 };
    };
    [2] = {
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")", ITEM, 22057 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", ZONE, 1583 };
    { BLUE.."C-E) "..AL["Connection"] };
    { "1) "..AL["Pyroguard Emberseer"], NPC, 9816 };
    { "2) "..AL["Solakar Flamewreath"], NPC, 10264 };
    { INDENT..AL["Father Flame"], OBJECT, 175245 };
    { "3) "..AL["Darkstone Tablet"], OBJECT, 175385 };
    { INDENT..AL["Doomrigger's Coffer"], OBJECT, 175382 };
    { "4) "..AL["Jed Runewatcher <Blackhand Legion>"].." ("..AL["Rare"]..")", NPC, 10509 };
    { "5) "..AL["Goraluk Anvilcrack <Blackhand Legion Armorsmith>"], NPC, 10899 };
    { "6) "..AL["Warchief Rend Blackhand"], NPC, 10429 };
    { INDENT..AL["Gyth <Rend Blackhand's Mount>"], NPC, 10339 };
    { "7) "..AL["Awbee"], NPC, 10740 };
    { "8) "..AL["The Beast"], NPC, 10430 };
    { INDENT..AL["Lord Valthalak"].." ("..AL["Summon"]..")", NPC, 16042 };
    { INDENT..AL["Finkle Einhorn"], NPC, 10776 };
    { "9) "..AL["General Drakkisath"], NPC, 10363 };
    { INDENT..AL["Drakkisath's Brand"], OBJECT, 179880 };
    { "10) "..BabbleZone["Blackwing Lair"], ZONE, 2677 };
    };
};
["BlackwingLair"] = {
    ZoneName = { BabbleZone["Blackwing Lair"], 2677 };
    Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
    LevelRange = "60-70";
    MinLevel = "60";
    PlayerLimit = "10-25";
    Acronym = AL["BWL"];
    MapName = "BlackwingLair";
    [1] = {
    { ORNG..AL["Attunement Required"] };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Connection"] };
    { BLUE.."C) "..AL["Connection"] };
    { "1) "..AL["Razorgore the Untamed"], NPC, 12435 };
    { "2) "..AL["Vaelastrasz the Corrupt"], NPC, 13020 };
    { "3) "..AL["Broodlord Lashlayer"], NPC, 12017 };
    { "4) "..AL["Firemaw"], NPC, 11983 };
    { "5) "..AL["Draconic for Dummies (Chapter VII)"], ITEM, 21109 };
    { "6) "..AL["Master Elemental Shaper Krixix"], NPC, 14401 };
    { "7) "..AL["Ebonroc"], NPC, 14601 };
    { "8) "..AL["Flamegor"], NPC, 11981 };
    { "9) "..AL["Chromaggus"], NPC, 14020 };
    { "10) "..AL["Nefarian"], NPC, 11583 };
    };
};
["Gnomeregan"] = {
    ZoneName = { BabbleZone["Gnomeregan"], 133 };
    Location = { BabbleZone["Dun Morogh"], 1 };
    LevelRange = "24-32";
    MinLevel = "20";
    PlayerLimit = "5";
    Acronym = AL["Gnome"];
    MapName = "Gnomeregan";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Workshop Key"].." ("..AL["Back"]..")", ITEM, 6893 };
    { BLUE.."A) "..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE.."B) "..AL["Entrance"].." ("..AL["Back"]..")" };
    { "1) "..AL["Blastmaster Emi Shortfuse"], NPC, 7998 };
    { INDENT..AL["Grubbis"], NPC, 7361 };
    { INDENT..AL["Chomper"], NPC, 6215 };
    { "2) "..AL["Clean Room"] };
    { INDENT..AL["Tink Sprocketwhistle <Engineering Supplies>"], NPC, 9676 };
    { INDENT..AL["The Sparklematic 5200"], OBJECT, 142487 };
    { INDENT..AL["Mail Box"] };
    { "3) "..AL["Kernobee"], NPC, 7850 };
    { INDENT..AL["Alarm-a-bomb 2600"], NPC, 7897 };
    { INDENT..AL["Matrix Punchograph 3005-B"], OBJECT, 142475 };
    { "4) "..AL["Viscous Fallout"], NPC, 7079 };
    { "5) "..AL["Electrocutioner 6000"], NPC, 6235 };
    { INDENT..AL["Matrix Punchograph 3005-C"], OBJECT, 142476 };
    { "6) "..AL["Crowd Pummeler 9-60"].." ("..AL["Upper"]..")", NPC, 6229 };
    { INDENT..AL["Matrix Punchograph 3005-D"], OBJECT, 142696 };
    { "7) "..AL["Dark Iron Ambassador"], NPC, 6228 };
    { "8) "..AL["Mekgineer Thermaplugg"], NPC, 7800 };
    };
};
["MoltenCore"] = {
    ZoneName = { BabbleZone["Molten Core"], 2717 };
    Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
    LevelRange = "60-70";
    MinLevel = "50";
    PlayerLimit = "10-25";
    Acronym = AL["MC"];
    MapName = "MoltenCore";
    [1] = {
    { ORNG..AL["Attunement Required"] };
    { ORNG..AL["Reputation"]..": "..AL["Hydraxian Waterlords"], FACTION, 749 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Lucifron"], NPC, 12118 };
    { "2) "..AL["Magmadar"], NPC, 11982 };
    { "3) "..AL["Gehennas"], NPC, 12259 };
    { "4) "..AL["Garr"], NPC, 12057 };
    { "5) "..AL["Shazzrah"], NPC, 12264 };
    { "6) "..AL["Baron Geddon"], NPC, 12056 };
    { "7) "..AL["Golemagg the Incinerator"], NPC, 11988 };
    { "8) "..AL["Sulfuron Harbinger"], NPC, 12098 };
    { "9) "..AL["Majordomo Executus"], NPC, 12018 };
    { "10) "..AL["Ragnaros"], NPC, 11502 };
    };
};
["Scholomance"] = {
    ZoneName = { BabbleZone["Scholomance"], 2057 };
    Location = { BabbleZone["Western Plaguelands"], 28 };
    LevelRange = "58-60";
    MinLevel = "45";
    PlayerLimit = "5";
    Acronym = AL["Scholo"];
    MapName = "Scholomance";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Argent Dawn"], FACTION, 529 };
    { ORNG..AL["Key"]..": "..AL["Skeleton Key"], ITEM, 13704 };
    { ORNG..AL["Key"]..": "..AL["Viewing Room Key"].." ("..AL["Viewing Room"]..")", ITEM, 13873 };
    { ORNG..AL["Key"]..": "..AL["Blood of Innocents"].." ("..AL["Kirtonos the Herald"]..")", ITEM, 13523 };
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")", ITEM, 22057 };
    { ORNG..AL["Key"]..": "..AL["Divination Scryer"].." ("..AL["Death Knight Darkreaver"]..")", ITEM, 18746 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Connection"] };
    { BLUE.."C) "..AL["Connection"] };
    { "1) "..AL["Blood Steward of Kirtonos"], NPC, 14861 };
    { INDENT..AL["The Deed to Southshore"], OBJECT, 176486 };
    { "2) "..AL["Kirtonos the Herald"].." ("..AL["Summon"]..")", NPC, 10506 };
    { "3) "..AL["Jandice Barov"], NPC, 10503 };
    { "4) "..AL["The Deed to Tarren Mill"], OBJECT, 176487 };
    { "5) "..AL["Rattlegore"].." ("..AL["Lower"]..")", NPC, 11622 };
    { INDENT..AL["Death Knight Darkreaver"].." ("..AL["Summon"]..")", NPC, 14516 };
    { "6) "..AL["Marduk Blackpool"], NPC, 10433 };
    { INDENT..AL["Vectus"], NPC, 10432 };
    { "7) "..AL["Ras Frostwhisper"], NPC, 10508 };
    { INDENT..AL["The Deed to Brill"], OBJECT, 176484 };
    { INDENT..AL["Kormok"].." ("..AL["Summon"]..")", NPC, 16118 };
    { "8) "..AL["Instructor Malicia"], NPC, 10505 };
    { "9) "..AL["Doctor Theolen Krastinov <The Butcher>"], NPC, 11261 };
    { "10) "..AL["Lorekeeper Polkelt"], NPC, 10901 };
    { "11) "..AL["The Ravenian"], NPC, 10507 };
    { "12) "..AL["Lord Alexei Barov"], NPC, 10504 };
    { INDENT..AL["The Deed to Caer Darrow"], OBJECT, 176485 };
    { "13) "..AL["Lady Illucia Barov"], NPC, 10502 };
    { "14) "..AL["Darkmaster Gandling"], NPC, 1853 };
    { GREN.."1') "..AL["Torch Lever"] };
    { GREN.."2') "..AL["Secret Chest"] };
    { GREN.."3') "..AL["Alchemy Lab"] };
    };
};
["ShadowfangKeep"] = {
    ZoneName = { BabbleZone["Shadowfang Keep"], 209 };
    Location = { BabbleZone["Silverpine Forest"], 130 };
    LevelRange = "17-25";
    MinLevel = "10";
    PlayerLimit = "5";
    Acronym = AL["SFK"];
    MapName = "ShadowfangKeep";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Rethilgore <The Cell Keeper>"], NPC, 3914 };
    { INDENT..AL["Sorcerer Ashcrombe"], NPC, 3850 };
    { INDENT..AL["Deathstalker Adamant"], NPC, 3849 };
    { INDENT..AL["Landen Stilwell"], NPC, 17822 };
    { "2) "..AL["Investigator Fezzen Brasstacks"].." ("..AL["Love is in the Air"]..")", NPC, 38208 };
    { "3) "..AL["Deathstalker Vincent"], NPC, 4444 };
    { "4) "..AL["Apothecary Trio"].." ("..AL["Love is in the Air"]..")" };
    { INDENT..AL["Apothecary Hummel <Crown Chemical Co.>"], NPC, 36296 };
    { INDENT..AL["Apothecary Baxter <Crown Chemical Co.>"], NPC, 36565 };
    { INDENT..AL["Apothecary Frye <Crown Chemical Co.>"], NPC, 36272 };
    { "5) "..AL["Fel Steed"], NPC, 3864 };
    { INDENT..AL["Jordan's Hammer"], OBJECT, 91138 };
    { INDENT..AL["Crate of Ingots"], OBJECT, 182011 };
    { "6) "..AL["Razorclaw the Butcher"], NPC, 3886 };
    { "7) "..AL["Baron Silverlaine"], NPC, 3887 };
    { "8) "..AL["Commander Springvale"], NPC, 4278 };
    { "9) "..AL["Odo the Blindwatcher"], NPC, 4279 };
    { "10) "..AL["Deathsworn Captain"].." ("..AL["Rare"]..")", NPC, 3872 };
    { "11) "..AL["Fenrus the Devourer"], NPC, 4274 };
    { INDENT..AL["Arugal's Voidwalker"], NPC, 4627 };
    { INDENT..AL["The Book of Ur"], OBJECT, 36738 };
    { "12) "..AL["Wolf Master Nandos"], NPC, 3927 };
    { "13) "..AL["Archmage Arugal"], NPC, 4275 };
    };
};
["ScarletMonastery"] = {
    ZoneName = { BabbleZone["Armory"], 796 };
    Location = { BabbleZone["Tirisfal Glades"], 85 };
    LevelRange = "33-40";
    MinLevel = "20";
    PlayerLimit = "5";
    Acronym = AL["Armory"];
    MapName = "ScarletMonastery";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"], ITEM, 7146 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Herod <The Scarlet Champion>"], NPC, 3975 };
    };
    [2] = {
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"], ITEM, 7146 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["High Inquisitor Fairbanks"], NPC, 4542 };
    { "2) "..AL["Scarlet Commander Mograine"], NPC, 3976 };
    { INDENT..AL["High Inquisitor Whitemane"], NPC, 3977 };
    };
    [3] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Interrogator Vishas"], NPC, 3983 };
    { INDENT..AL["Vorrel Sengutz"], NPC, 3981 };
    { "2) "..AL["Pumpkin Shrine"].." ("..AL["Hallow's End"]..")", OBJECT, 186267 };
    { INDENT..AL["Headless Horseman"].." ("..AL["Summon"]..")", NPC, 23682 };
    { "3) "..AL["Bloodmage Thalnos"], NPC, 4543 };
    { GREN.."1') "..AL["Ironspine"].." ("..AL["Rare"]..")", NPC, 6489 };
    { GREN..INDENT..AL["Azshir the Sleepless"].." ("..AL["Rare"]..")", NPC, 6490 };
    { GREN..INDENT..AL["Fallen Champion"].." ("..AL["Rare"]..")", NPC, 6488 };
    };
    [4] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Houndmaster Loksey"], NPC, 3974 };
    { "2) "..AL["Arcanist Doan"], NPC, 6487 };
    };
};
["Stratholme"] = {
    ZoneName = { BabbleZone["Stratholme"], 2017 };
    Location = { BabbleZone["Eastern Plaguelands"], 139 };
    LevelRange = "58-60";
    MinLevel = "45";
    PlayerLimit = "5";
    Acronym = AL["Strat"];
    MapName = "Stratholme";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Argent Dawn"], FACTION, 529 };
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"].." ("..AL["Living Side"]..")", ITEM, 7146 };
    { ORNG..AL["Key"]..": "..AL["Key to the City"].." ("..AL["Undead Side"]..")", ITEM, 12382 };
    { ORNG..AL["Key"]..": "..AL["Various Postbox Keys"].." ("..AL["Postmaster Malown"]..")" };
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")", ITEM, 22057 };
    { BLUE.."A) "..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE.."B) "..AL["Entrance"].." ("..AL["Side"]..")" };
    { "1) "..AL["Skul"].." ("..AL["Rare"]..", "..AL["Varies"]..")", NPC, 10393 };
    { INDENT..AL["Stratholme Courier"], NPC, 11082 };
    { INDENT..AL["Fras Siabi"], NPC, 11058 };
    { "2) "..AL["Atiesh <Hand of Sargeras>"].." ("..AL["Summon"]..")", NPC, 16387 };
    { "3) "..AL["Hearthsinger Forresten"].." ("..AL["Varies"]..")", NPC, 10558 };
    { "4) "..AL["The Unforgiven"], NPC, 10516 };
    { "5) "..AL["Elder Farwhisper"].." ("..AL["Lunar Festival"]..")", NPC, 15607 };
    { "6) "..AL["Timmy the Cruel"], NPC, 10808 };
    { "7) "..AL["Malor the Zealous"], NPC, 11032 };
    { INDENT..AL["Malor's Strongbox"], OBJECT, 176112 };
    { "8) "..AL["Crimson Hammersmith"].." ("..AL["Summon"]..")", NPC, 11120 };
    { INDENT..AL["Blacksmithing Plans"], OBJECT, 173232 };
    { "9) "..AL["Cannon Master Willey"], NPC, 10997 };
    { "10) "..AL["Archivist Galford"], NPC, 10811 };
    { "11) "..AL["Grand Crusader Dathrohan"], NPC, 10812 };
    { INDENT..AL["Balnazzar"], NPC, 10813 };
    { INDENT..AL["Sothos"].." ("..AL["Summon"]..")", NPC, 16102 };
    { INDENT..AL["Jarien"].." ("..AL["Summon"]..")", NPC, 16101 };
    { "12) "..AL["Magistrate Barthilas"].." ("..AL["Varies"]..")", NPC, 10435 };
    { "13) "..AL["Aurius"], NPC, 10917 };
    { "14) "..AL["Stonespine"].." ("..AL["Rare"]..")", NPC, 10809 };
    { "15) "..AL["Baroness Anastari"], NPC, 10436 };
    { INDENT..AL["Black Guard Swordsmith"].." ("..AL["Summon"]..")", NPC, 11121 };
    { INDENT..AL["Blacksmithing Plans"], OBJECT, 173232 };
    { "16) "..AL["Nerub'enkan"], NPC, 10437 };
    { "17) "..AL["Maleki the Pallid"], NPC, 10438 };
    { "18) "..AL["Ramstein the Gorger"], NPC, 10439 };
    { "19) "..AL["Baron Rivendare"], NPC, 10440 };
    { INDENT..AL["Ysida Harmon"], NPC, 16031 };
    { GREN.."1') "..AL["Crusaders' Square Postbox"] };
    { GREN.."2') "..AL["Market Row Postbox"] };
    { GREN.."3') "..AL["Festival Lane Postbox"] };
    { GREN.."4') "..AL["Elders' Square Postbox"] };
    { GREN.."5') "..AL["King's Square Postbox"] };
    { GREN.."6') "..AL["Fras Siabi's Postbox"] };
    { GREN..AL["3rd Box Opened"]..": "..AL["Postmaster Malown"], NPC, 11143 };
    };
};
["TheDeadmines"] = {
    ZoneName = { BabbleZone["The Deadmines"], 1581 };
    Location = { BabbleZone["Westfall"], 40 };
    LevelRange = "16-22";
    MinLevel = "10";
    PlayerLimit = "5";
    Acronym = AL["VC"];
    MapName = "TheDeadmines";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"] };
    { "1) "..AL["Rhahk'Zor <The Foreman>"], NPC, 644 };
    { "2) "..AL["Miner Johnson"].." ("..AL["Rare"]..")", NPC, 3586 };
    { "3) "..AL["Sneed <Lumbermaster>"], NPC, 643 };
    { INDENT..AL["Sneed's Shredder <Lumbermaster>"], NPC, 642 };
    { "4) "..AL["Gilnid <The Smelter>"], NPC, 1763 };
    { "5) "..AL["Defias Gunpowder"], OBJECT, 17155 };
    { "6) "..AL["Captain Greenskin"], NPC, 647 };
    { INDENT..AL["Edwin VanCleef <Defias Kingpin>"], NPC, 639 };
    { INDENT..AL["Mr. Smite <The Ship's First Mate>"], NPC, 646 };
    { INDENT..AL["Cookie <The Ship's Cook>"], NPC, 645 };
    };
};
["TheStockade"] = {
    ZoneName = { BabbleZone["The Stockade"], 717 };
    Location = { BabbleZone["Stormwind City"], 1519 };
    LevelRange = "21-27";
    MinLevel = "15";
    PlayerLimit = "5";
    Acronym = AL["Stocks"];
    MapName = "TheStockade";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Targorr the Dread"].." ("..AL["Varies"]..")", NPC, 1696 };
    { "2) "..AL["Kam Deepfury"], NPC, 1666 };
    { "3) "..AL["Hamhock"], NPC, 1717 };
    { "4) "..AL["Bazil Thredd"], NPC, 1716 };
    { "5) "..AL["Dextren Ward"], NPC, 1663 };
    { "6) "..AL["Bruegal Ironknuckle"].." ("..AL["Rare"]..")", NPC, 1720 };
    };
};
["TheSunkenTemple"] = {
    ZoneName = { BabbleZone["Sunken Temple"], 1417 };
    Location = { BabbleZone["Swamp of Sorrows"], 8 };
    LevelRange = "46-53";
    MinLevel = "35";
    PlayerLimit = "5";
    Acronym = AL["ST"];
    MapName = "TheTempleOfAtalHakkar";
    [1] = {
    { ORNG..AL["AKA"]..": "..BabbleZone["The Temple of Atal'Hakkar"] };
    { ORNG..AL["Key"]..": "..AL["Yeh'kinya's Scroll"].." ("..AL["Avatar of Hakkar"]..")", ITEM, 10818 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B-I) "..AL["Connection"] };
    { "1) "..AL["Altar of Hakkar"], OBJECT, 148836 };
    { INDENT..AL["Atal'alarion <Guardian of the Idol>"], NPC, 8580 };
    { "2) "..AL["Dreamscythe"], NPC, 5721 };
    { INDENT..AL["Weaver"], NPC, 5720 };
    { "3) "..AL["Avatar of Hakkar"], NPC, 8443 };
    { "4) "..AL["Jammal'an the Prophet"], NPC, 5710 };
    { INDENT..AL["Ogom the Wretched"], NPC, 5711 };
    { "5) "..AL["Morphaz"], NPC, 5719 };
    { INDENT..AL["Hazzas"], NPC, 5722 };
    { "6) "..AL["Shade of Eranikus"], NPC, 5709 };
    { INDENT..AL["Essence Font"], OBJECT, 148512 };
    { "7) "..AL["Spawn of Hakkar"].." ("..AL["Rare"]..")", NPC, 5708 };
    { "8) "..AL["Elder Starsong"].." ("..AL["Lunar Festival"]..")", NPC, 15593 };
    { GREN.."1'-6') "..AL["Statue Activation Order"] };
    { GREN.."7') "..AL["Atal'ai Defenders"] };
    { GREN..INDENT..AL["Gasher"], NPC, 5713 };
    { GREN..INDENT..AL["Loro"], NPC, 5714 };
    { GREN..INDENT..AL["Hukku"], NPC, 5715 };
    { GREN..INDENT..AL["Zolo"], NPC, 5712 };
    { GREN..INDENT..AL["Mijan"], NPC, 5717 };
    { GREN..INDENT..AL["Zul'Lor"], NPC, 5716 };
    };
};
["Uldaman"] = {
    ZoneName = { BabbleZone["Uldaman"], 1337 };
    Location = { BabbleZone["Badlands"], 3 };
    LevelRange = "36-42";
    MinLevel = "30";
    PlayerLimit = "5";
    Acronym = AL["Ulda"];
    MapName = "Uldaman";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Staff of Prehistoria"].." ("..AL["Ironaya"]..")", ITEM, 7733 };
    { BLUE.."A) "..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE.."B) "..AL["Entrance"].." ("..AL["Back"]..")" };
    { "1) "..AL["Baelog"], NPC, 6906 };
    { INDENT..AL["Eric \"The Swift\""], NPC, 6907 };
    { INDENT..AL["Olaf"], NPC, 6908 };
    { INDENT..AL["Baelog's Chest"], OBJECT, 123329 };
    { INDENT..AL["Conspicuous Urn"], OBJECT, 125477 };
    { "2) "..AL["Remains of a Paladin"], NPC, 6912 };
    { "3) "..AL["Revelosh"], NPC, 6910 };
    { "4) "..AL["Ironaya"], NPC, 7228 };
    { "5) "..AL["Obsidian Sentinel"], NPC, 7023 };
    { "6) "..AL["Annora <Enchanting Trainer>"], NPC, 11073 };
    { "7) "..AL["Ancient Stone Keeper"], NPC, 7206 };
    { "8) "..AL["Galgann Firehammer"], NPC, 7291 };
    { INDENT..AL["Tablet of Will"], OBJECT, 142088 };
    { INDENT..AL["Shadowforge Cache"], OBJECT, 113757 };
    { "9) "..AL["Grimlok <Stonevault Chieftain>"], NPC, 4854 };
    { "10) "..AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")", NPC, 2748 };
    { "11) "..AL["The Discs of Norgannon"].." ("..AL["Lower"]..")", OBJECT, 131474 };
    { INDENT..AL["Ancient Treasure"].." ("..AL["Lower"]..")", OBJECT, 141979 };
    };
};
["ZulGurub"] = {
    ZoneName = { BabbleZone["Zul'Gurub"], 19 };
    Location = { BabbleZone["Stranglethorn Vale"], 33 };
    LevelRange = "56-70";
    MinLevel = "50";
    PlayerLimit = "20";
    Acronym = AL["ZG"];
    MapName = "ZulGurub";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Zandalar Tribe"], FACTION, 270 };
    { ORNG..AL["Key"]..": "..AL["Mudskunk Lure"].." ("..AL["Gahz'ranka"]..")", ITEM, 19974 };
    { ORNG..AL["Key"]..": "..AL["Gurubashi Mojo Madness"].." ("..AL["Edge of Madness"]..")", ITEM, 19931 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["High Priestess Jeklik"].." ("..AL["Bat"]..")", NPC, 14517 };
    { "2) "..AL["High Priest Venoxis"].." ("..AL["Snake"]..")", NPC, 14507 };
    { "3) "..AL["Zanza the Restless"], NPC, 15042 };
    { "4) "..AL["High Priestess Mar'li"].." ("..AL["Spider"]..")", NPC, 14510 };
    { "5) "..AL["Bloodlord Mandokir"].." ("..AL["Raptor"]..", "..AL["Optional"]..")", NPC, 11382 };
    { INDENT..AL["Ohgan"], NPC, 14988 };
    { "6) "..AL["Edge of Madness"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Gri'lek"].." ("..AL["Random"]..")", NPC, 15082 };
    { INDENT..AL["Hazza'rah"].." ("..AL["Random"]..")", NPC, 15083 };
    { INDENT..AL["Renataki"].." ("..AL["Random"]..")", NPC, 15084 };
    { INDENT..AL["Wushoolay"].." ("..AL["Random"]..")", NPC, 15085 };
    { "7) "..AL["Gahz'ranka"].." ("..AL["Optional"]..", "..AL["Summon"]..")", NPC, 15114 };
    { "8) "..AL["High Priest Thekal"].." ("..AL["Tiger"]..")", NPC, 14509 };
    { INDENT..AL["Zealot Zath"], NPC, 11348 };
    { INDENT..AL["Zealot Lor'Khan"], NPC, 11347 };
    { "9) "..AL["High Priestess Arlokk"].." ("..AL["Panther"]..")", NPC, 14515 };
    { "10) "..AL["Jin'do the Hexxer"].." ("..AL["Undead"]..", "..AL["Optional"]..")", NPC, 11380 };
    { "11) "..AL["Hakkar"], NPC, 14834 };
    { GREN.."1') "..AL["Muddy Churning Waters"] };
    };
};

--************************************************
-- Burning Crusade Instances
--************************************************

["AuchAuchenaiCrypts"] = {
    ZoneName = { BabbleZone["Auchenai Crypts"], 3790 };
    Location = { BabbleZone["Terokkar Forest"], 3519 };
    LevelRange = "64-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["AC"];
    MapName = "AuchenaiCrypts";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Lower City"], FACTION, 1011 };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")", ITEM, 30633 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Shirrak the Dead Watcher"], NPC, 18371 };
    { "2) "..AL["Exarch Maladaar"], NPC, 18373 };
    { INDENT..AL["Avatar of the Martyred"], NPC, 18478 };
    { INDENT..AL["D'ore"], NPC, 19412 };
    };
};
["AuchManaTombs"] = {
    ZoneName = { BabbleZone["Mana-Tombs"], 3792 };
    Location = { BabbleZone["Terokkar Forest"], 3519 };
    LevelRange = "63-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["MT"];
    MapName = "ManaTombs";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Consortium"], FACTION, 933 };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")", ITEM, 30633 };
    { ORNG..AL["Key"]..": "..AL["The Eye of Haramad"].." ("..AL["Exalted"]..", "..AL["Yor <Void Hound of Shaffar>"]..")", ITEM, 32092 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Pandemonius"], NPC, 18341 };
    { INDENT..AL["Shadow Lord Xiraxis"], NPC, 19666 };
    { "2) "..AL["Ambassador Pax'ivi"].." ("..AL["Heroic"]..")", NPC, 22928 };
    { "3) "..AL["Tavarok"], NPC, 18343 };
    { "4) "..AL["Cryo-Engineer Sha'heen"], NPC, 19671 };
    { INDENT..AL["Ethereal Transporter Control Panel"], OBJECT, 183877 };
    { "5) "..AL["Nexus-Prince Shaffar"], NPC, 18344 };
    { INDENT..AL["Yor <Void Hound of Shaffar>"].." ("..AL["Summon"]..", "..AL["Heroic"]..")", NPC, 22930 };
    };
};
["AuchSethekkHalls"] = {
    ZoneName = {BabbleZone["Sethekk Halls"], 3791 };
    Location = { BabbleZone["Terokkar Forest"], 3519 };
    LevelRange = "66-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["Seth"];
    MapName = "SethekkHalls";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Lower City"], FACTION, 1011 };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")", ITEM, 30633 };
    { ORNG..AL["Key"]..": "..AL["Essence-Infused Moonstone"].." ("..AL["Anzu"]..")", ITEM, 32449 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Darkweaver Syth"], NPC, 18472 };
    { INDENT..AL["Lakka"], NPC, 18956 };
    { "2) "..AL["The Saga of Terokk"], OBJECT, 183050 };
    { INDENT..AL["Anzu"].." ("..AL["Summon"]..", "..AL["Heroic"]..")", NPC, 23035 };
    { "3) "..AL["Talon King Ikiss"], NPC, 18473 };
    };
};
["AuchShadowLabyrinth"] = {
    ZoneName = { BabbleZone["Shadow Labyrinth"], 3789 };
    Location = { BabbleZone["Terokkar Forest"], 3519 };
    LevelRange = "69-70";
    MinLevel = "65";
    PlayerLimit = "5";
    Acronym = AL["SL"];
    MapName = "ShadowLabyrinthb";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Lower City"], FACTION, 1011 };
    { ORNG..AL["Key"]..": "..AL["Shadow Labyrinth Key"], ITEM, 27991 };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")", ITEM, 30633 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Spy To'gun"], NPC, 18891 };
    { "2) "..AL["Ambassador Hellmaw"], NPC, 18731 };
    { "3) "..AL["Blackheart the Inciter"], NPC, 18667 };
    { "4) "..AL["Grandmaster Vorpil"], NPC, 18732 };
    { INDENT..AL["The Codex of Blood"], OBJECT, 182947 };
    { "5) "..AL["Murmur"], NPC, 18708 };
    { "6) "..AL["Arcane Container"], OBJECT, 182196 };
    { INDENT..AL["First Fragment Guardian"], NPC, 22890 };
    };
};
["BlackTemple"] = {
    ZoneName = { BabbleZone["Black Temple"].." [A] ("..AL["Start"]..")", 3959 };
    Location = { BabbleZone["Shadowmoon Valley"], 3520 };
    LevelRange = "70";
    MinLevel = "70";
    PlayerLimit = "10-25";
    Acronym = AL["BT"];
    MapName = "BlackTemple";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"], FACTION, 1012 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Towards Reliquary of Souls"] };
    { BLUE.."C) "..AL["Towards Teron Gorefiend"] };
    { BLUE.."D) "..AL["Towards Illidan Stormrage"] };
    { "1) "..AL["Spirit of Olum"], NPC, 23411 };
    { "2) "..AL["High Warlord Naj'entus"], NPC, 22887 };
    { "3) "..AL["Supremus"], NPC, 22898 };
    { "4) "..AL["Shade of Akama"], NPC, 22841 };
    { "5) "..AL["Spirit of Udalo"], NPC, 23410 };
    { INDENT..AL["Aluyen <Reagents>"], NPC, 23157 };
    { INDENT..AL["Okuno <Ashtongue Deathsworn Quartermaster>"], NPC, 23159 };
    { INDENT..AL["Seer Kanai"], NPC, 23158 };
    };
    [2] = {
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"], FACTION, 1012 };
    { BLUE.."B) "..AL["Entrance"] };
    { BLUE.."C) "..AL["Entrance"] };
    { "6) "..AL["Gurtogg Bloodboil"], NPC, 22948 };
    { "7) "..AL["Reliquary of Souls"] };
    { INDENT..AL["Essence of Suffering"], NPC, 23418 };
    { INDENT..AL["Essence of Desire"], NPC, 23419 };
    { INDENT..AL["Essence of Anger"], NPC, 23420 };
    { "8) "..AL["Teron Gorefiend"], NPC, 22871 };
    };
    [3] = {
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"], FACTION, 1012 };
    { BLUE.."D) "..AL["Entrance"] };
    { "9) "..AL["Mother Shahraz"], NPC, 22947 };
    { "10) "..AL["The Illidari Council"], NPC, 23426 };
    { INDENT..AL["Lady Malande"].." ("..AL["Priest"]..")", NPC, 22951 };
    { INDENT..AL["Gathios the Shatterer"].." ("..AL["Paladin"]..")", NPC, 22949 };
    { INDENT..AL["High Nethermancer Zerevor"].." ("..AL["Mage"]..")", NPC, 22950 };
    { INDENT..AL["Veras Darkshadow"].." ("..AL["Rogue"]..")", NPC, 22952 };
    { "11) "..AL["Illidan Stormrage <The Betrayer>"], NPC, 22917 };
    };
};
["CFRSerpentshrineCavern"] = {
    ZoneName = { BabbleZone["Serpentshrine Cavern"], 3607 };
    Location = { BabbleZone["Zangarmarsh"], 3521 };
    LevelRange = "70";
    MinLevel = "70";
    PlayerLimit = "10-25";
    Acronym = AL["SC"];
    MapName = "CoilfangReservoir";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"], FACTION, 942 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Hydross the Unstable <Duke of Currents>"], NPC, 21216 };
    { "2) "..AL["The Lurker Below"], NPC, 21217 };
    { "3) "..AL["Leotheras the Blind"], NPC, 21215 };
    { "4) "..AL["Fathom-Lord Karathress"], NPC, 21214 };
    { INDENT..AL["Seer Olum"], NPC, 22820 };
    { "5) "..AL["Morogrim Tidewalker"], NPC, 21213 };
    { "6) "..AL["Lady Vashj <Coilfang Matron>"], NPC, 21212 };
    };
};
["CFRTheSlavePens"] = {
    ZoneName = { BabbleZone["The Slave Pens"], 3717 };
    Location = { BabbleZone["Zangarmarsh"], 3521 };
    LevelRange = "61-69";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["SP"];
    MapName = "TheSlavePens";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"], FACTION, 942 };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")", ITEM, 30623 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Ahune <The Frost Lord>"].." ("..AL["Midsummer Festival"]..")", NPC, 25740 };
    { "2) "..AL["Mennu the Betrayer"], NPC, 17941 };
    { "3) "..AL["Weeder Greenthumb"], NPC, 17890 };
    { "4) "..AL["Skar'this the Heretic"].." ("..AL["Heroic"]..")", NPC, 22421 };
    { "5) "..AL["Rokmar the Crackler"], NPC, 17991 };
    { "6) "..AL["Naturalist Bite"], NPC, 17893 };
    { "7) "..AL["Quagmirran"], NPC, 17942 };
    };
};
["CFRTheSteamvault"] = {
    ZoneName = { BabbleZone["The Steamvault"], 3715 };
    Location = { BabbleZone["Zangarmarsh"], 3521 };
    LevelRange = "69-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["SV"];
    MapName = "TheSteamvault";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"], FACTION, 942 };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")", ITEM, 30623 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Hydromancer Thespia"], NPC, 17797 };
    { INDENT..AL["Main Chambers Access Panel"] };
    { "2) "..AL["Arcane Container"], OBJECT, 182196 };
    { INDENT..AL["Second Fragment Guardian"], NPC, 22891 };
    { "3) "..AL["Mekgineer Steamrigger"], NPC, 17796 };
    { INDENT..AL["Main Chambers Access Panel"] };
    { "4) "..AL["Warlord Kalithresh"], NPC, 17798 };
    };
};
["CFRTheUnderbog"] = {
    ZoneName = { BabbleZone["The Underbog"], 3716 };
    Location = { BabbleZone["Zangarmarsh"], 3521 };
    LevelRange = "62-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["UB"];
    MapName = "TheUnderbog";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"], FACTION, 942 };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")", ITEM, 30623 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Hungarfen"], NPC, 17770 };
    { INDENT..AL["The Underspore"], OBJECT, 182054 };
    { "2) "..AL["Ghaz'an"], NPC, 18105 };
    { "3) "..AL["Earthbinder Rayge"], NPC, 17885 };
    { "4) "..AL["Swamplord Musel'ek"], NPC, 17826 };
    { INDENT..AL["Claw <Swamplord Musel'ek's Pet>"], NPC, 17827 };
    { "5) "..AL["The Black Stalker"], NPC, 17882 };
    };
};
["CoTBlackMorass"] = {
    ZoneName = { BabbleZone["The Black Morass"], 2366 };
    Location = { BabbleZone["Tanaris"], 440 };
    LevelRange = "68-70";
    MinLevel = "66";
    PlayerLimit = "5";
    Acronym = AL["CoT2"];
    MapName = "CoTTheBlackMorass";
    [1] = {
    { PURP..AL["Event"]..": "..AL["Opening of the Dark Portal"] };
    { ORNG..AL["Attunement Required"] };
    { ORNG..AL["Reputation"]..": "..AL["Keepers of Time"], FACTION, 989 };
    { ORNG..AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")", ITEM, 30635 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Sa'at <Keepers of Time>"], NPC, 20201 };
    { ORNG.."X) "..AL["Portal"].." ("..AL["Spawn Point"]..")" };
    { ORNG..INDENT..AL["Wave 6"]..": "..AL["Chrono Lord Deja"], NPC, 17879 };
    { ORNG..INDENT..AL["Wave 12"]..": "..AL["Temporus"], NPC, 17880 };
    { ORNG..INDENT..AL["Wave 18"]..": "..AL["Aeonus"], NPC, 17881 };
    { "1) "..AL["The Dark Portal"] };
    { INDENT..AL["Medivh"], NPC, 15608 };
    };
};
["CoTHyjal"] = {
    ZoneName = { BabbleZone["Hyjal Summit"], 3606 };
    Location = { BabbleZone["Tanaris"], 440 };
    LevelRange = "70";
    MinLevel = "70";
    PlayerLimit = "10-25";
    Acronym = AL["CoT3"];
    MapName = "CoTMountHyjal";
    [1] = {
    { PURP..AL["Event"]..": "..AL["Battle for Mount Hyjal"] };
    { ORNG..AL["Reputation"]..": "..AL["The Scale of the Sands"], FACTION, 990 };
    { BLUE.."A) "..AL["Alliance Base"] };
    { BLUE..INDENT..AL["Lady Jaina Proudmoore"], NPC, 17772 };
    { BLUE.."B) "..AL["Horde Encampment"] };
    { BLUE..INDENT..AL["Thrall <Warchief>"], NPC, 17852 };
    { BLUE.."C) "..AL["Night Elf Village"] };
    { BLUE..INDENT..AL["Tyrande Whisperwind <High Priestess of Elune>"], NPC, 7999 };
    { "1) "..AL["Rage Winterchill"], NPC, 17767 };
    { "2) "..AL["Anetheron"], NPC, 17808 };
    { "3) "..AL["Kaz'rogal"], NPC, 17888 };
    { "4) "..AL["Azgalor"], NPC, 17842 };
    { "5) "..AL["Archimonde"], NPC, 17968 };
    { "?) "..AL["Indormi <Keeper of Ancient Gem Lore>"], NPC, 23437 };
    { INDENT..AL["Tydormu <Keeper of Lost Artifacts>"], NPC, 23381 };
    };
};
["CoTOldHillsbrad"] = {
    ZoneName = { BabbleZone["Old Hillsbrad Foothills"], 2367 };
    Location = { BabbleZone["Tanaris"], 440 };
    LevelRange = "66-70";
    MinLevel = "66";
    PlayerLimit = "5";
    Acronym = AL["CoT1"];
    MapName = "CoTHillsbradFoothills";
    [1] = {
    { PURP..AL["Event"]..": "..AL["Escape from Durnholde Keep"] };
    { ORNG..AL["Attunement Required"] };
    { ORNG..AL["Reputation"]..": "..AL["Keepers of Time"], FACTION, 989 };
    { ORNG..AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")", ITEM, 30635 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Erozion"], NPC, 18723 };
    { BLUE..INDENT..AL["Brazen"], NPC, 18725 };
    { BLUE.."B) "..AL["Landing Spot"] };
    { BLUE.."C) "..BabbleSubZone["Southshore"] };
    { BLUE.."D) "..BabbleSubZone["Tarren Mill"] };
    { "1) "..AL["Lieutenant Drake"], NPC, 17848 };
    { "2) "..AL["Thrall"].." ("..AL["Lower"]..")", NPC, 17876 };
    { "3) "..AL["Captain Skarloc"], NPC, 17862 };
    { INDENT..AL["Thrall"].." ("..AL["Second Stop"]..")", NPC, 17876 };
    { "4) "..AL["Thrall"].." ("..AL["Third Stop"]..")", NPC, 17876 };
    { "5) "..AL["Epoch Hunter"], NPC, 18096 };
    { INDENT..AL["Thrall"].." ("..AL["Fourth Stop"]..", "..AL["Upper"]..")", NPC, 17876 };
    { INDENT..AL["Taretha"].." ("..AL["Upper"]..")", NPC, 18887 };
    { "6) "..AL["Jonathan Revah"], NPC, 20372 };
    { INDENT..AL["Jerry Carter"], NPC, 20376 };
    { "" };
    { ORNG..AL["Traveling"] };
    { INDENT..AL["Thomas Yance <Travelling Salesman>"], NPC, 18672 };
    { INDENT..AL["Aged Dalaran Wizard"], NPC, 18664 };
    { INDENT..AL["Don Carlos"], NPC, 28132 };
    { INDENT..AL["Guerrero"], NPC, 28163 };
    { "" };
    { ORNG..BabbleSubZone["Southshore"] };
    { INDENT..AL["Kel'Thuzad <The Kirin Tor>"], NPC, 20350 };
    { INDENT..AL["Helcular"], NPC, 20353 };
    { INDENT..AL["Farmer Kent"], NPC, 20368 };
    { INDENT..AL["Sally Whitemane"], NPC, 20357 };
    { INDENT..AL["Renault Mograine"], NPC, 20358 };
    { INDENT..AL["Little Jimmy Vishas"], NPC, 20359 };
    { INDENT..AL["Herod the Bully"], NPC, 20360 };
    { INDENT..AL["Nat Pagle"], NPC, 20344 };
    { INDENT..AL["Hal McAllister"], NPC, 20342 };
    { INDENT..AL["Zixil <Aspiring Merchant>"], NPC, 20419 };
    { INDENT..AL["Overwatch Mark 0 <Protector>"], NPC, 20420 };
    { "" };
    { ORNG..AL["Southshore Inn"] };
    { INDENT..AL["Captain Edward Hanes"], NPC, 20400 };
    { INDENT..AL["Captain Sanders"], NPC, 20351 };
    { INDENT..AL["Commander Mograine"], NPC, 20345 };
    { INDENT..AL["Isillien"], NPC, 20346 };
    { INDENT..AL["Abbendis"], NPC, 20347 };
    { INDENT..AL["Fairbanks"], NPC, 20348 };
    { INDENT..AL["Tirion Fordring"], NPC, 20349 };
    { INDENT..AL["Arcanist Doan"], NPC, 20352 };
    { INDENT..AL["Taelan"].." ("..AL["Upper"]..")", NPC, 20361 };
    { INDENT..AL["Barkeep Kelly <Bartender>"], NPC, 20377 };
    { INDENT..AL["Frances Lin <Barmaid>"], NPC, 20401 };
    { INDENT..AL["Chef Jessen <Speciality Meat & Slop>"], NPC, 20378 };
    { INDENT..AL["Stalvan Mistmantle"].." ("..AL["Upper"]..")", NPC, 20355 };
    { INDENT..AL["Phin Odelic <The Kirin Tor>"].." ("..AL["Upper"]..")", NPC, 20370 };
    { "" };
    { ORNG..BabbleSubZone["Southshore Town Hall"] };
    { INDENT..AL["Magistrate Henry Maleb"], NPC, 20373 };
    { INDENT..AL["Raleigh the True"], NPC, 20380 };
    { INDENT..AL["Nathanos Marris"], NPC, 20354 };
    { INDENT..AL["Bilger the Straight-laced"], NPC, 20379 };
    { "" };
    { ORNG..BabbleSubZone["Tarren Mill"] };
    { INDENT..AL["Innkeeper Monica"], NPC, 18649 };
    { INDENT..AL["Julie Honeywell"], NPC, 18656 };
    { INDENT..AL["Jay Lemieux"], NPC, 18655 };
    { INDENT..AL["Young Blanchy"], NPC, 18651 };
    };
};
["GruulsLair"] = {
    ZoneName = { BabbleZone["Gruul's Lair"], 3923 };
    Location = { BabbleZone["Blade's Edge Mountains"], 3522 };
    LevelRange = "70";
    MinLevel = "65";
    PlayerLimit = "10-25";
    Acronym = AL["GL"];
    MapName = "GruulsLair";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["High King Maulgar <Lord of the Ogres>"], NPC, 18831 };
    { INDENT..AL["Kiggler the Crazed"].." ("..AL["Shaman"]..")", NPC, 18835 };
    { INDENT..AL["Blindeye the Seer"].." ("..AL["Priest"]..")", NPC, 18836 };
    { INDENT..AL["Olm the Summoner"].." ("..AL["Warlock"]..")", NPC, 18834 };
    { INDENT..AL["Krosh Firehand"].." ("..AL["Mage"]..")", NPC, 18832 };
    { "2) "..AL["Gruul the Dragonkiller"], NPC, 19044 };
    };
};
["HCBloodFurnace"] = {
    ZoneName = { BabbleZone["The Blood Furnace"], 3713 };
    Location = { BabbleZone["Hellfire Peninsula"], 3483 };
    LevelRange = "60-68";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["BF"];
    MapName = "TheBloodFurnace";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")", FACTION, 947 };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")", FACTION, 946 };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")", ITEM, 30637 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["The Maker"], NPC, 17381 };
    { "2) "..AL["Broggok"], NPC, 17380 };
    { "3) "..AL["Keli'dan the Breaker"], NPC, 17377 };
    };
};
["HCHellfireRamparts"] = {
    ZoneName = { BabbleZone["Hellfire Ramparts"], 3562 };
    Location = { BabbleZone["Hellfire Peninsula"], 3483 };
    LevelRange = "59-67";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["Ramp"];
    MapName = "HellfireRamparts";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")", FACTION, 947 };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")", FACTION, 946 };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")", ITEM, 30637 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Watchkeeper Gargolmar"], NPC, 17306 };
    { "2) "..AL["Omor the Unscarred"], NPC, 17308 };
    { "3) "..AL["Vazruden"], NPC, 17537 };
    { INDENT..AL["Nazan <Vazruden's Mount>"], NPC, 17536 };
    { INDENT..AL["Reinforced Fel Iron Chest"], OBJECT, 185168 };
    };
};
["HCMagtheridonsLair"] = {
    ZoneName = { BabbleZone["Magtheridon's Lair"], 3836 };
    Location = { BabbleZone["Hellfire Peninsula"], 3483 };
    LevelRange = "70";
    MinLevel = "65";
    PlayerLimit = "10-25";
    Acronym = AL["Mag"];
    MapName = "Magtheridonslair";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Magtheridon"], NPC, 17257 };
    };
};
["HCTheShatteredHalls"] = {
    ZoneName = { BabbleZone["The Shattered Halls"], 3714 };
    Location = { BabbleZone["Hellfire Peninsula"], 3483 };
    LevelRange = "69-70";
    MinLevel = "55";
    PlayerLimit = "5";
    Acronym = AL["SH"];
    MapName = "TheShatteredHalls";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")", FACTION, 947 };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")", FACTION, 946 };
    { ORNG..AL["Key"]..": "..AL["Shattered Halls Key"], ITEM, 28395 };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")", ITEM, 30637 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Randy Whizzlesprocket"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", NPC, 17288 };
    { INDENT..AL["Drisella"].." ("..AL["Horde"]..", "..AL["Heroic"]..")", NPC, 17294 };
    { "2) "..AL["Grand Warlock Nethekurse"], NPC, 16807 };
    { "3) "..AL["Blood Guard Porung"].." ("..AL["Heroic"]..")", NPC, 20923 };
    { "4) "..AL["Warbringer O'mrogg"], NPC, 16809 };
    { "5) "..AL["Warchief Kargath Bladefist"], NPC, 16808 };
    { INDENT..AL["Shattered Hand Executioner"].." ("..AL["Heroic"]..")", NPC, 17301 };
    { INDENT..AL["Private Jacint"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", NPC, 17292 };
    { INDENT..AL["Rifleman Brownbeard"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", NPC, 17289 };
    { INDENT..AL["Captain Alina"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", NPC, 17290 };
    { INDENT..AL["Scout Orgarr"].." ("..AL["Horde"]..", "..AL["Heroic"]..")", NPC, 17297 };
    { INDENT..AL["Korag Proudmane"].." ("..AL["Horde"]..", "..AL["Heroic"]..")", NPC, 17295 };
    { INDENT..AL["Captain Boneshatter"].." ("..AL["Horde"]..", "..AL["Heroic"]..")", NPC, 17296 };
    };
};
["Karazhan"] = {
    ZoneName = { BabbleZone["Karazhan"].." [A] ("..AL["Start"]..")", 3457 };
    Location = { BabbleZone["Deadwind Pass"], 41 };
    LevelRange = "70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["Kara"];
    MapName = "Karazhan";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Violet Eye"], FACTION, 967 };
    { ORNG..AL["Key"]..": "..AL["The Master's Key"], ITEM, 24490 };
    { BLUE.."A) "..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE.."B) "..AL["Staircase to the Ballroom"].." ("..AL["Moroes <Tower Steward>"]..")" };
    { BLUE.."C) "..AL["Stairs to Upper Stable"] };
    { BLUE.."D) "..AL["Ramp to the Guest Chambers"].." ("..AL["Maiden of Virtue"]..")" };
    { BLUE.."E) "..AL["Stairs to Opera House Orchestra Level"] };
    { BLUE.."F) "..AL["Ramp from Mezzanine to Balcony"] };
    { BLUE.."G) "..AL["Entrance"].." ("..AL["Back"]..")" };
    { BLUE.."H) "..AL["Connection to Master's Terrace"].." ("..AL["Nightbane"]..")" };
    { BLUE.."I) "..AL["Path to the Broken Stairs"] };
    { "1) "..AL["Hastings <The Caretaker>"], NPC, 16169 };
    { "2) "..AL["Servant Quarters"] };
    { INDENT..AL["Hyakiss the Lurker"].." ("..AL["Rare"]..", "..AL["Random"]..")", NPC, 16179 };
    { INDENT..AL["Rokad the Ravager"].." ("..AL["Rare"]..", "..AL["Random"]..")", NPC, 16181 };
    { INDENT..AL["Shadikith the Glider"].." ("..AL["Rare"]..", "..AL["Random"]..")", NPC, 16180 };
    { "3) "..AL["Berthold <The Doorman>"], NPC, 16153 };
    { "4) "..AL["Calliard <The Nightman>"], NPC, 16159 };
    { "5) "..AL["Attumen the Huntsman"], NPC, 15550 };
    { INDENT..AL["Midnight"], NPC, 16151 };
    { "6) "..AL["Koren <The Blacksmith>"], NPC, 16388 };
    { "7) "..AL["Moroes <Tower Steward>"], NPC, 15687 };
    { INDENT..AL["Baroness Dorothea Millstipe"].." ("..AL["Random"]..", "..AL["Shadow Priest"]..")", NPC, 19875 };
    { INDENT..AL["Lady Catriona Von'Indi"].." ("..AL["Random"]..", "..AL["Holy Priest"]..")", NPC, 19872 };
    { INDENT..AL["Lady Keira Berrybuck"].." ("..AL["Random"]..", "..AL["Holy Paladin"]..")", NPC, 17007 };
    { INDENT..AL["Baron Rafe Dreuger"].." ("..AL["Random"]..", "..AL["Retribution Paladin"]..")", NPC, 19874 };
    { INDENT..AL["Lord Robin Daris"].." ("..AL["Random"]..", "..AL["Arms Warrior"]..")", NPC, 19876 };
    { INDENT..AL["Lord Crispin Ference"].." ("..AL["Random"]..", "..AL["Protection Warrior"]..")", NPC, 19873 };
    { "8) "..AL["Bennett <The Sergeant at Arms>"], NPC, 16426 };
    { "9) "..AL["Ebonlocke <The Noble>"], NPC, 16806 };
    { "10) "..AL["Keanna's Log"], OBJECT, 182199 };
    { "11) "..AL["Maiden of Virtue"], NPC, 16457 };
    { "12) "..AL["Sebastian <The Organist>"], NPC, 16811 };
    { "13) "..AL["Barnes <The Stage Manager>"], NPC, 16812 };
    { "14) "..AL["The Opera Event"] };
    { INDENT..AL["Red Riding Hood"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["The Big Bad Wolf"], NPC, 17521 };
    { INDENT..AL["Wizard of Oz"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["Dorothee"], NPC, 17535 };
    { INDENT..INDENT..AL["Tito"], NPC, 17548 };
    { INDENT..INDENT..AL["Strawman"], NPC, 17543 };
    { INDENT..INDENT..AL["Tinhead"], NPC, 17547 };
    { INDENT..INDENT..AL["Roar"], NPC, 17546 };
    { INDENT..INDENT..AL["The Crone"], NPC, 18168 };
    { INDENT..AL["Romulo and Julianne"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["Romulo"], NPC, 17533 };
    { INDENT..INDENT..AL["Julianne"], NPC, 17534 };
    { "15) "..AL["The Master's Terrace"] };
    { INDENT..AL["Nightbane"].." ("..AL["Summon"]..")", NPC, 17225 };
    };
    [2] = {
    { ORNG..AL["Reputation"]..": "..AL["The Violet Eye"], FACTION, 967 };
    { ORNG..AL["Key"]..": "..AL["The Master's Key"], ITEM, 24490 };
    { BLUE.."I) "..AL["Path to the Broken Stairs"] };
    { BLUE.."J) "..AL["Broken Stairs"] };
    { BLUE.."K) "..AL["Ramp to Guardian's Library"].." ("..AL["Shade of Aran"]..")" };
    { BLUE.."L) "..AL["Suspicious Bookshelf"].." ("..AL["Terestian Illhoof"]..")" };
    { BLUE.."M) "..AL["Ramp up to the Celestial Watch"].." ("..AL["Netherspite"]..")" };
    { BLUE..INDENT..AL["Ramp down to the Gamesman's Hall"].." ("..AL["Chess Event"]..")" };
    { BLUE.."N) "..AL["Ramp to Medivh's Chamber"] };
    { BLUE.."O) "..AL["Spiral Stairs to Netherspace"].." ("..AL["Prince Malchezaar"]..")" };
    { "16) "..AL["The Curator"], NPC, 15691 };
    { "17) "..AL["Wravien <The Mage>"], NPC, 16813 };
    { "18) "..AL["Gradav <The Warlock>"], NPC, 16814 };
    { "19) "..AL["Kamsis <The Conjurer>"], NPC, 16815 };
    { "20) "..AL["Terestian Illhoof"], NPC, 15688 };
    { INDENT..AL["Kil'rek"].." ("..AL["Imp"]..")", NPC, 17229 };
    { "21) "..AL["Shade of Aran"], NPC, 16524 };
    { "22) "..AL["Netherspite"], NPC, 15689 };
    { "23) "..AL["Ythyar"].." ("..AL["Repair"]..", "..AL["Rewards"]..")", NPC, 17518 };
    { "24) "..AL["Echo of Medivh"], NPC, 16816 };
    { "25) "..AL["Dust Covered Chest"].." ("..AL["Chess Event"]..")", OBJECT, 185119 };
    { "26) "..AL["Prince Malchezaar"], NPC, 15690 };
    };
};
["MagistersTerrace"] = {
    ZoneName = { BabbleZone["Magisters' Terrace"], 4095 };
    Location = { BabbleZone["Isle of Quel'Danas"], 4080 };
    LevelRange = "70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["MaT"];
    MapName = "MagistersTerrace";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["Shattered Sun Offensive"], FACTION, 1077 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Selin Fireheart"], NPC, 24723 };
    { INDENT..AL["Fel Crystals"], NPC, 24722 };
    { "2) "..AL["Tyrith"], NPC, 24822 };
    { "3) "..AL["Vexallus"], NPC, 24744 };
    { "4) "..AL["Scrying Orb"] };
    { INDENT..AL["Kalecgos"], NPC, 24850 };
    { "5) "..AL["Priestess Delrissa"].." ("..AL["Lower"]..")", NPC, 24560 };
    { INDENT..AL["Apoko"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Shaman"]..")", NPC, 24553 };
    { INDENT..AL["Eramas Brightblaze"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Monk"]..")", NPC, 24554 };
    { INDENT..AL["Ellrys Duskhallow"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warlock"]..")", NPC, 24558 };
    { INDENT..INDENT..AL["Fizzle"].." ("..AL["Lower"]..", "..AL["Random"]..")", NPC, 24656 };
    { INDENT..AL["Garaxxas"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Hunter"]..")", NPC, 24555 };
    { INDENT..INDENT..AL["Sliver <Garaxxas' Pet>"].." ("..AL["Lower"]..", "..AL["Random"]..")", NPC, 24552 };
    { INDENT..AL["Kagani Nightstrike"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Rogue"]..")", NPC, 24557 };
    { INDENT..AL["Warlord Salaris"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warrior"]..")", NPC, 24559 };
    { INDENT..AL["Yazzai"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Mage"]..")", NPC, 24561 };
    { INDENT..AL["Zelfan"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Engineer"]..")", NPC, 24556 };
    { "6) "..AL["Kael'thas Sunstrider <Lord of the Blood Elves>"], NPC, 24664 };
    };
};
["SunwellPlateau"] = {
    ZoneName = { BabbleZone["Sunwell Plateau"], 4075 };
    Location = { BabbleZone["Isle of Quel'Danas"], 4080 };
    LevelRange = "70";
    MinLevel = "70";
    PlayerLimit = "10-25";
    Acronym = AL["SuP"];
    MapName = "SunwellPlateau";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Kalecgos"], NPC, 24850 };
    { INDENT..AL["Sathrovarr the Corruptor"], NPC, 24892 };
    { "2) "..AL["Madrigosa"], NPC, 24895 };
    { INDENT..AL["Brutallus"], NPC, 24882 };
    { INDENT..AL["Felmyst"], NPC, 25038 };
    { "3) "..AL["Eredar Twins"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Grand Warlock Alythess"].." ("..AL["Lower"]..")", NPC, 25166 };
    { INDENT..AL["Lady Sacrolash"].." ("..AL["Lower"]..")", NPC, 25165 };
    { INDENT..AL["M'uru"].." ("..AL["Upper"]..")", NPC, 25741 };
    { INDENT..AL["Entropius"].." ("..AL["Upper"]..")", NPC, 25840 };
    { "4) "..AL["Kil'jaeden <The Deceiver>"], NPC, 25315 };
    };
};
["TempestKeepArcatraz"] = {
    ZoneName = {BabbleZone["The Arcatraz"], 3846 };
    Location = { BabbleZone["Netherstorm"], 3523 };
    LevelRange = "69-70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["Arca"];
    MapName = "TheArcatraz";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"], FACTION, 935 };
    { ORNG..AL["Key"]..": "..AL["Key to the Arcatraz"], ITEM, 31084 };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")", ITEM, 30634 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Zereketh the Unbound"], NPC, 20870 };
    { "2) "..AL["Arcane Container"], OBJECT, 182196 };
    { INDENT..AL["Third Fragment Guardian"], NPC, 22892 };
    { "3) "..AL["Dalliah the Doomsayer"], NPC, 20885 };
    { "4) "..AL["Wrath-Scryer Soccothrates"], NPC, 20886 };
    { "5) "..AL["Udalo"], NPC, 21962 };
    { "6) "..AL["Harbinger Skyriss"], NPC, 20912 };
    { INDENT..AL["Warden Mellichar"], NPC, 20904 };
    { INDENT..AL["Millhouse Manastorm"], NPC, 20977 };
    };
};
["TempestKeepBotanica"] = {
    ZoneName = { BabbleZone["The Botanica"], 3847 };
    Location = { BabbleZone["Netherstorm"], 3523 };
    LevelRange = "69-70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["Bota"];
    MapName = "TheBotanica";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"], FACTION, 935 };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")", ITEM, 30634 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"] };
    { "1) "..AL["Commander Sarannis"], NPC, 17976 };
    { "2) "..AL["High Botanist Freywinn"], NPC, 17975 };
    { "3) "..AL["Thorngrin the Tender"], NPC, 17978 };
    { "4) "..AL["Laj"], NPC, 17980 };
    { "5) "..AL["Warp Splinter"], NPC, 17977 };
    };
};
["TempestKeepMechanar"] = {
    ZoneName = { BabbleZone["The Mechanar"], 3849 };
    Location = { BabbleZone["Netherstorm"], 3523 };
    LevelRange = "68-70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["Mech"];
    MapName = "TheMechanar";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"], FACTION, 935 };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")", ITEM, 30634 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"] };
    { "1) "..AL["Gatewatcher Gyro-Kill"], NPC, 19218 };
    { "2) "..AL["Gatewatcher Iron-Hand"], NPC, 19710 };
    { INDENT..AL["Cache of the Legion"], OBJECT, 184465 };
    { "3) "..AL["Mechano-Lord Capacitus"], NPC, 19219 };
    { INDENT..AL["Overcharged Manacell"], OBJECT, 185015 };
    { "4) "..AL["Nethermancer Sepethrea"], NPC, 19221 };
    { "5) "..AL["Pathaleon the Calculator"], NPC, 19220 };
    };
};
["TempestKeepTheEye"] = {
    ZoneName = { BabbleZone["The Eye"], 3845 };
    Location = { BabbleZone["Netherstorm"], 3523 };
    LevelRange = "70";
    MinLevel = "70";
    PlayerLimit = "10-25";
    Acronym = AL["Eye"];
    MapName = "TempestKeep";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"], FACTION, 935 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Al'ar <Phoenix God>"], NPC, 19514 };
    { "2) "..AL["Void Reaver"], NPC, 19516 };
    { "3) "..AL["High Astromancer Solarian"], NPC, 18805 };
    { "4) "..AL["Kael'thas Sunstrider <Lord of the Blood Elves>"], NPC, 19622 };
    { INDENT..AL["Thaladred the Darkener <Advisor to Kael'thas>"].." ("..AL["Warrior"]..")", NPC, 20064 };
    { INDENT..AL["Master Engineer Telonicus <Advisor to Kael'thas>"].." ("..AL["Hunter"]..")", NPC, 20063 };
    { INDENT..AL["Grand Astromancer Capernian <Advisor to Kael'thas>"].." ("..AL["Mage"]..")", NPC, 20062 };
    { INDENT..AL["Lord Sanguinar <The Blood Hammer>"].." ("..AL["Paladin"]..")", NPC, 20060 };
    };
};
["ZulAman"] = {
    ZoneName = { BabbleZone["Zul'Aman"], 3805 };
    Location = { BabbleZone["Ghostlands"], 3433 };
    LevelRange = "70";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["ZA"];
    MapName = "ZulAman";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Harrison Jones"], NPC, 24358 };
    { "1) "..AL["Nalorakk <Bear Avatar>"], NPC, 23576 };
    { INDENT..AL["Tanzar"], NPC, 23790 };
    { INDENT..AL["The Map of Zul'Aman"], OBJECT, 186733 };
    { "2) "..AL["Akil'Zon <Eagle Avatar>"], NPC, 23574 };
    { INDENT..AL["Harkor"], NPC, 23999 };
    { "3) "..AL["Jan'Alai <Dragonhawk Avatar>"], NPC, 23578 };
    { INDENT..AL["Kraz"], NPC, 24024 };
    { "4) "..AL["Halazzi <Lynx Avatar>"], NPC, 23577 };
    { INDENT..AL["Ashli"], NPC, 24001 };
    { "5) "..AL["Zungam"], NPC, 23897 };
    { "6) "..AL["Hex Lord Malacrass"], NPC, 24239 };
    { INDENT..AL["Thurg"].." ("..AL["Random"]..")", NPC, 24241 };
    { INDENT..AL["Gazakroth"].." ("..AL["Random"]..")", NPC, 24244 };
    { INDENT..AL["Lord Raadan"].." ("..AL["Random"]..")", NPC, 24243 };
    { INDENT..AL["Darkheart"].." ("..AL["Random"]..")", NPC, 24246 };
    { INDENT..AL["Alyson Antille"].." ("..AL["Random"]..")", NPC, 24240 };
    { INDENT..AL["Slither"].." ("..AL["Random"]..")", NPC, 24242 };
    { INDENT..AL["Fenstalker"].." ("..AL["Random"]..")", NPC, 24245 };
    { INDENT..AL["Koragg"].." ("..AL["Random"]..")", NPC, 24247 };
    { "7) "..AL["Zul'jin"], NPC, 23863 };
    { GREN.."1') "..AL["Forest Frogs"], NPC, 24396 };
    { GREN..INDENT..AL["Kyren <Reagents>"], NPC, 24409 };
    { GREN..INDENT..AL["Gunter <Food Vendor>"], NPC, 24408 };
    { GREN..INDENT..AL["Adarrah"], NPC, 24405 };
    { GREN..INDENT..AL["Brennan"], NPC, 24453 };
    { GREN..INDENT..AL["Darwen"], NPC, 24407 };
    { GREN..INDENT..AL["Deez"], NPC, 24403 };
    { GREN..INDENT..AL["Galathryn"], NPC, 24404 };
    { GREN..INDENT..AL["Mitzi"], NPC, 24445 };
    { GREN..INDENT..AL["Mannuth"], NPC, 24397 };
    };
};	

--************************************************
-- Wrath of the Lich King Instances
--************************************************

["AhnKahet"] = {
    ZoneName = { BabbleZone["Ahn'kahet: The Old Kingdom"], 4494 };
    Location = { BabbleZone["Dragonblight"], 65 };
    LevelRange = "71-78";
    MinLevel = "68";
    PlayerLimit = "5";
    Acronym = AL["AK, Kahet"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"] };
    { "1) "..AL["Elder Nadox"], NPC, 29309 };
    { "2) "..AL["Prince Taldaram"], NPC, 29308 };
    { "3) "..AL["Amanitar"].." ("..AL["Heroic"]..")", NPC, 30258 };
    { "4) "..AL["Jedoga Shadowseeker"], NPC, 29310 };
    { "5) "..AL["Herald Volazj"], NPC, 29311 };
    { "6) "..AL["Ahn'kahet Brazier"] };
    };
};
["AzjolNerub"] = {
    ZoneName = { BabbleZone["Azjol-Nerub"], 3477 };
    Location = { BabbleZone["Dragonblight"], 65 };
    LevelRange = "70-77";
    MinLevel = "67";
    PlayerLimit = "5";
    Acronym = AL["AN, Nerub"];
    MapName = "DireMaul";
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Connection"] };
    { BLUE.."C) "..AL["Exit"] };
    { "1) "..AL["Krik'thir the Gatewatcher"], NPC, 28684 };
    { INDENT..AL["Watcher Gashra"], NPC, 28730 };
    { INDENT..AL["Watcher Narjil"], NPC, 28729 };
    { INDENT..AL["Watcher Silthik"], NPC, 28731 };
    { "2) "..AL["Hadronox"], NPC, 28921 };
    { "3) "..AL["Elder Nurgen"].." ("..AL["Lunar Festival"]..")", NPC, 30533 };
    { "4) "..AL["Anub'arak"], NPC, 29120 };
    };
};
["CoTOldStratholme"] = {
    ZoneName = { BabbleZone["Caverns of Time"]..": "..BabbleZone["The Culling of Stratholme"], 4100 };
    Location = { BabbleZone["Tanaris"], 440 };
    LevelRange = "78-80";
    MinLevel = "75";
    PlayerLimit = "5";
    Acronym = AL["CoT-Strat"];
    MapName = "DireMaul";
    [1] = {
    { PURP..AL["Event"]..": "..AL["The Culling of Stratholme"] };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"].." ("..AL["Portal"]..")" };
    { ORNG.."X) "..AL["Scourge Invasion Points"] };
    { ORNG..INDENT..AL["Wave 5"]..": "..AL["Meathook"], NPC, 26529 };
    { ORNG..INDENT..AL["Wave 10"]..": "..AL["Salramm the Fleshcrafter"], NPC, 26530 };
    { "1) "..AL["Chromie"], NPC, 26527 };
    { "2) "..AL["Chromie"], NPC, 27915 };
    { "3) "..AL["Chrono-Lord Epoch"], NPC, 26532 };
    { "4) "..AL["Infinite Corruptor"].." ("..AL["Heroic"]..")", NPC, 32273 };
    { INDENT..AL["Guardian of Time"], NPC, 32281 };
    { "5) "..AL["Mal'Ganis"], NPC, 26533 };
    { INDENT..AL["Chromie"], NPC, 30997 };
    };
};
["DrakTharonKeep"] = {
    ZoneName = { BabbleZone["Drak'Tharon Keep"], 4196 };
    Location = { BabbleZone["Grizzly Hills"], 394 };
    LevelRange = "72-78";
    MinLevel = "69";
    PlayerLimit = "5";
    Acronym = AL["DTK"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Connection"] };
    { BLUE.."C) "..AL["Connection"] };
    { "1) "..AL["Trollgore"], NPC, 26630 };
    { "2) "..AL["Kurzel"], NPC, 26664 };
    { "3) "..AL["Novos the Summoner"], NPC, 26631 };
    { "4) "..AL["Elder Kilias"].." ("..AL["Lunar Festival"]..")", NPC, 30534 };
    { "5) "..AL["King Dred"], NPC, 27483 };
    { "6) "..AL["The Prophet Tharon'ja"], NPC, 26632 };
    { "7) "..AL["Drakuru's Brazier"] };
    };
};
["FHHallsOfReflection"] = {
    ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["Halls of Reflection"], 4820 };
    Location = { BabbleZone["Icecrown Citadel"], 4812 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "5";
    Acronym = AL["HoR"]..", "..AL["FH3"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Attunement Required"] };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Portal"].." ("..BabbleZone["Dalaran"]..")", ZONE, 4395 };
    { "1) "..AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")", NPC, 37221 };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")", NPC, 37582 };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")", NPC, 37223 };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")", NPC, 37779 };
    { "2) "..AL["Falric"].." ("..AL["Wave 5"]..")", NPC, 38112 };
    { "3) "..AL["Marwyn"].." ("..AL["Wave 10"]..")", NPC, 38113 };
    { "4) "..AL["Wrath of the Lich King"].." ("..AL["Event"]..")", NPC, 37226 };
    { INDENT..AL["The Captain's Chest"], OBJECT, 201710 };
    };
};
["FHPitOfSaron"] = {
    ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["Pit of Saron"], 4813 };
    Location = { BabbleZone["Icecrown Citadel"], 4812 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "5";
    Acronym = AL["PoS"]..", "..AL["FH2"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Attunement Required"] };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Portal"].." ("..BabbleZone["Halls of Reflection"]..")", ZONE, 4820 };
    { "1) "..AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")", NPC, 36993 };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")", NPC, 37582 };
    { INDENT..AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")", NPC, 37774 };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")", NPC, 36990 };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")", NPC, 37779 };
    { INDENT..AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")", NPC, 37583 };
    { "2) "..AL["Forgemaster Garfrost"], NPC, 36494 };
    { INDENT..AL["Martin Victus"].." ("..AL["Alliance"]..")", NPC, 37591 };
    { INDENT..AL["Gorkun Ironskull"].." ("..AL["Horde"]..")", NPC, 37592 };
    { "3) "..AL["Krick and Ick"], NPC, 36477 };
    { "4) "..AL["Scourgelord Tyrannus"], NPC, 36658 };
    { INDENT..AL["Rimefang"], NPC, 36661 };
    };
};
["FHTheForgeOfSouls"] = {
    ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["The Forge of Souls"], 4809 };
    Location = { BabbleZone["Icecrown Citadel"], 4812 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "5";
    Acronym = AL["FoS"]..", "..AL["FH1"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Portal"].." ("..BabbleZone["Pit of Saron"]..")", ZONE, 4813 };
    { "1) "..AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")", NPC, 37597 };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")", NPC, 37582 };
    { INDENT..AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")", NPC, 37774 };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")", NPC, 37596 };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")", NPC, 37779 };
    { INDENT..AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")", NPC, 37583 };
    { "2) "..AL["Bronjahm <Godfather of Souls>"], NPC, 36497 };
    { "3) "..AL["Devourer of Souls"], NPC, 36502 };
    };
};
["Gundrak"] = {
    ZoneName = { BabbleZone["Gundrak"], 4375 };
    Location = { BabbleZone["Zul'Drak"], 66 };
    LevelRange = "76-80";
    MinLevel = "71";
    PlayerLimit = "5";
    Acronym = AL["Gun"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Exit"] };
    { "1) "..AL["Slad'ran <High Prophet of Sseratus>"], NPC, 29304 };
    { "2) "..AL["Drakkari Colossus"], NPC, 29307 };
    { "3) "..AL["Elder Ohanzee"].." ("..AL["Lunar Festival"]..")", NPC, 30537 };
    { "4) "..AL["Moorabi <High Prophet of Mam'toth>"], NPC, 29305 };
    { "5) "..AL["Eck the Ferocious"].." ("..AL["Heroic"]..", "..AL["Summon"]..")", NPC, 29932 };
    { "6) "..AL["Gal'darah <High Prophet of Akali>"], NPC, 29306 };
    };
};
["IcecrownCitadelA"] = {
    ZoneName = { BabbleZone["Icecrown Citadel"].." [A] ("..AL["Lower"]..")", 4812 };
    Location = { BabbleZone["Icecrown"], 210 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["IC"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"], FACTION, 1156 };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Connection"] };
    { BLUE.."C) "..AL["To next map"] };
    { "1) "..AL["Lord Marrowgar"], NPC, 36612 };
    { "2) "..AL["Lady Deathwhisper"], NPC, 36855 };
    { "3) "..AL["Gunship Battle"].." ("..AL["Alliance"]..")", OBJECT, 201873 };
    { "4) "..AL["Gunship Battle"].." ("..AL["Horde"]..")", OBJECT, 201873 };
    { "5) "..AL["Deathbringer Saurfang"], NPC, 37813 };
    { GREN.."1') "..BabbleSubZone["Light's Hammer"].." ("..AL["Teleporter"]..")" };
    { GREN.."2') "..BabbleSubZone["Oratory of the Damned"].." ("..AL["Teleporter"]..")" };
    { GREN.."3') "..BabbleSubZone["Rampart of Skulls"].." ("..AL["Teleporter"]..", "..AL["Lower"]..")" };
    { GREN..INDENT..BabbleSubZone["Deathbringer's Rise"].." ("..AL["Teleporter"]..", "..AL["Upper"]..")" };
    };
};
["IcecrownCitadelB"] = {
    ZoneName = { BabbleZone["Icecrown Citadel"].." [B] ("..AL["Upper"]..")", 4812 };
    Location = { BabbleZone["Icecrown"], 210 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["IC"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"], FACTION, 1156 };
    { BLUE.."C) "..AL["From previous map"] };
    { BLUE.."D-H) "..AL["Connection"] };
    { BLUE.."I) "..AL["To next map"] };
    { "6) "..AL["Festergut"], NPC, 36626 };
    { "7) "..AL["Rotface"], NPC, 36627 };
    { "8) "..AL["Professor Putricide"], NPC, 36678 };
    { "9) "..AL["Blood Prince Council"] };
    { INDENT..AL["Prince Keleseth"], NPC, 37972 };
    { INDENT..AL["Prince Taldaram"], NPC, 37973 };
    { INDENT..AL["Prince Valanar"], NPC, 37970 };
    { "10) "..AL["Blood-Queen Lana'thel"], NPC, 38004 };
    { "11) "..AL["Valithria Dreamwalker"], NPC, 36789 };
    { "12) "..AL["Sindragosa <Queen of the Frostbrood>"], NPC, 37755 };
    { GREN.."4') "..AL["Upper Spire"].." ("..AL["Teleporter"]..")" };
    { GREN.."5') "..AL["Sindragosa's Lair"].." ("..AL["Teleporter"]..")" };
    };
};
["IcecrownCitadelC"] = {
    ZoneName = { BabbleZone["Icecrown Citadel"].." [C] ("..BabbleSubZone["The Frozen Throne"]..")", 4812 };
    Location = { BabbleZone["Icecrown"], 210 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["IC"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"], FACTION, 1156 };
    { BLUE.."I) "..AL["From previous map"] };
    { "13) "..AL["The Lich King"], NPC, 36597 };
    };
};
["Naxxramas60"] = {
    ZoneName = { BabbleZone["Naxxramas"], 3456 };
    Location = { BabbleZone["Eastern Plaguelands"], 65 };
    LevelRange = "60+";
    MinLevel = "60";
    PlayerLimit = "10-25";
    Acronym = "Nax60";
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { INDENT.."1) "..AL["Patchwerk"], NPC, 16028 };
    { INDENT.."2) "..AL["Grobbulus"], NPC, 15931 };
    { INDENT.."3) "..AL["Gluth"], NPC, 15932 };
    { INDENT.."4) "..AL["Thaddius"], NPC, 15928 };
    { ORNG..INDENT.."1) "..AL["Anub'Rekhan"], NPC, 15956 };
    { ORNG..INDENT.."2) "..AL["Grand Widow Faerlina"], NPC, 15953 };
    { ORNG..INDENT.."3) "..AL["Maexxna"], NPC, 15952 };
    { _RED..INDENT.."1) "..AL["Instructor Razuvious"], NPC, 16061 };
    { _RED..INDENT.."2) "..AL["Gothik the Harvester"], NPC, 16060 };
    { _RED..INDENT.."3) "..AL["Four Horsemen Chest"], OBJECT, 181366 };
    { PURP..INDENT.."1) "..AL["Noth the Plaguebringer"], NPC, 15954 };
    { PURP..INDENT.."2) "..AL["Heigan the Unclean"], NPC, 15936 };
    { PURP..INDENT.."3) "..AL["Loatheb"], NPC, 16011 };
    { GREN..INDENT.."1) "..AL["Sapphiron"], NPC, 15989 };
    { GREN..INDENT.."2) "..AL["Kel'Thuzad"], NPC, 15990 };
    };
};
["Naxxramas"] = {
    ZoneName = { BabbleZone["Naxxramas"], 3456 };
    Location = { BabbleZone["Dragonblight"], 65 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Nax"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Mr. Bigglesworth"].." ("..AL["Wanders"]..")", NPC, 16998 };
    { BabbleSubZone["The Construct Quarter"] };
    { INDENT.."1) "..AL["Patchwerk"], NPC, 16028 };
    { INDENT.."2) "..AL["Grobbulus"], NPC, 15931 };
    { INDENT.."3) "..AL["Gluth"], NPC, 15932 };
    { INDENT.."4) "..AL["Thaddius"], NPC, 15928 };
    { ORNG..BabbleSubZone["The Arachnid Quarter"] };
    { ORNG..INDENT.."1) "..AL["Anub'Rekhan"], NPC, 15956 };
    { ORNG..INDENT.."2) "..AL["Grand Widow Faerlina"], NPC, 15953 };
    { ORNG..INDENT.."3) "..AL["Maexxna"], NPC, 15952 };
    { _RED..BabbleSubZone["The Military Quarter"] };
    { _RED..INDENT.."1) "..AL["Instructor Razuvious"], NPC, 16061 };
    { _RED..INDENT.."2) "..AL["Gothik the Harvester"], NPC, 16060 };
    { _RED..INDENT.."3) "..AL["The Four Horsemen"] };
    { _RED..INDENT..INDENT..AL["Thane Korth'azz"], NPC, 16064 };
    { _RED..INDENT..INDENT..AL["Lady Blaumeux"], NPC, 16065 };
    { _RED..INDENT..INDENT..AL["Baron Rivendare"], NPC, 30549 };
    { _RED..INDENT..INDENT..AL["Sir Zeliek"], NPC, 16063 };
    { _RED..INDENT..INDENT..AL["Four Horsemen Chest"], OBJECT, 181366 };
    { PURP..BabbleSubZone["The Plague Quarter"] };
    { PURP..INDENT.."1) "..AL["Noth the Plaguebringer"], NPC, 15954 };
    { PURP..INDENT.."2) "..AL["Heigan the Unclean"], NPC, 15936 };
    { PURP..INDENT.."3) "..AL["Loatheb"], NPC, 16011 };
    { GREN..AL["Frostwyrm Lair"] };
    { GREN..INDENT.."1) "..AL["Sapphiron"], NPC, 15989 };
    { GREN..INDENT.."2) "..AL["Kel'Thuzad"], NPC, 15990 };
    };
};
["ObsidianSanctum"] = {
    ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": "..BabbleZone["The Obsidian Sanctum"], 4493 };
    Location = { BabbleZone["Dragonblight"], 65 };
    LevelRange = "80";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["OS"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["AKA"]..": "..AL["Black Dragonflight Chamber"] };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Tenebron"], NPC, 30452 };
    { "2) "..AL["Shadron"], NPC, 30451 };
    { "3) "..AL["Vesperon"], NPC, 30449 };
    { "4) "..AL["Sartharion <The Onyx Guardian>"], NPC, 28860 };
    };
};
["OnyxiasLair"] = {
    ZoneName = { BabbleZone["Onyxia's Lair"], 2159 };
    Acronym = AL["Ony"];
    MapName = "DireMaul";
    Location = { BabbleZone["Dustwallow Marsh"], 15 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Onyxian Warders"], NPC, 12129 };
    { "2) "..AL["Whelp Eggs"] };
    { "3) "..AL["Onyxia"], NPC, 10184 };
    };
};
["Onyxia60"] = {
    ZoneName = { BabbleZone["Onyxia's Lair"], 2159 };
    Acronym = AL["Ony"];
    MapName = "DireMaul";
    Location = { BabbleZone["Dustwallow Marsh"], 15 };
    LevelRange = "60+";
    MinLevel = "60";
    PlayerLimit = "10-25";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Onyxian Warders"], NPC, 12129 };
    { "2) "..AL["Whelp Eggs"] };
    { "3) "..AL["Onyxia"], NPC, 10184 };
    };
};
["RubySanctum"] = {
    ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": "..BabbleZone["The Ruby Sanctum"], 4987 };
    Location = { BabbleZone["Dragonblight"], 65 };
    LevelRange = "80";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["RS"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["AKA"]..": "..AL["Red Dragonflight Chamber"] };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Baltharus the Warborn"], NPC, 39751 };
    { "2) "..AL["Saviana Ragefire"], NPC, 39747 };
    { "3) "..AL["General Zarithrian"], NPC, 39746 };
    { "4) "..AL["Halion <The Twilight Destroyer>"], NPC, 39863 };		
    };
};
["TheEyeOfEternity"] = {
    ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Eye of Eternity"], 4500 };
    Location = { BabbleZone["Borean Tundra"], 3537 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["TEoE"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Key to the Focusing Iris"], ITEM, 44582 };
    { "1) "..AL["Malygos"], NPC, 28859 };
    };
};
["TheNexus"] = {
    ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Nexus"], 4120 };
    Location = { BabbleZone["Borean Tundra"], 3537 };
    LevelRange = "70-75";
    MinLevel = "66";
    PlayerLimit = "5";
    Acronym = AL["Nex, Nexus"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Berinand's Research"], OBJECT, 192788 };
    { INDENT..AL["Commander Stoutbeard"].." ("..AL["Horde"]..", "..AL["Heroic"]..")", NPC, 26796 };
    { INDENT..AL["Commander Kolurg"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", NPC, 26798 };
    { "2) "..AL["Grand Magus Telestra"], NPC, 26731 };
    { "3) "..AL["Anomalus"], NPC, 26763 };
    { "4) "..AL["Elder Igasho"].." ("..AL["Lunar Festival"]..")", NPC, 30536 };
    { "5) "..AL["Ormorok the Tree-Shaper"], NPC, 26794 };
    { "6) "..AL["Keristrasza"], NPC, 26723 };
    };
};
["TheOculus"] = {
    ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Oculus"], 4228 };
    Location = { BabbleZone["The Nexus"], 4120 };
    LevelRange = "78-80";
    MinLevel = "75";
    PlayerLimit = "5";
    Acronym = AL["Ocu"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Portal"] };
    { "1) "..AL["Drakos the Interrogator"], NPC, 27654 };
    { "2) "..AL["Varos Cloudstrider <Azure-Lord of the Blue Dragonflight>"], NPC, 27447 };
    { "3) "..AL["Mage-Lord Urom"], NPC, 27655 };
    { "4) "..AL["Ley-Guardian Eregos"], NPC, 27656 };
    { "5) "..AL["Cache of Eregos"], OBJECT, 191349};
    { GREN.."1') "..AL["Centrifuge Construct"], NPC, 27641 };
    };
};
["TrialOfTheChampion"] = {
    ZoneName = { AL["Crusaders' Coliseum"]..": "..BabbleZone["Trial of the Champion"], 4723 };
    Location = { BabbleZone["Icecrown"], 210 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "5";
    Acronym = AL["Champ"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Grand Champions"] };
    { INDENT..AL["Champions of the Alliance"] };
    { INDENT..INDENT..AL["Marshal Jacob Alerius"], NPC, 34705 };
    { INDENT..INDENT..AL["Ambrose Boltspark"], NPC, 34702 };
    { INDENT..INDENT..AL["Colosos"], NPC, 34701 };
    { INDENT..INDENT..AL["Jaelyne Evensong"], NPC, 34657 };
    { INDENT..INDENT..AL["Lana Stouthammer"], NPC, 34703 };
    { INDENT..AL["Champions of the Horde"] };
    { INDENT..INDENT..AL["Mokra the Skullcrusher"], NPC, 35572 };
    { INDENT..INDENT..AL["Eressea Dawnsinger"], NPC, 35569 };
    { INDENT..INDENT..AL["Runok Wildmane"], NPC, 35571 };
    { INDENT..INDENT..AL["Zul'tore"], NPC, 35570 };
    { INDENT..INDENT..AL["Deathstalker Visceri"], NPC, 35617 };
    { INDENT..AL["Eadric the Pure <Grand Champion of the Argent Crusade>"], NPC, 35119 };
    { INDENT..AL["Argent Confessor Paletress"], NPC, 34928 };
    { INDENT..AL["The Black Knight"], NPC, 35451 };
    };
};
["TrialOfTheCrusader"] = {
    ZoneName = { AL["Crusaders' Coliseum"]..": "..BabbleZone["Trial of the Crusader"], 4722 };
    Location = { BabbleZone["Icecrown"], 210 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Crus"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Heroic: Trial of the Grand Crusader"] };
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..AL["Cavern Entrance"] };
    { "1) "..AL["Northrend Beasts"] };
    { INDENT..INDENT..AL["Gormok the Impaler"], NPC, 34796 };
    { INDENT..INDENT..AL["Acidmaw"], NPC, 35144 };
    { INDENT..INDENT..AL["Dreadscale"], NPC, 34799 };
    { INDENT..INDENT..AL["Icehowl"], NPC, 34797 };
    { INDENT..AL["Lord Jaraxxus"], NPC, 34780 };
    { INDENT..AL["Faction Champions"] };
    { INDENT..AL["Twin Val'kyr"] };
    { INDENT..INDENT..AL["Fjola Lightbane"], NPC, 34497 };
    { INDENT..INDENT..AL["Eydis Darkbane"], NPC, 34496 };
    { "2) "..AL["Anub'arak"], NPC, 34564 };
    };
};
["UlduarA"] = {
    ZoneName = { BabbleZone["Ulduar"].." [A] ("..AL["The Siege"]..")", 4273 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Uldu"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE.."B) "..BabbleSubZone["The Antechamber"] };
    { ORNG.."A') "..AL["Tower of Life"] };
    { ORNG.."B') "..AL["Tower of Flame"] };
    { ORNG.."C') "..AL["Tower of Frost"] };
    { ORNG.."D') "..AL["Tower of Storms"] };
    { "1) "..AL["Flame Leviathan"], NPC, 33113 };
    { "2) "..AL["Razorscale"].." ("..AL["Optional"]..")", NPC, 33186 };
    { "3) "..AL["Ignis the Furnace Master"].." ("..AL["Optional"]..")", NPC, 33118 };
    { "4) "..AL["XT-002 Deconstructor"], NPC, 33293 };
    { GREN.."1') "..BabbleSubZone["Expedition Base Camp"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    { GREN.."2') "..BabbleSubZone["Formation Grounds"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    { GREN.."3') "..BabbleSubZone["The Colossal Forge"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    { GREN.."4') "..BabbleSubZone["The Scrapyard"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    };
};
["UlduarB"] = {
    ZoneName = { BabbleZone["Ulduar"].." [B] ("..BabbleSubZone["The Antechamber"]..")", 4273 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Uldu"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["Celestial Planetarium Key"], ITEM, 45796 };
    { BLUE.."B) "..AL["The Siege"] };
    { BLUE.."C) "..AL["The Keepers"] };
    { "5) "..AL["Assembly of Iron"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Steelbreaker"], NPC, 32867 };
    { INDENT..AL["Runemaster Molgeim"], NPC, 32867 };
    { INDENT..AL["Stormcaller Brundir"], NPC, 32867 };
    { "6) "..AL["Prospector Doren"], NPC, 33956 };
    { INDENT..AL["Archivum Console"], OBJECT, 194555 };
    { "7) "..AL["Kologarn"], NPC, 32930 };
    { "8) "..AL["Algalon the Observer"].." ("..AL["Optional"]..")" };
    { GREN.."5') "..BabbleSubZone["The Antechamber"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    };
};
["UlduarC"] = {
    ZoneName = { BabbleZone["Ulduar"].." [C] ("..AL["The Keepers"]..")", 4273 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Uldu"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."C) "..BabbleSubZone["The Antechamber"] };
    { BLUE.."D) "..BabbleSubZone["The Spark of Imagination"] };
    { BLUE.."E) "..BabbleSubZone["The Descent into Madness"] };
    { "9) "..AL["Auriaya"].." ("..AL["Optional"]..")", NPC, 33515 };
    { "10) "..AL["Hodir"], NPC, 32845 };
    { "11) "..AL["Thorim"], NPC, 32865 };
    { "12) "..AL["Freya"], NPC, 32906 };
    { GREN.."6') "..BabbleSubZone["The Shattered Walkway"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    { GREN.."7') "..BabbleSubZone["The Conservatory of Life"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    };
};
["UlduarD"] = {
    ZoneName = { BabbleZone["Ulduar"].." [D] ("..BabbleSubZone["The Spark of Imagination"]..")", 4273 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Uldu"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."D) "..AL["The Keepers"] };
    { "13) "..AL["Mimiron"], NPC, 33412 };
    { GREN.."8') "..BabbleSubZone["The Spark of Imagination"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    };
};
["UlduarE"] = {
    ZoneName = { BabbleZone["Ulduar"].." [E] ("..BabbleSubZone["The Descent into Madness"]..")", 4273 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["Uldu"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."E) "..AL["The Keepers"] };
    { "14) "..AL["General Vezax"], NPC, 33271 };
    { "15) "..AL["Yogg-Saron"], NPC, 33288 };
    { GREN.."9') "..BabbleSubZone["The Prison of Yogg-Saron"].." ("..AL["Teleporter"]..")", OBJECT, 194569 };
    };
};
["UlduarHallsofLightning"] = {
    ZoneName = { BabbleZone["Ulduar"]..": "..BabbleZone["Halls of Lightning"], 4272 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "78-80";
    MinLevel = "75";
    PlayerLimit = "5";
    Acronym = AL["HoL"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["General Bjarngrim"].." ("..AL["Wanders"]..")", NPC, 28586 };
    { "2) "..AL["Volkhan"], NPC, 28587 };
    { "3) "..AL["Ionar"], NPC, 28546 };
    { "4) "..AL["Loken"], NPC, 28923 };
    };
};
["UlduarHallsofStone"] = {
    ZoneName = { BabbleZone["Ulduar"]..": "..BabbleZone["Halls of Stone"], 4264 };
    Location = { BabbleZone["The Storm Peaks"], 67 };
    LevelRange = "75-80";
    MinLevel = "72";
    PlayerLimit = "5";
    Acronym = AL["HoS"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Elder Yurauk"].." ("..AL["Lunar Festival"]..")", NPC, 30535 };
    { "2) "..AL["Krystallus"], NPC, 27977 };
    { "3) "..AL["Maiden of Grief"], NPC, 27975 };
    { "4) "..AL["Brann Bronzebeard"], NPC, 28070 };
    { "5) "..AL["Tribunal Chest"], OBJECT, 190586 };
    { "6) "..AL["Sjonnir the Ironshaper"], NPC, 27978 };
    };
};
["UtgardeKeep"] = {
    ZoneName = { BabbleZone["Utgarde Keep"]..": "..BabbleZone["Utgarde Keep"], 206 };
    Location = { BabbleZone["Howling Fjord"], 495 };
    LevelRange = "68-75";
    MinLevel = "65";
    PlayerLimit = "5";
    Acronym = AL["UK, Keep"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Dark Ranger Marrah"], NPC, 24137 };
    { BLUE.."B-C) "..AL["Connection"] };
    { "1) "..AL["Prince Keleseth <The San'layn>"], NPC, 23953 };
    { "2) "..AL["Elder Jarten"].." ("..AL["Lunar Festival"]..", "..AL["Lower"]..")", NPC, 30531 };
    { "3) "..AL["Dalronn the Controller"], NPC, 24201 };
    { INDENT..AL["Skarvald the Constructor"], NPC, 24200 };
    { "4) "..AL["Ingvar the Plunderer"], NPC, 23980 };
    };
};
["UtgardePinnacle"] = {
    ZoneName = { BabbleZone["Utgarde Keep"]..": "..BabbleZone["Utgarde Pinnacle"], 1196 };
    Location = { BabbleZone["Utgarde Keep"], 206 };
    LevelRange = "78-80";
    MinLevel = "75";
    PlayerLimit = "5";
    Acronym = AL["UP, Pinn"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { BLUE..INDENT..AL["Brigg Smallshanks"], NPC, 30871 };
    { "1) "..AL["Svala Sorrowgrave"], NPC, 26668 };
    { "2) "..AL["Gortok Palehoof"], NPC, 26687 };
    { "3) "..AL["Skadi the Ruthless"], NPC, 26693 };
    { "4) "..AL["Elder Chogan'gada"].." ("..AL["Lunar Festival"]..")", NPC, 30538 };
    { "5) "..AL["King Ymiron"], NPC, 26861 };
    };
};
["VaultOfArchavon"] = {
    ZoneName = { BabbleZone["Vault of Archavon"], 4603 };
    Location = { BabbleZone["Wintergrasp"], 4197 };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    Acronym = AL["VoA"];
    MapName = "DireMaul";
    [1] = {
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Archavon the Stone Watcher"], NPC, 31125 };
    { "2) "..AL["Emalon the Storm Watcher"], NPC, 33993 };
    { "3) "..AL["Koralon the Flame Watcher"], NPC, 35013 };
    { "4) "..AL["Toravon the Ice Watcher"], NPC, 38433 };
    };
};
["VioletHold"] = {
    ZoneName = { BabbleZone["The Violet Hold"], 4415 };
    Location = { BabbleZone["Dalaran"], 4395 };
    LevelRange = "73-79";
    MinLevel = "70";
    PlayerLimit = "5";
    Acronym = AL["VH"];
    MapName = "DireMaul";
    [1] = {
    { ORNG..AL["Key"]..": "..AL["The Violet Hold Key"], ITEM, 42482 };
    { BLUE.."A) "..AL["Entrance"] };
    { "1) "..AL["Erekem"].." ("..AL["Random"]..")", NPC, 29315 };
    { "2) "..AL["Zuramat the Obliterator"].." ("..AL["Upper"]..", "..AL["Random"]..")", NPC, 29314 };
    { INDENT..AL["Xevozz"].." ("..AL["Lower"]..", "..AL["Random"]..")", NPC, 29266 };
    { "3) "..AL["Ichoron"].." ("..AL["Random"]..")", NPC, 29313 };
    { "4) "..AL["Moragg"].." ("..AL["Random"]..")", NPC, 29316 };
    { "5) "..AL["Lavanthor"].." ("..AL["Random"]..")", NPC, 29312 };
    { "6) "..AL["Cyanigosa"].." ("..AL["Wave 18"]..")", NPC, 31134 };
    };
};
};

mapKeys = {
   ["ZulGurub"] =   "Zul'Gurub" ,
   ["MoltenCore"] =   "Molten Core" ,
   ["Onyxia60"] =   "Onyxias Hort" ,
   ["BlackwingLair"] =   "Blackwing Lair" ,
   ["RuinsofAQ"] =   "Ruinen von Ahn'Qiraj" ,
   ["TempleofAQ"] =   "Tempel von Ahn'Qiraj" ,
   ["Naxxramas60"] =   "Naxxramas" ,
   ["WorldBossesCLASSIC"] =  "World Bosses" ,
   ["BlackfathomDeeps"] =   "Blackfathom Deeps" ,
   ["BlackrockDepths"] =   "Blackrock Depths" ,
   ["LowerBlackrock"] =   "Lower Blackrock Spire" ,
   ["UpperBlackrock"] =   "Upper Blackrock Spire" ,
   ["TheDeadmines"] =   "The Deadmines" ,
   ["DireMaulNorth"] =   "Dire Maul (North)" ,
   ["DireMaulEast"] =   "Dire Maul (East)" ,
   ["DireMaulWest"] =   "Dire Maul (West)" ,
   ["Gnomeregan"] =   "Gnomeregan" ,
   ["Maraudon"] =   "Maraudon" ,
   ["RagefireChasm"] =   "Ragefire Chasm" ,
   ["RazorfenDowns"] =   "Razorfen Downs" ,
   ["RazorfenKraul"] =   "Razorfen Kraul" ,
   ["Scarlet Monastery"] =   "Scarlet Monastery" ,
   ["Scholomance"] =   "Scholomance" ,
   ["ShadowfangKeep"] =   "Shadowfang Keep" ,
   ["TheStockade"] =   "The Stockade" ,
   ["Stratholme"] =   "Stratholme" ,
   ["SunkenTemple"] =   "Sunken Temple" ,
   ["Uldaman"] =   "Uldaman" ,
   ["WailingCaverns"] =   "Wailing Caverns" ,
   ["ZulFarrak"] =   "Zul'Farrak" ,
   ["Karazhan"] =   "Karazhan" ,
   ["GruulsLair"] =   "Gruul's Lair" ,
   ["HCMagtheridon"] =   "Magtheridon's Lair" ,
   ["CFRSerpentshrine"] =   "Serpentshrine Cavern" ,
   ["TKEye"] =   "The Eye" ,
   ["ZulAman"] =   "Zul'Aman" ,
   ["CoTHyjal"] =   "Mount Hyjal" ,
   ["BlackTemple"] =   "Black Temple" ,
   ["SunwellPlateau"] =   "Sunwell Plateau" ,
   ["WorldBossesTBC"] =  "World Bosses" ,
   ["HCRamparts"] =   "Hellfire Ramparts" ,
   ["HCShatteredHalls"] =   "The Shattered Halls" ,
   ["HCFurnace"] =   "The Blood Furnace" ,
   ["TKBot"] =   "The Botanica" ,
   ["TKArc"] =   "The Arcatraz" ,
   ["TKMech"] =   "The Mechanar" ,
   ["AuchCrypts"] =   "Auchenai Crypts" ,
   ["AuchManaTombs"] =   "Mana-Tombs" ,
   ["AuchSethekk"] =   "Sethekk Halls" ,
   ["AuchShadowLab"] =   "Shadow Labyrinth" ,
   ["CoTOldHillsbrad"] =   "Old Hillsbrad Foothills" ,
   ["CoTBlackMorass"] =   "The Black Morass" ,
   ["CFRSlavePens"] =   "The Slave Pens" ,
   ["CFRSteamvault"] =   "The Steamvault" ,
   ["CFRUnderbog"] =   "The Underbog" ,
   ["MagistersTerrace"] =   "Magisters' Terrace" ,
   ["Naxxramas80"] =  "Naxxramas" ,
   ["Sartharion"] =  "Sartharion" ,
   ["Malygos"] =  "Malygos" ,
   ["VaultofArchavon"] =  "Vault of Archavon" ,
   ["Ulduar"] =  "Ulduar" ,
   ["TrialoftheCrusader"] =  "Trial of the Crusader" ,
   ["TrialoftheCrusader2"] =  "Trial of the Crusader" ,
   ["Onyxia80"] =  "Onyxia" ,
   ["IcecrownCitadel"] =  "Icecrown Citadel" ,
   ["Halion"] =  "Halion" ,
   ["Ahnkahet"] =  "Ahnkahet" ,
   ["AzjolNerub"] =  "AzjolNerub" ,
   ["CoTStratholme"] =  "The Culling of Stratholme" ,
   ["DrakTharonKeep"] =  "DrakTharon Keep" ,
   ["ForgeofSouls"] =  "Forge of Souls" ,
   ["Gundrak"] =  "Gundrak" ,
   ["HallsofLightning"] =  "Halls of Lightning" ,
   ["HallsofReflection"] =  "Halls of Reflection" ,
   ["HallsofStone"] =  "Halls of Stone" ,
   ["TheNexus"] =  "The Nexus" ,
   ["TheOculus"] =  "The Oculus" ,
   ["PitofSaron"] =  "Pit of Saron" ,
   ["TrialoftheChampion"] =  "Trial of the Champion" ,
   ["UtgardeKeep"] =  "Utgarde Keep" ,
   ["UtgardePinnacle"] =  "Utgarde Pinnacle" ,
   ["TheVioletHold"] =  "The Violet Hold" ,
}