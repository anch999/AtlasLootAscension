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
        print(v[2][1], v[2][2])
        -- converts a standard coordinate x,y to stardard anchor points
        local x = ((AtlasLootDefaultFrame_Map:GetWidth()/100) * v[2][1]) - (_G["AtlasLoot_MapPin"..i]:GetWidth()/2)
        local y = (-(AtlasLootDefaultFrame_Map:GetHeight()/100) * v[2][2]) + (_G["AtlasLoot_MapPin"..i]:GetHeight()/2)
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
    if AtlasLootDefaultFrame_Map:IsVisible() and AtlasLoot_MapData[AtlasLoot.CurrentMap].ZoneName[1] == GetRealZoneText() then
        _G["AtlasLoot_PlayerMapPin"]:Show();
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = ((AtlasLootDefaultFrame_Map:GetWidth()/100) * (x * 100)) - (_G["AtlasLoot_PlayerMapPin"]:GetWidth()/2)
        y = (-(AtlasLootDefaultFrame_Map:GetHeight()/100) * (y * 100)) + (_G["AtlasLoot_PlayerMapPin"]:GetHeight()/2)
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints();
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",AtlasLootDefaultFrame_Map, x, y );
    end
    AtlasLoot.playerPinTimer = AtlasLoot:ScheduleTimer("PlayerPin", .5)
end

function AtlasLoot:SetNavButtons(mapID, mapNum)
    if not AtlasLootDefaultFrame_Map:IsVisible() then return end
    --Hide navigation buttons by default, only show what we need
    _G["AtlasLootItemsFrame_BACK"]:Hide();
    _G["AtlasLootItemsFrame_NEXT"]:Hide();
    _G["AtlasLootItemsFrame_PREV"]:Hide();

        if mapNum ~= #_G["AtlasLoot_MapData"][mapID] then
            _G["AtlasLootItemsFrame_NEXT"]:SetParent("AtlasLootDefaultFrame_Map")
            _G["AtlasLootItemsFrame_NEXT"]:Show();
            _G["AtlasLootItemsFrame_NEXT"].mapNum = mapNum + 1;
            _G["AtlasLootItemsFrame_NEXT"].mapID = mapID;
            _G["AtlasLootItemsFrame_NEXT"]:ClearAllPoints()
            _G["AtlasLootItemsFrame_NEXT"]:SetPoint("BOTTOMRIGHT", "AtlasLootDefaultFrame_Map", "BOTTOMRIGHT",-5,5);
        end
        if mapNum ~= 1 then
            _G["AtlasLootItemsFrame_PREV"]:SetParent("AtlasLootDefaultFrame_Map")
            _G["AtlasLootItemsFrame_PREV"]:Show();
            _G["AtlasLootItemsFrame_PREV"].mapNum = mapNum - 1;
            _G["AtlasLootItemsFrame_PREV"].mapID = mapID;
            _G["AtlasLootItemsFrame_PREV"]:ClearAllPoints()
            _G["AtlasLootItemsFrame_PREV"]:SetPoint("BOTTOMLEFT", "AtlasLootDefaultFrame_Map", "BOTTOMLEFT",5,5);
        end
end

--called everytime you on a map hiding the loot item buttons 
function AtlasLoot:MapOnShow()
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLootDefaultFrame_Map:Hide();
        AtlasLootDefaultFrame.lootBackground:Show();
        AtlasLoot:BackButton_OnClick();
        AtlasLoot_BossName:Show();
        Atlasloot_HeaderLabel:Hide();
        AtlasLoot:ScrollFrameUpdate();
    else
        if AtlasLoot.CurrentMap then
            AtlasLoot_BossName:Hide();
            --Ditch the Quicklook selector
            AtlasLootQuickLooksButton:Hide();
            -- Hide the Filter Check-Box
	        AtlasLootFilterCheck:Hide();
            AtlasLootDefaultFrame.lootBackground:Hide();
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
                if lastMap == AtlasLoot.CurrentMap then mapNum = AtlasLoot.MapNum end
                AtlasLoot:SetNavButtons(AtlasLoot.CurrentMap, mapNum)
                AtlasLoot:SubTableScrollFrameUpdate(AtlasLoot.CurrentMap, "AtlasLoot_MapData", mapNum);
                AtlasLoot.MapNum = mapNum
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
    AtlasLoot:SetNavButtons(mapID, mapNum)
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
        AtlasLoot.MapNum = mapNum
    end
    AtlasLoot:MapSelect(mapID, mapNum);
    AtlasLootDefaultFrame_MapSelectButton:SetText(AtlasLoot_MapData[mapID][mapNum][1][1]);
    AtlasLoot.CurrentMap = mapID;
end

--drop down map menu
local lastMapLoaded
function AtlasLoot:MapMenuOpen(self)
    local mapID = AtlasLoot.CurrentMap;
    if AtlasLoot.Dewdrop:IsOpen(self) then AtlasLoot.Dewdrop:Close() return end
    if lastMapLoaded ~= mapID then
        AtlasLoot.Dewdrop:Register(self,
            'point', function(parent)
                return "TOP", "BOTTOM"
            end,
            'children', function(level, value)
                    for i,v in ipairs(AtlasLoot_MapData[mapID]) do
                        AtlasLoot.Dewdrop:AddLine(
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
    AtlasLoot.Dewdrop:Open(self)
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
        { AL["Ghamoo-ra"], cords = {32.9,59.9}};
        { AL["Lorgalis Manuscript"], 5359 };
        { AL["Lady Sarevess"], cords = {10.1,36}};
        { AL["Argent Guard Thaelrid <The Argent Dawn>"], 4787 };
        { AL["Gelihast"], cords = {52.3,55.1} };
        { INDENT..AL["Shrine of Gelihast"] };
    };
    [2] = {
        { BabbleSubZone["Moonshrine Sanctum"]};
        { AL["Lorgus Jett"].." ("..AL["Varies"]..")", cords = {46,68.9} };
        { AL["Fathom Stone"] };
        { INDENT..AL["Baron Aquanis"] };
        { AL["Old Serra'kis"], cords = {53.4,69.4} };
        { AL["Twilight Lord Kelris"], cords = {51,81} };
        { AL["Aku'mai"], cords = {81.7,84.5} };
        { INDENT..AL["Morridune"] };
        { INDENT..AL["Altar of the Deeps"] };
    };
    [3] = {
        { BabbleSubZone["The Forgotten Pool"]};
        { AL["Old Serra'kis"], cords = {59.4,31.4} };
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
        { AL["Gordok Commons"], " (North)" };
        { BLUE..BabbleZone["Library"].." "..AL["Entrance"] };
        { AL["Guard Mol'dar"], cords = {69.9,76} };
        { AL["Stomper Kreeg <The Drunk>"], cords = {} };
        { AL["Guard Fengus"], cords = {42.9,77.6} };
        { AL["Knot Thimblejack"] };
        { INDENT..AL["Guard Slip'kik"], cords = {26.5,57.8} };
        { AL["Captain Kromcrush"], cords = {31.8,51.4} };
        { AL["King Gordok"], cords = {32,27.7} };
        { INDENT..AL["Cho'Rush the Observer"], cords = {31.4,26.2} };
    };
    [2] = {
        { BabbleSubZone["Capital Gardens"], " (West)" };
        { BLUE..AL["Pylons"] };
    };
    [3] = {
        { BabbleSubZone["Court of the Highborne"], " (West)" };
        { AL["Shen'dralar Ancient"] };
        { AL["Tendris Warpwood"], cords = {49.4,49.5} };
    };
    [4] = {
        { BabbleSubZone["Prison of Immol'thar"], " (West)" };
        { INDENT..AL["Ancient Equine Spirit"] };
        { AL["Illyanna Ravenoak"], cords = {36.2,57.4} };
        { INDENT..AL["Ferra"] };
        { AL["Magister Kalendris"], cords = {66.1,47.3} };
        { AL["Tsu'zee"].." ("..AL["Rare"]..")", cords = {68.3,23.9} };
        { AL["Immol'thar"], cords = {35.2,58.1} };
        { INDENT..AL["Lord Hel'nurath"].." ("..AL["Summon"]..")", cords = {14.9,57.7} };
        { AL["Prince Tortheldrin"], cords = {61.4,15.1} };
        { GREN..BabbleZone["Library"] };
        { GREN..INDENT..AL["Falrin Treeshaper"] };
        { GREN..INDENT..AL["Lorekeeper Lydros"] };
        { GREN..INDENT..AL["Lorekeeper Javon"] };
        { GREN..INDENT..AL["Lorekeeper Kildrath"] };
        { GREN..INDENT..AL["Lorekeeper Mykos"] };
        { GREN..INDENT..AL["Shen'dralar Provisioner"] };
        { GREN..INDENT..AL["Skeletal Remains of Kariel Winthalus"] };
    };
    [5] = {
        { BabbleSubZone["Warpwood Quarter"], " (East)" };
        { AL["Zevrim Thornhoof"] };
        { INDENT..AL["Hydrospawn"], cords = {41,49.2} };
        { INDENT..AL["Lethtendris"], cords = {44.5,46.6} };
        { INDENT..AL["Pimgib"] };
    };
    [6] = {
        { BabbleSubZone["The Shrine of Eldretharr"], " (East)" };
        { AL["Old Ironbark"], cords = {40,68} };
        { AL["Alzzin the Wildshaper"], cords = {57.3,28.9} };
        { INDENT..AL["Isalien"].." ("..AL["Summon"]..")" };
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
    { BLUE..AL["Entrance"].." ("..AL["Orange"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Purple"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Portal"]..")" };
    { AL["Veng <The Fifth Khan>"] };
    { AL["Noxxion"] };
    { AL["Razorlash"] };
    { AL["Maraudos <The Fourth Khan>"] };
    { AL["Lord Vyletongue"] };
    { AL["Meshlok the Harvester"].." ("..AL["Rare"]..")" };
    { AL["Celebras the Cursed"] };
    { AL["Landslide"] };
    { AL["Tinkerer Gizlock"] };
    { AL["Rotgrip"] };
    { AL["Princess Theradras"] };
    { AL["Elder Splitrock"].." ("..AL["Lunar Festival"]..")" };
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
    { BLUE..AL["Entrance"] };
    { AL["Maur Grimtotem"] };
    { INDENT..AL["Oggleflint <Ragefire Chieftain>"] };
    { AL["Taragaman the Hungerer"] };
    { AL["Jergosh the Invoker"] };
    { INDENT..AL["Zelemar the Wrathful"].." ("..AL["Summon"]..")" };
    { AL["Bazzalan"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Tuten'kash"] };
    { AL["Henry Stern"] };
    { INDENT..AL["Belnistrasz"] };
    { INDENT..AL["Sah'rhee"] };
    { AL["Mordresh Fire Eye"] };
    { AL["Glutton"] };
    { AL["Ragglesnout"].." ("..AL["Rare"]..", "..AL["Varies"]..")" };
    { AL["Amnennar the Coldbringer"] };
    { AL["Plaguemaw the Rotting"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Roogug"], 6168 };
    { AL["Aggem Thorncurse <Death's Head Prophet>"] };
    { AL["Death Speaker Jargba <Death's Head Captain>"] };
    { AL["Overlord Ramtusk"] };
    { INDENT..AL["Razorfen Spearhide"] };
    { AL["Agathelos the Raging"] };
    { AL["Blind Hunter"].." ("..AL["Rare"]..")" };
    { AL["Charlga Razorflank <The Crone>"] };
    { AL["Willix the Importer"] };
    { INDENT..AL["Heralath Fallowbrook"] };
    { AL["Earthcaller Halmgar"].." ("..AL["Rare"]..")" };
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
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Circle"], 609 };
    { BLUE..AL["Entrance"] };
    { AL["Kurinnaxx"] };
    { INDENT..AL["Lieutenant General Andorov"] };
    { INDENT..AL["Four Kaldorei Elites"] };
    { AL["General Rajaxx"] };
    { INDENT..AL["Captain Qeez"] };
    { INDENT..AL["Captain Tuubid"] };
    { INDENT..AL["Captain Drenn"] };
    { INDENT..AL["Captain Xurrem"] };
    { INDENT..AL["Major Yeggeth"] };
    { INDENT..AL["Major Pakkon"] };
    { INDENT..AL["Colonel Zerran"] };
    { AL["Moam"].." ("..AL["Optional"]..")" };
    { AL["Buru the Gorger"].." ("..AL["Optional"]..")" };
    { AL["Ayamiss the Hunter"].." ("..AL["Optional"]..")" };
    { AL["Ossirian the Unscarred"] };
    { GREN..AL["Safe Room"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Brood of Nozdormu"] };
    { BLUE..AL["Entrance"] };
    { AL["The Prophet Skeram"].." ("..AL["Outside"]..")" };
    { AL["The Bug Family"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Vem"] };
    { INDENT..AL["Lord Kri"] };
    { INDENT..AL["Princess Yauj"] };
    { AL["Battleguard Sartura"] };
    { AL["Fankriss the Unyielding"] };
    { AL["Viscidus"].." ("..AL["Optional"]..")" };
    { AL["Princess Huhuran"] };
    { AL["Twin Emperors"] };
    { INDENT..AL["Emperor Vek'lor"] };
    { INDENT..AL["Emperor Vek'nilash"] };
    { AL["Ouro"].." ("..AL["Optional"]..")" };
    { AL["Eye of C'Thun"] };
    { INDENT..AL["C'Thun"] };
    { GREN..AL["Andorgos <Brood of Malygos>"] };
    { GREN..INDENT..AL["Vethsera <Brood of Ysera>"] };
    { GREN..INDENT..AL["Kandrostrasz <Brood of Alexstrasza>"] };
    { GREN..AL["Arygos"] };
    { GREN..INDENT..AL["Caelestrasz"] };
    { GREN..INDENT..AL["Merithra of the Dream"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Disciple of Naralex"] };
    { AL["Lord Cobrahn <Fanglord>"] };
    { AL["Lady Anacondra <Fanglord>"].." ("..AL["Varies"]..")" };
    { AL["Kresh"].." ("..AL["Varies"]..")" };
    { AL["Lord Pythas <Fanglord>"] };
    { AL["Skum"] };
    { AL["Lord Serpentis <Fanglord>"].." ("..AL["Upper"]..")" };
    { AL["Verdan the Everliving"].." ("..AL["Upper"]..")" };
    { AL["Mutanus the Devourer"] };
    { INDENT..AL["Naralex"] };
    { AL["Deviate Faerie Dragon"].." ("..AL["Rare"]..")" };
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
    { BLUE..AL["Entrance"] };
    { AL["Antu'sul <Overseer of Sul>"] };
    { AL["Theka the Martyr"] };
    { AL["Witch Doctor Zum'rah"] };
    { INDENT..AL["Zul'Farrak Dead Hero"] };
    { AL["Nekrum Gutchewer"] };
    { INDENT..AL["Shadowpriest Sezz'ziz"] };
    { INDENT..AL["Dustwraith"].." ("..AL["Rare"]..")" };
    { AL["Sergeant Bly"] };
    { INDENT..AL["Weegli Blastfuse"] };
    { INDENT..AL["Murta Grimgut"] };
    { INDENT..AL["Raven"] };
    { INDENT..AL["Oro Eyegouge"] };
    { INDENT..AL["Sandfury Executioner"] };
    { AL["Hydromancer Velratha"] };
    { INDENT..AL["Gahz'rilla"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Elder Wildmane"].." ("..AL["Lunar Festival"]..")" };
    { AL["Chief Ukorz Sandscalp"] };
    { INDENT..AL["Ruuzlu"] };
    { AL["Zerillis"].." ("..AL["Rare"]..", "..AL["Wanders"]..")" };
    { AL["Sandarr Dunereaver"].." ("..AL["Rare"]..")" };
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
    { ORNG..AL["Key"]..": "..AL["Shadowforge Key"] };
    { ORNG..AL["Key"]..": "..AL["Prison Cell Key"].." ("..AL["Jail Break!"]..")" };
    { ORNG..AL["Key"]..": "..AL["Banner of Provocation"].." ("..AL["Theldren"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Lord Roccor"] };
    { AL["Kharan Mighthammer"] };
    { AL["Commander Gor'shak <Kargath Expeditionary Force>"] };
    { AL["Marshal Windsor"] };
    { AL["High Interrogator Gerstahn <Twilight's Hammer Interrogator>"] };
    { AL["Ring of Law"] };
    { INDENT..AL["Anub'shiah"].." ("..AL["Random"]..")" };
    { INDENT..AL["Eviscerator"].." ("..AL["Random"]..")" };
    { INDENT..AL["Gorosh the Dervish"].." ("..AL["Random"]..")" };
    { INDENT..AL["Grizzle"].." ("..AL["Random"]..")" };
    { INDENT..AL["Hedrum the Creeper"].." ("..AL["Random"]..")" };
    { INDENT..AL["Ok'thor the Breaker"].." ("..AL["Random"]..")" };
    { INDENT..AL["Theldren"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Lefty"] };
    { INDENT..AL["Malgen Longspear"] };
    { INDENT..AL["Gnashjaw <Malgen Longspear's Pet>"] };
    { INDENT..AL["Rotfang"] };
    { INDENT..AL["Va'jashni"] };
    { INDENT..AL["Houndmaster Grebmar"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Elder Morndeep"].." ("..AL["Lunar Festival"]..")" };
    { INDENT..AL["High Justice Grimstone"] };
    { AL["Monument of Franclorn Forgewright"] };
    { INDENT..AL["Pyromancer Loregrain"] };
    { AL["The Vault"] };
    { INDENT..AL["Warder Stilgiss"] };
    { INDENT..AL["Verek"] };
    { INDENT..AL["Watchman Doomgrip"] };
    { AL["Fineous Darkvire <Chief Architect>"] };
    { AL["The Black Anvil"] };
    { INDENT..AL["Lord Incendius"] };
    { AL["Bael'Gar"] };
    { AL["Shadowforge Lock"] };
    { AL["General Angerforge"] };
    { AL["Golem Lord Argelmach"] };
    { INDENT..AL["Field Repair Bot 74A"] };
    { INDENT..AL["Blacksmithing Plans"] };
    { AL["The Grim Guzzler"] };
    { INDENT..AL["Hurley Blackbreath"] };
    { INDENT..AL["Lokhtos Darkbargainer <The Thorium Brotherhood>"] };
    { INDENT..AL["Mistress Nagmara"] };
    { INDENT..AL["Phalanx"] };
    { INDENT..AL["Plugger Spazzring"] };
    { INDENT..AL["Private Rocknot"] };
    { INDENT..AL["Ribbly Screwspigot"] };
    { INDENT..AL["Coren Direbrew"].." ("..AL["Brewfest"]..")" };
    { INDENT..AL["Griz Gutshank <Arena Vendor>"] };
    { AL["Ambassador Flamelash"] };
    { AL["Panzor the Invincible"].." ("..AL["Rare"]..")" };
    { INDENT..AL["Blacksmithing Plans"] };
    { AL["Summoner's Tomb"] };
    { AL["The Lyceum"] };
    { AL["Magmus"] };
    { AL["Emperor Dagran Thaurissan"] };
    { INDENT..AL["Princess Moira Bronzebeard <Princess of Ironforge>"] };
    { INDENT..AL["High Priestess of Thaurissan"] };
    { AL["The Black Forge"] };
    { BabbleZone["Molten Core"] };
    { INDENT..AL["Core Fragment"] };
    { AL["Overmaster Pyron"] };
    { AL["Blacksmithing Plans"] };
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
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")" };
    { BLUE.."C-F) "..AL["Connection"] };
    { AL["Vaelan"].." ("..AL["Upper"]..")" };
    { AL["Warosh <The Cursed>"].." ("..AL["Wanders"]..")" };
    { INDENT..AL["Elder Stonefort"].." ("..AL["Lunar Festival"]..")" };
    { AL["Roughshod Pike"] };
    { AL["Spirestone Butcher"].." ("..AL["Rare"]..")" };
    { AL["Highlord Omokk"] };
    { AL["Spirestone Battle Lord"].." ("..AL["Rare"]..")" };
    { INDENT..AL["Spirestone Lord Magus"].." ("..AL["Rare"]..")" };
    { AL["Shadow Hunter Vosh'gajin"] };
    { INDENT..AL["Fifth Mosh'aru Tablet"] };
    { AL["Bijou"] };
    { AL["War Master Voone"] };
    { INDENT..AL["Mor Grayhoof"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Sixth Mosh'aru Tablet"] };
    { AL["Bijou's Belongings"] };
    { AL["Human Remains"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Unfired Plate Gauntlets"].." ("..AL["Lower"]..")" };
    { AL["Bannok Grimaxe <Firebrand Legion Champion>"].." ("..AL["Rare"]..")" };
    { AL["Mother Smolderweb"] };
    { AL["Crystal Fang"].." ("..AL["Rare"]..")" };
    { AL["Urok's Tribute Pile"] };
    { INDENT..AL["Urok Doomhowl"].." ("..AL["Summon"]..")" };
    { AL["Quartermaster Zigris <Bloodaxe Legion>"] };
    { AL["Halycon"] };
    { INDENT..AL["Gizrul the Slavener"] };
    { AL["Ghok Bashguud <Bloodaxe Champion>"].." ("..AL["Rare"]..")" };
    { AL["Overlord Wyrmthalak"] };
    { GREN..AL["Burning Felguard"].." ("..AL["Rare"]..", "..AL["Summon"]..")" };
    };
    [2] = {
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")" };
    { BLUE.."C-E) "..AL["Connection"] };
    { AL["Pyroguard Emberseer"] };
    { AL["Solakar Flamewreath"] };
    { INDENT..AL["Father Flame"] };
    { AL["Darkstone Tablet"] };
    { INDENT..AL["Doomrigger's Coffer"] };
    { AL["Jed Runewatcher <Blackhand Legion>"].." ("..AL["Rare"]..")" };
    { AL["Goraluk Anvilcrack <Blackhand Legion Armorsmith>"] };
    { AL["Warchief Rend Blackhand"] };
    { INDENT..AL["Gyth <Rend Blackhand's Mount>"] };
    { AL["Awbee"] };
    { AL["The Beast"] };
    { INDENT..AL["Lord Valthalak"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Finkle Einhorn"] };
    { AL["General Drakkisath"] };
    { INDENT..AL["Drakkisath's Brand"] };
    { BabbleZone["Blackwing Lair"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Connection"] };
    { BLUE..AL["Connection"] };
    { AL["Razorgore the Untamed"] };
    { AL["Vaelastrasz the Corrupt"] };
    { AL["Broodlord Lashlayer"] };
    { AL["Firemaw"] };
    { AL["Draconic for Dummies (Chapter VII)"] };
    { AL["Master Elemental Shaper Krixix"] };
    { AL["Ebonroc"] };
    { AL["Flamegor"] };
    { AL["Chromaggus"] };
    { AL["Nefarian"] };
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
    { ORNG..AL["Key"]..": "..AL["Workshop Key"].." ("..AL["Back"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Back"]..")" };
    { AL["Blastmaster Emi Shortfuse"] };
    { INDENT..AL["Grubbis"] };
    { INDENT..AL["Chomper"] };
    { AL["Clean Room"] };
    { INDENT..AL["Tink Sprocketwhistle <Engineering Supplies>"] };
    { INDENT..AL["The Sparklematic 5200"] };
    { INDENT..AL["Mail Box"] };
    { AL["Kernobee"] };
    { INDENT..AL["Alarm-a-bomb 2600"] };
    { INDENT..AL["Matrix Punchograph 3005-B"] };
    { AL["Viscous Fallout"] };
    { AL["Electrocutioner 6000"] };
    { INDENT..AL["Matrix Punchograph 3005-C"] };
    { AL["Crowd Pummeler 9-60"].." ("..AL["Upper"]..")" };
    { INDENT..AL["Matrix Punchograph 3005-D"] };
    { AL["Dark Iron Ambassador"] };
    { AL["Mekgineer Thermaplugg"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Hydraxian Waterlords"] };
    { BLUE..AL["Entrance"] };
    { AL["Lucifron"] };
    { AL["Magmadar"] };
    { AL["Gehennas"] };
    { AL["Garr"] };
    { AL["Shazzrah"] };
    { AL["Baron Geddon"] };
    { AL["Golemagg the Incinerator"] };
    { AL["Sulfuron Harbinger"] };
    { AL["Majordomo Executus"] };
    { AL["Ragnaros"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Argent Dawn"] };
    { ORNG..AL["Key"]..": "..AL["Skeleton Key"] };
    { ORNG..AL["Key"]..": "..AL["Viewing Room Key"].." ("..AL["Viewing Room"]..")" };
    { ORNG..AL["Key"]..": "..AL["Blood of Innocents"].." ("..AL["Kirtonos the Herald"]..")" };
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")" };
    { ORNG..AL["Key"]..": "..AL["Divination Scryer"].." ("..AL["Death Knight Darkreaver"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Connection"] };
    { BLUE..AL["Connection"] };
    { AL["Blood Steward of Kirtonos"] };
    { INDENT..AL["The Deed to Southshore"] };
    { AL["Kirtonos the Herald"].." ("..AL["Summon"]..")" };
    { AL["Jandice Barov"] };
    { AL["The Deed to Tarren Mill"] };
    { AL["Rattlegore"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Death Knight Darkreaver"].." ("..AL["Summon"]..")" };
    { AL["Marduk Blackpool"] };
    { INDENT..AL["Vectus"] };
    { AL["Ras Frostwhisper"] };
    { INDENT..AL["The Deed to Brill"] };
    { INDENT..AL["Kormok"].." ("..AL["Summon"]..")" };
    { AL["Instructor Malicia"] };
    { AL["Doctor Theolen Krastinov <The Butcher>"] };
    { AL["Lorekeeper Polkelt"] };
    { AL["The Ravenian"] };
    { AL["Lord Alexei Barov"] };
    { INDENT..AL["The Deed to Caer Darrow"] };
    { AL["Lady Illucia Barov"] };
    { AL["Darkmaster Gandling"] };
    { GREN..AL["Torch Lever"] };
    { GREN..AL["Secret Chest"] };
    { GREN..AL["Alchemy Lab"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Rethilgore <The Cell Keeper>"] };
    { INDENT..AL["Sorcerer Ashcrombe"] };
    { INDENT..AL["Deathstalker Adamant"] };
    { INDENT..AL["Landen Stilwell"] };
    { AL["Investigator Fezzen Brasstacks"].." ("..AL["Love is in the Air"]..")" };
    { AL["Deathstalker Vincent"] };
    { AL["Apothecary Trio"].." ("..AL["Love is in the Air"]..")" };
    { INDENT..AL["Apothecary Hummel <Crown Chemical Co.>"] };
    { INDENT..AL["Apothecary Baxter <Crown Chemical Co.>"] };
    { INDENT..AL["Apothecary Frye <Crown Chemical Co.>"] };
    { AL["Fel Steed"] };
    { INDENT..AL["Jordan's Hammer"] };
    { INDENT..AL["Crate of Ingots"] };
    { AL["Razorclaw the Butcher"] };
    { AL["Baron Silverlaine"] };
    { AL["Commander Springvale"] };
    { AL["Odo the Blindwatcher"] };
    { AL["Deathsworn Captain"].." ("..AL["Rare"]..")" };
    { AL["Fenrus the Devourer"] };
    { INDENT..AL["Arugal's Voidwalker"] };
    { INDENT..AL["The Book of Ur"] };
    { AL["Wolf Master Nandos"] };
    { AL["Archmage Arugal"] };
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
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"] };
    { BLUE..AL["Entrance"] };
    { AL["Herod <The Scarlet Champion>"] };
    };
    [2] = {
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"] };
    { BLUE..AL["Entrance"] };
    { AL["High Inquisitor Fairbanks"] };
    { AL["Scarlet Commander Mograine"] };
    { INDENT..AL["High Inquisitor Whitemane"] };
    };
    [3] = {
    { BLUE..AL["Entrance"] };
    { AL["Interrogator Vishas"] };
    { INDENT..AL["Vorrel Sengutz"] };
    { AL["Pumpkin Shrine"].." ("..AL["Hallow's End"]..")" };
    { INDENT..AL["Headless Horseman"].." ("..AL["Summon"]..")" };
    { AL["Bloodmage Thalnos"] };
    { GREN..AL["Ironspine"].." ("..AL["Rare"]..")" };
    { GREN..INDENT..AL["Azshir the Sleepless"].." ("..AL["Rare"]..")" };
    { GREN..INDENT..AL["Fallen Champion"].." ("..AL["Rare"]..")" };
    };
    [4] = {
    { BLUE..AL["Entrance"] };
    { AL["Houndmaster Loksey"] };
    { AL["Arcanist Doan"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Argent Dawn"] };
    { ORNG..AL["Key"]..": "..AL["The Scarlet Key"].." ("..AL["Living Side"]..")" };
    { ORNG..AL["Key"]..": "..AL["Key to the City"].." ("..AL["Undead Side"]..")" };
    { ORNG..AL["Key"]..": "..AL["Various Postbox Keys"].." ("..AL["Postmaster Malown"]..")" };
    { ORNG..AL["Key"]..": "..AL["Brazier of Invocation"].." ("..AL["DS2"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Side"]..")" };
    { AL["Skul"].." ("..AL["Rare"]..")" };
    { INDENT..AL["Stratholme Courier"] };
    { INDENT..AL["Fras Siabi"] };
    { AL["Atiesh <Hand of Sargeras>"].." ("..AL["Summon"]..")" };
    { AL["Hearthsinger Forresten"].." ("..AL["Varies"]..")" };
    { AL["The Unforgiven"] };
    { AL["Elder Farwhisper"].." ("..AL["Lunar Festival"]..")" };
    { AL["Timmy the Cruel"] };
    { AL["Malor the Zealous"] };
    { INDENT..AL["Malor's Strongbox"] };
    { AL["Crimson Hammersmith"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Blacksmithing Plans"] };
    { AL["Cannon Master Willey"] };
    { AL["Archivist Galford"] };
    { AL["Grand Crusader Dathrohan"] };
    { INDENT..AL["Balnazzar"] };
    { INDENT..AL["Sothos"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Jarien"].." ("..AL["Summon"]..")" };
    { AL["Magistrate Barthilas"].." ("..AL["Varies"]..")" };
    { AL["Aurius"] };
    { AL["Stonespine"].." ("..AL["Rare"]..")" };
    { AL["Baroness Anastari"] };
    { INDENT..AL["Black Guard Swordsmith"].." ("..AL["Summon"]..")" };
    { INDENT..AL["Blacksmithing Plans"] };
    { AL["Nerub'enkan"] };
    { AL["Maleki the Pallid"] };
    { AL["Ramstein the Gorger"] };
    { AL["Baron Rivendare"] };
    { INDENT..AL["Ysida Harmon"] };
    { GREN..AL["Crusaders' Square Postbox"] };
    { GREN..AL["Market Row Postbox"] };
    { GREN..AL["Festival Lane Postbox"] };
    { GREN.."4') "..AL["Elders' Square Postbox"] };
    { GREN.."5') "..AL["King's Square Postbox"] };
    { GREN.."6') "..AL["Fras Siabi's Postbox"] };
    { GREN..AL["3rd Box Opened"]..": "..AL["Postmaster Malown"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"] };
    { AL["Rhahk'Zor <The Foreman>"] };
    { AL["Miner Johnson"].." ("..AL["Rare"]..")" };
    { AL["Sneed <Lumbermaster>"] };
    { INDENT..AL["Sneed's Shredder <Lumbermaster>"] };
    { AL["Gilnid <The Smelter>"] };
    { AL["Defias Gunpowder"] };
    { AL["Captain Greenskin"] };
    { INDENT..AL["Edwin VanCleef <Defias Kingpin>"] };
    { INDENT..AL["Mr. Smite <The Ship's First Mate>"] };
    { INDENT..AL["Cookie <The Ship's Cook>"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Targorr the Dread"].." ("..AL["Varies"]..")" };
    { AL["Kam Deepfury"] };
    { AL["Hamhock"] };
    { AL["Bazil Thredd"] };
    { AL["Dextren Ward"] };
    { AL["Bruegal Ironknuckle"].." ("..AL["Rare"]..")" };
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
    { ORNG..AL["Key"]..": "..AL["Yeh'kinya's Scroll"].." ("..AL["Avatar of Hakkar"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE.."B-I) "..AL["Connection"] };
    { AL["Altar of Hakkar"] };
    { INDENT..AL["Atal'alarion <Guardian of the Idol>"] };
    { AL["Dreamscythe"] };
    { INDENT..AL["Weaver"] };
    { AL["Avatar of Hakkar"] };
    { AL["Jammal'an the Prophet"] };
    { INDENT..AL["Ogom the Wretched"] };
    { AL["Morphaz"] };
    { INDENT..AL["Hazzas"] };
    { AL["Shade of Eranikus"] };
    { INDENT..AL["Essence Font"] };
    { AL["Spawn of Hakkar"].." ("..AL["Rare"]..")" };
    { AL["Elder Starsong"].." ("..AL["Lunar Festival"]..")" };
    { GREN.."1'-6') "..AL["Statue Activation Order"] };
    { GREN.."7') "..AL["Atal'ai Defenders"] };
    { GREN..INDENT..AL["Gasher"] };
    { GREN..INDENT..AL["Loro"] };
    { GREN..INDENT..AL["Hukku"] };
    { GREN..INDENT..AL["Zolo"] };
    { GREN..INDENT..AL["Mijan"] };
    { GREN..INDENT..AL["Zul'Lor"] };
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
    { ORNG..AL["Key"]..": "..AL["Staff of Prehistoria"].." ("..AL["Ironaya"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE..AL["Entrance"].." ("..AL["Back"]..")" };
    { AL["Baelog"] };
    { INDENT..AL["Eric \"The Swift\""] };
    { INDENT..AL["Olaf"] };
    { INDENT..AL["Baelog's Chest"] };
    { INDENT..AL["Conspicuous Urn"] };
    { AL["Remains of a Paladin"] };
    { AL["Revelosh"] };
    { AL["Ironaya"] };
    { AL["Obsidian Sentinel"] };
    { AL["Annora <Enchanting Trainer>"] };
    { AL["Ancient Stone Keeper"] };
    { AL["Galgann Firehammer"] };
    { INDENT..AL["Tablet of Will"] };
    { INDENT..AL["Shadowforge Cache"] };
    { AL["Grimlok <Stonevault Chieftain>"] };
    { AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")" };
    { AL["The Discs of Norgannon"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Ancient Treasure"].." ("..AL["Lower"]..")" };
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
    { ORNG..AL["Reputation"]..": "..AL["Zandalar Tribe"] };
    { ORNG..AL["Key"]..": "..AL["Mudskunk Lure"].." ("..AL["Gahz'ranka"]..")" };
    { ORNG..AL["Key"]..": "..AL["Gurubashi Mojo Madness"].." ("..AL["Edge of Madness"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["High Priestess Jeklik"].." ("..AL["Bat"]..")" };
    { AL["High Priest Venoxis"].." ("..AL["Snake"]..")" };
    { AL["Zanza the Restless"] };
    { AL["High Priestess Mar'li"].." ("..AL["Spider"]..")" };
    { AL["Bloodlord Mandokir"].." ("..AL["Raptor"]..")" };
    { INDENT..AL["Ohgan"] };
    { AL["Edge of Madness"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Gri'lek"].." ("..AL["Random"]..")" };
    { INDENT..AL["Hazza'rah"].." ("..AL["Random"]..")" };
    { INDENT..AL["Renataki"].." ("..AL["Random"]..")" };
    { INDENT..AL["Wushoolay"].." ("..AL["Random"]..")" };
    { AL["Gahz'ranka"].." ("..AL["Optional"]..")" };
    { AL["High Priest Thekal"].." ("..AL["Tiger"]..")" };
    { INDENT..AL["Zealot Zath"] };
    { INDENT..AL["Zealot Lor'Khan"] };
    { AL["High Priestess Arlokk"].." ("..AL["Panther"]..")" };
    { AL["Jin'do the Hexxer"].." ("..AL["Undead"]..")" };
    { AL["Hakkar"] };
    { GREN..AL["Muddy Churning Waters"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Lower City"] };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Shirrak the Dead Watcher"] };
    { AL["Exarch Maladaar"] };
    { INDENT..AL["Avatar of the Martyred"] };
    { INDENT..AL["D'ore"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Consortium"] };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
    { ORNG..AL["Key"]..": "..AL["The Eye of Haramad"].." ("..AL["Exalted"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Pandemonius"] };
    { INDENT..AL["Shadow Lord Xiraxis"] };
    { AL["Ambassador Pax'ivi"].." ("..AL["Heroic"]..")" };
    { AL["Tavarok"] };
    { AL["Cryo-Engineer Sha'heen"] };
    { INDENT..AL["Ethereal Transporter Control Panel"] };
    { AL["Nexus-Prince Shaffar"] };
    { INDENT..AL["Yor <Void Hound of Shaffar>"].." ("..AL["Summon"]..")" };
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
    { ORNG..AL["Reputation"]..": "..AL["Lower City"] };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
    { ORNG..AL["Key"]..": "..AL["Essence-Infused Moonstone"].." ("..AL["Anzu"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Darkweaver Syth"] };
    { INDENT..AL["Lakka"] };
    { AL["The Saga of Terokk"] };
    { INDENT..AL["Anzu"].." ("..AL["Summon"]..")" };
    { AL["Talon King Ikiss"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Lower City"] };
    { ORNG..AL["Key"]..": "..AL["Shadow Labyrinth Key"] };
    { ORNG..AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Spy To'gun"] };
    { AL["Ambassador Hellmaw"] };
    { AL["Blackheart the Inciter"] };
    { AL["Grandmaster Vorpil"] };
    { INDENT..AL["The Codex of Blood"] };
    { AL["Murmur"] };
    { AL["Arcane Container"] };
    { INDENT..AL["First Fragment Guardian"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Towards Reliquary of Souls"] };
    { BLUE..AL["Towards Teron Gorefiend"] };
    { BLUE.."D) "..AL["Towards Illidan Stormrage"] };
    { AL["Spirit of Olum"] };
    { AL["High Warlord Naj'entus"] };
    { AL["Supremus"] };
    { AL["Shade of Akama"] };
    { AL["Spirit of Udalo"] };
    { INDENT..AL["Aluyen <Reagents>"] };
    { INDENT..AL["Okuno <Ashtongue Deathsworn Quartermaster>"] };
    { INDENT..AL["Seer Kanai"] };
    };
    [2] = {
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Entrance"] };
    { AL["Gurtogg Bloodboil"] };
    { AL["Reliquary of Souls"] };
    { INDENT..AL["Essence of Suffering"] };
    { INDENT..AL["Essence of Desire"] };
    { INDENT..AL["Essence of Anger"] };
    { AL["Teron Gorefiend"] };
    };
    [3] = {
    { ORNG..AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
    { BLUE.."D) "..AL["Entrance"] };
    { AL["Mother Shahraz"] };
    { AL["The Illidari Council"] };
    { INDENT..AL["Lady Malande"].." ("..AL["Priest"]..")" };
    { INDENT..AL["Gathios the Shatterer"].." ("..AL["Paladin"]..")" };
    { INDENT..AL["High Nethermancer Zerevor"].." ("..AL["Mage"]..")" };
    { INDENT..AL["Veras Darkshadow"].." ("..AL["Rogue"]..")" };
    { AL["Illidan Stormrage <The Betrayer>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"] };
    { BLUE..AL["Entrance"] };
    { AL["Hydross the Unstable <Duke of Currents>"] };
    { AL["The Lurker Below"] };
    { AL["Leotheras the Blind"] };
    { AL["Fathom-Lord Karathress"] };
    { INDENT..AL["Seer Olum"] };
    { AL["Morogrim Tidewalker"] };
    { AL["Lady Vashj <Coilfang Matron>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"] };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Ahune <The Frost Lord>"].." ("..AL["Midsummer Festival"]..")" };
    { AL["Mennu the Betrayer"] };
    { AL["Weeder Greenthumb"] };
    { AL["Skar'this the Heretic"].." ("..AL["Heroic"]..")" };
    { AL["Rokmar the Crackler"] };
    { AL["Naturalist Bite"] };
    { AL["Quagmirran"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"] };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Hydromancer Thespia"] };
    { INDENT..AL["Main Chambers Access Panel"] };
    { AL["Arcane Container"] };
    { INDENT..AL["Second Fragment Guardian"] };
    { AL["Mekgineer Steamrigger"] };
    { INDENT..AL["Main Chambers Access Panel"] };
    { AL["Warlord Kalithresh"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Cenarion Expedition"] };
    { ORNG..AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Hungarfen"] };
    { INDENT..AL["The Underspore"] };
    { AL["Ghaz'an"] };
    { AL["Earthbinder Rayge"] };
    { AL["Swamplord Musel'ek"] };
    { INDENT..AL["Claw <Swamplord Musel'ek's Pet>"] };
    { AL["The Black Stalker"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Keepers of Time"] };
    { ORNG..AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Sa'at <Keepers of Time>"] };
    { ORNG.."X) "..AL["Portal"].." ("..AL["Spawn Point"]..")" };
    { ORNG..INDENT..AL["Wave 6"]..": "..AL["Chrono Lord Deja"] };
    { ORNG..INDENT..AL["Wave 12"]..": "..AL["Temporus"] };
    { ORNG..INDENT..AL["Wave 18"]..": "..AL["Aeonus"] };
    { AL["The Dark Portal"] };
    { INDENT..AL["Medivh"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Scale of the Sands"] };
    { BLUE..AL["Alliance Base"] };
    { BLUE..INDENT..AL["Lady Jaina Proudmoore"] };
    { BLUE..AL["Horde Encampment"] };
    { BLUE..INDENT..AL["Thrall <Warchief>"] };
    { BLUE..AL["Night Elf Village"] };
    { BLUE..INDENT..AL["Tyrande Whisperwind <High Priestess of Elune>"] };
    { AL["Rage Winterchill"] };
    { AL["Anetheron"] };
    { AL["Kaz'rogal"] };
    { AL["Azgalor"] };
    { AL["Archimonde"] };
    { "?) "..AL["Indormi <Keeper of Ancient Gem Lore>"] };
    { INDENT..AL["Tydormu <Keeper of Lost Artifacts>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Keepers of Time"] };
    { ORNG..AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Erozion"] };
    { BLUE..INDENT..AL["Brazen"] };
    { BLUE..AL["Landing Spot"] };
    { BLUE..BabbleSubZone["Southshore"] };
    { BLUE.."D) "..BabbleSubZone["Tarren Mill"] };
    { AL["Lieutenant Drake"] };
    { AL["Thrall"].." ("..AL["Lower"]..")" };
    { AL["Captain Skarloc"] };
    { INDENT..AL["Thrall"].." ("..AL["Second Stop"]..")" };
    { AL["Thrall"].." ("..AL["Third Stop"]..")" };
    { AL["Epoch Hunter"] };
    { INDENT..AL["Thrall"].." ("..AL["Fourth Stop"]..", "..AL["Upper"]..")" };
    { INDENT..AL["Taretha"].." ("..AL["Upper"]..")" };
    { AL["Jonathan Revah"] };
    { INDENT..AL["Jerry Carter"] };
    { "" };
    { ORNG..AL["Traveling"] };
    { INDENT..AL["Thomas Yance <Travelling Salesman>"] };
    { INDENT..AL["Aged Dalaran Wizard"] };
    { INDENT..AL["Don Carlos"] };
    { INDENT..AL["Guerrero"] };
    { "" };
    { ORNG..BabbleSubZone["Southshore"] };
    { INDENT..AL["Kel'Thuzad <The Kirin Tor>"] };
    { INDENT..AL["Helcular"] };
    { INDENT..AL["Farmer Kent"] };
    { INDENT..AL["Sally Whitemane"] };
    { INDENT..AL["Renault Mograine"] };
    { INDENT..AL["Little Jimmy Vishas"] };
    { INDENT..AL["Herod the Bully"] };
    { INDENT..AL["Nat Pagle"] };
    { INDENT..AL["Hal McAllister"] };
    { INDENT..AL["Zixil <Aspiring Merchant>"] };
    { INDENT..AL["Overwatch Mark 0 <Protector>"] };
    { "" };
    { ORNG..AL["Southshore Inn"] };
    { INDENT..AL["Captain Edward Hanes"] };
    { INDENT..AL["Captain Sanders"] };
    { INDENT..AL["Commander Mograine"] };
    { INDENT..AL["Isillien"] };
    { INDENT..AL["Abbendis"] };
    { INDENT..AL["Fairbanks"] };
    { INDENT..AL["Tirion Fordring"] };
    { INDENT..AL["Arcanist Doan"] };
    { INDENT..AL["Taelan"].." ("..AL["Upper"]..")" };
    { INDENT..AL["Barkeep Kelly <Bartender>"] };
    { INDENT..AL["Frances Lin <Barmaid>"] };
    { INDENT..AL["Chef Jessen <Speciality Meat & Slop>"] };
    { INDENT..AL["Stalvan Mistmantle"].." ("..AL["Upper"]..")" };
    { INDENT..AL["Phin Odelic <The Kirin Tor>"].." ("..AL["Upper"]..")" };
    { "" };
    { ORNG..BabbleSubZone["Southshore Town Hall"] };
    { INDENT..AL["Magistrate Henry Maleb"] };
    { INDENT..AL["Raleigh the True"] };
    { INDENT..AL["Nathanos Marris"] };
    { INDENT..AL["Bilger the Straight-laced"] };
    { "" };
    { ORNG..BabbleSubZone["Tarren Mill"] };
    { INDENT..AL["Innkeeper Monica"] };
    { INDENT..AL["Julie Honeywell"] };
    { INDENT..AL["Jay Lemieux"] };
    { INDENT..AL["Young Blanchy"] };
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
    { BLUE..AL["Entrance"] };
    { AL["High King Maulgar <Lord of the Ogres>"] };
    { INDENT..AL["Kiggler the Crazed"].." ("..AL["Shaman"]..")" };
    { INDENT..AL["Blindeye the Seer"].." ("..AL["Priest"]..")" };
    { INDENT..AL["Olm the Summoner"].." ("..AL["Warlock"]..")" };
    { INDENT..AL["Krosh Firehand"].." ("..AL["Mage"]..")" };
    { AL["Gruul the Dragonkiller"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["The Maker"] };
    { AL["Broggok"] };
    { AL["Keli'dan the Breaker"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Watchkeeper Gargolmar"] };
    { AL["Omor the Unscarred"] };
    { AL["Vazruden"] };
    { INDENT..AL["Nazan <Vazruden's Mount>"] };
    { INDENT..AL["Reinforced Fel Iron Chest"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Magtheridon"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
    { ORNG..AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
    { ORNG..AL["Key"]..": "..AL["Shattered Halls Key"] };
    { ORNG..AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Randy Whizzlesprocket"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Drisella"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
    { AL["Grand Warlock Nethekurse"] };
    { AL["Blood Guard Porung"].." ("..AL["Heroic"]..")" };
    { AL["Warbringer O'mrogg"] };
    { AL["Warchief Kargath Bladefist"] };
    { INDENT..AL["Shattered Hand Executioner"].." ("..AL["Heroic"]..")" };
    { INDENT..AL["Private Jacint"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Rifleman Brownbeard"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Captain Alina"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Scout Orgarr"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Korag Proudmane"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Captain Boneshatter"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
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
    { ORNG..AL["Reputation"]..": "..AL["The Violet Eye"] };
    { ORNG..AL["Key"]..": "..AL["The Master's Key"] };
    { BLUE..AL["Entrance"].." ("..AL["Front"]..")" };
    { BLUE..AL["Staircase to the Ballroom"].." ("..AL["Moroes <Tower Steward>"]..")" };
    { BLUE..AL["Stairs to Upper Stable"] };
    { BLUE.."D) "..AL["Ramp to the Guest Chambers"].." ("..AL["Maiden of Virtue"]..")" };
    { BLUE.."E) "..AL["Stairs to Opera House Orchestra Level"] };
    { BLUE.."F) "..AL["Ramp from Mezzanine to Balcony"] };
    { BLUE.."G) "..AL["Entrance"].." ("..AL["Back"]..")" };
    { BLUE.."H) "..AL["Connection to Master's Terrace"].." ("..AL["Nightbane"]..")" };
    { BLUE.."I) "..AL["Path to the Broken Stairs"] };
    { AL["Hastings <The Caretaker>"] };
    { AL["Servant Quarters"] };
    { INDENT..AL["Hyakiss the Lurker"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
    { INDENT..AL["Rokad the Ravager"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
    { INDENT..AL["Shadikith the Glider"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
    { AL["Berthold <The Doorman>"] };
    { AL["Calliard <The Nightman>"] };
    { AL["Attumen the Huntsman"] };
    { INDENT..AL["Midnight"] };
    { AL["Koren <The Blacksmith>"] };
    { AL["Moroes <Tower Steward>"] };
    { INDENT..AL["Baroness Dorothea Millstipe"].." ("..AL["Random"]..", "..AL["Shadow Priest"]..")" };
    { INDENT..AL["Lady Catriona Von'Indi"].." ("..AL["Random"]..", "..AL["Holy Priest"]..")" };
    { INDENT..AL["Lady Keira Berrybuck"].." ("..AL["Random"]..", "..AL["Holy Paladin"]..")" };
    { INDENT..AL["Baron Rafe Dreuger"].." ("..AL["Random"]..", "..AL["Retribution Paladin"]..")" };
    { INDENT..AL["Lord Robin Daris"].." ("..AL["Random"]..", "..AL["Arms Warrior"]..")" };
    { INDENT..AL["Lord Crispin Ference"].." ("..AL["Random"]..", "..AL["Protection Warrior"]..")" };
    { AL["Bennett <The Sergeant at Arms>"] };
    { AL["Ebonlocke <The Noble>"] };
    { AL["Keanna's Log"] };
    { AL["Maiden of Virtue"] };
    { AL["Sebastian <The Organist>"] };
    { AL["Barnes <The Stage Manager>"] };
    { AL["The Opera Event"] };
    { INDENT..AL["Red Riding Hood"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["The Big Bad Wolf"] };
    { INDENT..AL["Wizard of Oz"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["Dorothee"] };
    { INDENT..INDENT..AL["Tito"] };
    { INDENT..INDENT..AL["Strawman"] };
    { INDENT..INDENT..AL["Tinhead"] };
    { INDENT..INDENT..AL["Roar"] };
    { INDENT..INDENT..AL["The Crone"] };
    { INDENT..AL["Romulo and Julianne"].." ("..AL["Random"]..")" };
    { INDENT..INDENT..AL["Romulo"] };
    { INDENT..INDENT..AL["Julianne"] };
    { AL["The Master's Terrace"] };
    { INDENT..AL["Nightbane"].." ("..AL["Summon"]..")" };
    };
    [2] = {
    { ORNG..AL["Reputation"]..": "..AL["The Violet Eye"] };
    { ORNG..AL["Key"]..": "..AL["The Master's Key"] };
    { BLUE.."I) "..AL["Path to the Broken Stairs"] };
    { BLUE.."J) "..AL["Broken Stairs"] };
    { BLUE.."K) "..AL["Ramp to Guardian's Library"].." ("..AL["Shade of Aran"]..")" };
    { BLUE.."L) "..AL["Suspicious Bookshelf"].." ("..AL["Terestian Illhoof"]..")" };
    { BLUE.."M) "..AL["Ramp up to the Celestial Watch"].." ("..AL["Netherspite"]..")" };
    { BLUE..INDENT..AL["Ramp down to the Gamesman's Hall"].." ("..AL["Chess Event"]..")" };
    { BLUE.."N) "..AL["Ramp to Medivh's Chamber"] };
    { BLUE.."O) "..AL["Spiral Stairs to Netherspace"].." ("..AL["Prince Malchezaar"]..")" };
    { AL["The Curator"] };
    { AL["Wravien <The Mage>"] };
    { AL["Gradav <The Warlock>"] };
    { AL["Kamsis <The Conjurer>"] };
    { AL["Terestian Illhoof"] };
    { INDENT..AL["Kil'rek"].." ("..AL["Imp"]..")" };
    { AL["Shade of Aran"] };
    { AL["Netherspite"] };
    { AL["Ythyar"].." ("..AL["Repair"]..", "..AL["Rewards"]..")" };
    { AL["Echo of Medivh"] };
    { AL["Dust Covered Chest"].." ("..AL["Chess Event"]..")" };
    { AL["Prince Malchezaar"] };
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
    { ORNG..AL["Reputation"]..": "..AL["Shattered Sun Offensive"] };
    { BLUE..AL["Entrance"] };
    { AL["Selin Fireheart"] };
    { INDENT..AL["Fel Crystals"] };
    { AL["Tyrith"] };
    { AL["Vexallus"] };
    { AL["Scrying Orb"] };
    { INDENT..AL["Kalecgos"] };
    { AL["Priestess Delrissa"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Apoko"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Shaman"]..")" };
    { INDENT..AL["Eramas Brightblaze"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Monk"]..")" };
    { INDENT..AL["Ellrys Duskhallow"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warlock"]..")" };
    { INDENT..INDENT..AL["Fizzle"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
    { INDENT..AL["Garaxxas"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Hunter"]..")" };
    { INDENT..INDENT..AL["Sliver <Garaxxas' Pet>"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
    { INDENT..AL["Kagani Nightstrike"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Rogue"]..")" };
    { INDENT..AL["Warlord Salaris"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warrior"]..")" };
    { INDENT..AL["Yazzai"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Mage"]..")" };
    { INDENT..AL["Zelfan"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Engineer"]..")" };
    { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Kalecgos"] };
    { INDENT..AL["Sathrovarr the Corruptor"] };
    { AL["Madrigosa"] };
    { INDENT..AL["Brutallus"] };
    { INDENT..AL["Felmyst"] };
    { AL["Eredar Twins"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Grand Warlock Alythess"].." ("..AL["Lower"]..")" };
    { INDENT..AL["Lady Sacrolash"].." ("..AL["Lower"]..")" };
    { INDENT..AL["M'uru"].." ("..AL["Upper"]..")" };
    { INDENT..AL["Entropius"].." ("..AL["Upper"]..")" };
    { AL["Kil'jaeden <The Deceiver>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"] };
    { ORNG..AL["Key"]..": "..AL["Key to the Arcatraz"] };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { AL["Zereketh the Unbound"] };
    { AL["Arcane Container"] };
    { INDENT..AL["Third Fragment Guardian"] };
    { AL["Dalliah the Doomsayer"] };
    { AL["Wrath-Scryer Soccothrates"] };
    { AL["Udalo"] };
    { AL["Harbinger Skyriss"] };
    { INDENT..AL["Warden Mellichar"] };
    { INDENT..AL["Millhouse Manastorm"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"] };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"] };
    { AL["Commander Sarannis"] };
    { AL["High Botanist Freywinn"] };
    { AL["Thorngrin the Tender"] };
    { AL["Laj"] };
    { AL["Warp Splinter"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"] };
    { ORNG..AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"] };
    { AL["Gatewatcher Gyro-Kill"] };
    { AL["Gatewatcher Iron-Hand"] };
    { INDENT..AL["Cache of the Legion"] };
    { AL["Mechano-Lord Capacitus"] };
    { INDENT..AL["Overcharged Manacell"] };
    { AL["Nethermancer Sepethrea"] };
    { AL["Pathaleon the Calculator"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Sha'tar"] };
    { BLUE..AL["Entrance"] };
    { AL["Al'ar <Phoenix God>"] };
    { AL["Void Reaver"] };
    { AL["High Astromancer Solarian"] };
    { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"] };
    { INDENT..AL["Thaladred the Darkener <Advisor to Kael'thas>"].." ("..AL["Warrior"]..")" };
    { INDENT..AL["Master Engineer Telonicus <Advisor to Kael'thas>"].." ("..AL["Hunter"]..")" };
    { INDENT..AL["Grand Astromancer Capernian <Advisor to Kael'thas>"].." ("..AL["Mage"]..")" };
    { INDENT..AL["Lord Sanguinar <The Blood Hammer>"].." ("..AL["Paladin"]..")" };
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
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Harrison Jones"] };
    { AL["Nalorakk <Bear Avatar>"] };
    { INDENT..AL["Tanzar"] };
    { INDENT..AL["The Map of Zul'Aman"] };
    { AL["Akil'Zon <Eagle Avatar>"] };
    { INDENT..AL["Harkor"] };
    { AL["Jan'Alai <Dragonhawk Avatar>"] };
    { INDENT..AL["Kraz"] };
    { AL["Halazzi <Lynx Avatar>"] };
    { INDENT..AL["Ashli"] };
    { AL["Zungam"] };
    { AL["Hex Lord Malacrass"] };
    { INDENT..AL["Thurg"].." ("..AL["Random"]..")" };
    { INDENT..AL["Gazakroth"].." ("..AL["Random"]..")" };
    { INDENT..AL["Lord Raadan"].." ("..AL["Random"]..")" };
    { INDENT..AL["Darkheart"].." ("..AL["Random"]..")" };
    { INDENT..AL["Alyson Antille"].." ("..AL["Random"]..")" };
    { INDENT..AL["Slither"].." ("..AL["Random"]..")" };
    { INDENT..AL["Fenstalker"].." ("..AL["Random"]..")" };
    { INDENT..AL["Koragg"].." ("..AL["Random"]..")" };
    { AL["Zul'jin"] };
    { GREN..AL["Forest Frogs"] };
    { GREN..INDENT..AL["Kyren <Reagents>"] };
    { GREN..INDENT..AL["Gunter <Food Vendor>"] };
    { GREN..INDENT..AL["Adarrah"] };
    { GREN..INDENT..AL["Brennan"] };
    { GREN..INDENT..AL["Darwen"] };
    { GREN..INDENT..AL["Deez"] };
    { GREN..INDENT..AL["Galathryn"] };
    { GREN..INDENT..AL["Mitzi"] };
    { GREN..INDENT..AL["Mannuth"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"] };
    { AL["Elder Nadox"] };
    { AL["Prince Taldaram"] };
    { AL["Amanitar"].." ("..AL["Heroic"]..")" };
    { AL["Jedoga Shadowseeker"] };
    { AL["Herald Volazj"] };
    { AL["Ahn'kahet Brazier"] };
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
    [1] = {
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Connection"] };
    { BLUE..AL["Exit"] };
    { AL["Krik'thir the Gatewatcher"] };
    { INDENT..AL["Watcher Gashra"] };
    { INDENT..AL["Watcher Narjil"] };
    { INDENT..AL["Watcher Silthik"] };
    { AL["Hadronox"] };
    { AL["Elder Nurgen"].." ("..AL["Lunar Festival"]..")" };
    { AL["Anub'arak"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"].." ("..AL["Portal"]..")" };
    { ORNG.."X) "..AL["Scourge Invasion Points"] };
    { ORNG..INDENT..AL["Wave 5"]..": "..AL["Meathook"] };
    { ORNG..INDENT..AL["Wave 10"]..": "..AL["Salramm the Fleshcrafter"] };
    { AL["Chromie"] };
    { AL["Chromie"] };
    { AL["Chrono-Lord Epoch"] };
    { AL["Infinite Corruptor"].." ("..AL["Heroic"]..")" };
    { INDENT..AL["Guardian of Time"] };
    { AL["Mal'Ganis"] };
    { INDENT..AL["Chromie"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Connection"] };
    { BLUE..AL["Connection"] };
    { AL["Trollgore"] };
    { AL["Kurzel"] };
    { AL["Novos the Summoner"] };
    { AL["Elder Kilias"].." ("..AL["Lunar Festival"]..")" };
    { AL["King Dred"] };
    { AL["The Prophet Tharon'ja"] };
    { AL["Drakuru's Brazier"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Portal"].." ("..BabbleZone["Dalaran"]..")" };
    { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
    { AL["Falric"].." ("..AL["Wave 5"]..")" };
    { AL["Marwyn"].." ("..AL["Wave 10"]..")" };
    { AL["Wrath of the Lich King"].." ("..AL["Event"]..")" };
    { INDENT..AL["The Captain's Chest"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Portal"].." ("..BabbleZone["Halls of Reflection"]..")" };
    { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
    { INDENT..AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
    { AL["Forgemaster Garfrost"] };
    { INDENT..AL["Martin Victus"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Gorkun Ironskull"].." ("..AL["Horde"]..")" };
    { AL["Krick and Ick"] };
    { AL["Scourgelord Tyrannus"] };
    { INDENT..AL["Rimefang"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Portal"].." ("..BabbleZone["Pit of Saron"]..")" };
    { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
    { INDENT..AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
    { INDENT..AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
    { INDENT..AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
    { AL["Bronjahm <Godfather of Souls>"] };
    { AL["Devourer of Souls"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Exit"] };
    { AL["Slad'ran <High Prophet of Sseratus>"] };
    { AL["Drakkari Colossus"] };
    { AL["Elder Ohanzee"].." ("..AL["Lunar Festival"]..")" };
    { AL["Moorabi <High Prophet of Mam'toth>"] };
    { AL["Eck the Ferocious"].." ("..AL["Heroic"]..", "..AL["Summon"]..")" };
    { AL["Gal'darah <High Prophet of Akali>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"] };
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Connection"] };
    { BLUE..AL["To next map"] };
    { AL["Lord Marrowgar"] };
    { AL["Lady Deathwhisper"] };
    { AL["Gunship Battle"].." ("..AL["Alliance"]..")" };
    { AL["Gunship Battle"].." ("..AL["Horde"]..")" };
    { AL["Deathbringer Saurfang"] };
    { GREN..BabbleSubZone["Light's Hammer"].." ("..AL["Teleporter"]..")" };
    { GREN..BabbleSubZone["Oratory of the Damned"].." ("..AL["Teleporter"]..")" };
    { GREN..BabbleSubZone["Rampart of Skulls"].." ("..AL["Teleporter"]..", "..AL["Lower"]..")" };
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
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"] };
    { BLUE..AL["From previous map"] };
    { BLUE.."D-H) "..AL["Connection"] };
    { BLUE.."I) "..AL["To next map"] };
    { AL["Festergut"] };
    { AL["Rotface"] };
    { AL["Professor Putricide"] };
    { AL["Blood Prince Council"] };
    { INDENT..AL["Prince Keleseth"] };
    { INDENT..AL["Prince Taldaram"] };
    { INDENT..AL["Prince Valanar"] };
    { AL["Blood-Queen Lana'thel"] };
    { AL["Valithria Dreamwalker"] };
    { AL["Sindragosa <Queen of the Frostbrood>"] };
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
    { ORNG..AL["Reputation"]..": "..AL["The Ashen Verdict"] };
    { BLUE.."I) "..AL["From previous map"] };
    { AL["The Lich King"] };
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
    { BLUE..AL["Entrance"] };
    { INDENT..AL["Patchwerk"] };
    { INDENT..AL["Grobbulus"] };
    { INDENT..AL["Gluth"] };
    { INDENT..AL["Thaddius"] };
    { ORNG..INDENT..AL["Anub'Rekhan"] };
    { ORNG..INDENT..AL["Grand Widow Faerlina"] };
    { ORNG..INDENT..AL["Maexxna"] };
    { _RED..INDENT..AL["Instructor Razuvious"] };
    { _RED..INDENT..AL["Gothik the Harvester"] };
    { _RED..INDENT..AL["Four Horsemen Chest"] };
    { PURP..INDENT..AL["Noth the Plaguebringer"] };
    { PURP..INDENT..AL["Heigan the Unclean"] };
    { PURP..INDENT..AL["Loatheb"] };
    { GREN..INDENT..AL["Sapphiron"] };
    { GREN..INDENT..AL["Kel'Thuzad"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Mr. Bigglesworth"].." ("..AL["Wanders"]..")" };
    { BabbleSubZone["The Construct Quarter"] };
    { INDENT..AL["Patchwerk"] };
    { INDENT..AL["Grobbulus"] };
    { INDENT..AL["Gluth"] };
    { INDENT..AL["Thaddius"] };
    { ORNG..BabbleSubZone["The Arachnid Quarter"] };
    { ORNG..INDENT..AL["Anub'Rekhan"] };
    { ORNG..INDENT..AL["Grand Widow Faerlina"] };
    { ORNG..INDENT..AL["Maexxna"] };
    { _RED..BabbleSubZone["The Military Quarter"] };
    { _RED..INDENT..AL["Instructor Razuvious"] };
    { _RED..INDENT..AL["Gothik the Harvester"] };
    { _RED..INDENT..AL["The Four Horsemen"] };
    { _RED..INDENT..INDENT..AL["Thane Korth'azz"] };
    { _RED..INDENT..INDENT..AL["Lady Blaumeux"] };
    { _RED..INDENT..INDENT..AL["Baron Rivendare"] };
    { _RED..INDENT..INDENT..AL["Sir Zeliek"] };
    { _RED..INDENT..INDENT..AL["Four Horsemen Chest"] };
    { PURP..BabbleSubZone["The Plague Quarter"] };
    { PURP..INDENT..AL["Noth the Plaguebringer"] };
    { PURP..INDENT..AL["Heigan the Unclean"] };
    { PURP..INDENT..AL["Loatheb"] };
    { GREN..AL["Frostwyrm Lair"] };
    { GREN..INDENT..AL["Sapphiron"] };
    { GREN..INDENT..AL["Kel'Thuzad"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Tenebron"] };
    { AL["Shadron"] };
    { AL["Vesperon"] };
    { AL["Sartharion <The Onyx Guardian>"] };
    };
};
["OnyxiasLair"] = {
    ZoneName = { BabbleZone["Onyxia's Lair"] };
    Acronym = AL["Ony"];
    MapName = "DireMaul";
    Location = { BabbleZone["Dustwallow Marsh"] };
    LevelRange = "80+";
    MinLevel = "80";
    PlayerLimit = "10/25";
    [1] = {
    { BLUE..AL["Entrance"] };
    { AL["Onyxian Warders"] };
    { AL["Whelp Eggs"] };
    { AL["Onyxia"] };
    };
};
["Onyxia60"] = {
    ZoneName = { BabbleZone["Onyxia's Lair"], 2159 };
    Acronym = AL["Ony"];
    MapName = "DireMaul";
    Location = { BabbleZone["Dustwallow Marsh"] };
    LevelRange = "60+";
    MinLevel = "60";
    PlayerLimit = "10-25";
    [1] = {
    { BLUE..AL["Entrance"] };
    { AL["Onyxian Warders"] };
    { AL["Whelp Eggs"] };
    { AL["Onyxia"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Baltharus the Warborn"] };
    { AL["Saviana Ragefire"] };
    { AL["General Zarithrian"] };
    { AL["Halion <The Twilight Destroyer>"] };
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
    { ORNG..AL["Key"]..": "..AL["Key to the Focusing Iris"] };
    { AL["Malygos"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Berinand's Research"] };
    { INDENT..AL["Commander Stoutbeard"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
    { INDENT..AL["Commander Kolurg"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
    { AL["Grand Magus Telestra"] };
    { AL["Anomalus"] };
    { AL["Elder Igasho"].." ("..AL["Lunar Festival"]..")" };
    { AL["Ormorok the Tree-Shaper"] };
    { AL["Keristrasza"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Portal"] };
    { AL["Drakos the Interrogator"] };
    { AL["Varos Cloudstrider <Azure-Lord of the Blue Dragonflight>"] };
    { AL["Mage-Lord Urom"] };
    { AL["Ley-Guardian Eregos"] };
    { AL["Cache of Eregos"] };
    { GREN..AL["Centrifuge Construct"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Grand Champions"] };
    { INDENT..AL["Champions of the Alliance"] };
    { INDENT..INDENT..AL["Marshal Jacob Alerius"] };
    { INDENT..INDENT..AL["Ambrose Boltspark"] };
    { INDENT..INDENT..AL["Colosos"] };
    { INDENT..INDENT..AL["Jaelyne Evensong"] };
    { INDENT..INDENT..AL["Lana Stouthammer"] };
    { INDENT..AL["Champions of the Horde"] };
    { INDENT..INDENT..AL["Mokra the Skullcrusher"] };
    { INDENT..INDENT..AL["Eressea Dawnsinger"] };
    { INDENT..INDENT..AL["Runok Wildmane"] };
    { INDENT..INDENT..AL["Zul'tore"] };
    { INDENT..INDENT..AL["Deathstalker Visceri"] };
    { INDENT..AL["Eadric the Pure <Grand Champion of the Argent Crusade>"] };
    { INDENT..AL["Argent Confessor Paletress"] };
    { INDENT..AL["The Black Knight"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..AL["Cavern Entrance"] };
    { AL["Northrend Beasts"] };
    { INDENT..INDENT..AL["Gormok the Impaler"] };
    { INDENT..INDENT..AL["Acidmaw"] };
    { INDENT..INDENT..AL["Dreadscale"] };
    { INDENT..INDENT..AL["Icehowl"] };
    { INDENT..AL["Lord Jaraxxus"] };
    { INDENT..AL["Faction Champions"] };
    { INDENT..AL["Twin Val'kyr"] };
    { INDENT..INDENT..AL["Fjola Lightbane"] };
    { INDENT..INDENT..AL["Eydis Darkbane"] };
    { AL["Anub'arak"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..BabbleSubZone["The Antechamber"] };
    { ORNG.."A') "..AL["Tower of Life"] };
    { ORNG.."B') "..AL["Tower of Flame"] };
    { ORNG.."C') "..AL["Tower of Frost"] };
    { ORNG.."D') "..AL["Tower of Storms"] };
    { AL["Flame Leviathan"] };
    { AL["Razorscale"].." ("..AL["Optional"]..")" };
    { AL["Ignis the Furnace Master"].." ("..AL["Optional"]..")" };
    { AL["XT-002 Deconstructor"] };
    { GREN..BabbleSubZone["Expedition Base Camp"].." ("..AL["Teleporter"]..")" };
    { GREN..BabbleSubZone["Formation Grounds"].." ("..AL["Teleporter"]..")" };
    { GREN..BabbleSubZone["The Colossal Forge"].." ("..AL["Teleporter"]..")" };
    { GREN.."4') "..BabbleSubZone["The Scrapyard"].." ("..AL["Teleporter"]..")" };
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
    { ORNG..AL["Key"]..": "..AL["Celestial Planetarium Key"] };
    { BLUE..AL["The Siege"] };
    { BLUE..AL["The Keepers"] };
    { AL["Assembly of Iron"].." ("..AL["Optional"]..")" };
    { INDENT..AL["Steelbreaker"] };
    { INDENT..AL["Runemaster Molgeim"] };
    { INDENT..AL["Stormcaller Brundir"] };
    { AL["Prospector Doren"] };
    { INDENT..AL["Archivum Console"] };
    { AL["Kologarn"] };
    { AL["Algalon the Observer"].." ("..AL["Optional"]..")" };
    { GREN.."5') "..BabbleSubZone["The Antechamber"].." ("..AL["Teleporter"]..")" };
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
    { BLUE..BabbleSubZone["The Antechamber"] };
    { BLUE.."D) "..BabbleSubZone["The Spark of Imagination"] };
    { BLUE.."E) "..BabbleSubZone["The Descent into Madness"] };
    { AL["Auriaya"].." ("..AL["Optional"]..")" };
    { AL["Hodir"] };
    { AL["Thorim"] };
    { AL["Freya"] };
    { GREN.."6') "..BabbleSubZone["The Shattered Walkway"].." ("..AL["Teleporter"]..")" };
    { GREN.."7') "..BabbleSubZone["The Conservatory of Life"].." ("..AL["Teleporter"]..")" };
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
    { AL["Mimiron"] };
    { GREN.."8') "..BabbleSubZone["The Spark of Imagination"].." ("..AL["Teleporter"]..")" };
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
    { AL["General Vezax"] };
    { AL["Yogg-Saron"] };
    { GREN.."9') "..BabbleSubZone["The Prison of Yogg-Saron"].." ("..AL["Teleporter"]..")" };
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
    { BLUE..AL["Entrance"] };
    { AL["General Bjarngrim"].." ("..AL["Wanders"]..")" };
    { AL["Volkhan"] };
    { AL["Ionar"] };
    { AL["Loken"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Elder Yurauk"].." ("..AL["Lunar Festival"]..")" };
    { AL["Krystallus"] };
    { AL["Maiden of Grief"] };
    { AL["Brann Bronzebeard"] };
    { AL["Tribunal Chest"] };
    { AL["Sjonnir the Ironshaper"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Dark Ranger Marrah"] };
    { BLUE.."B-C) "..AL["Connection"] };
    { AL["Prince Keleseth <The San'layn>"] };
    { AL["Elder Jarten"].." ("..AL["Lunar Festival"]..", "..AL["Lower"]..")" };
    { AL["Dalronn the Controller"] };
    { INDENT..AL["Skarvald the Constructor"] };
    { AL["Ingvar the Plunderer"] };
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
    { BLUE..AL["Entrance"] };
    { BLUE..INDENT..AL["Brigg Smallshanks"] };
    { AL["Svala Sorrowgrave"] };
    { AL["Gortok Palehoof"] };
    { AL["Skadi the Ruthless"] };
    { AL["Elder Chogan'gada"].." ("..AL["Lunar Festival"]..")" };
    { AL["King Ymiron"] };
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
    { BLUE..AL["Entrance"] };
    { AL["Archavon the Stone Watcher"] };
    { AL["Emalon the Storm Watcher"] };
    { AL["Koralon the Flame Watcher"] };
    { AL["Toravon the Ice Watcher"] };
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
    { ORNG..AL["Key"]..": "..AL["The Violet Hold Key"] };
    { BLUE..AL["Entrance"] };
    { AL["Erekem"].." ("..AL["Random"]..")" };
    { AL["Zuramat the Obliterator"].." ("..AL["Upper"]..", "..AL["Random"]..")" };
    { INDENT..AL["Xevozz"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
    { AL["Ichoron"].." ("..AL["Random"]..")" };
    { AL["Moragg"].." ("..AL["Random"]..")" };
    { AL["Lavanthor"].." ("..AL["Random"]..")" };
    { AL["Cyanigosa"].." ("..AL["Wave 18"]..")" };
    };
};
};