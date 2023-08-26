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
local quest = "questturnin"
local boss = "dungeonskull"

--all the map data
AtlasLoot_MapData = {

    --Classic Raids
    ["ZulGurub"] = {
        ZoneName = { BabbleZone["Zul'Gurub"], 19 };
        Location = { BabbleZone["Stranglethorn Vale"], 33 };
        LevelRange = "56-70";
        MinLevel = "50";
        PlayerLimit = "20";
        Acronym = AL["ZG"];
        MapName = "ZulGurub";
        [1] = {
            { AL["Reputation"]..": "..AL["Zandalar Tribe"] };
            { AL["Key"]..": "..AL["Mudskunk Lure"].." ("..AL["Gahz'ranka"]..")" };
            { AL["Key"]..": "..AL["Gurubashi Mojo Madness"].." ("..AL["Edge of Madness"]..")" };
            { AL["Entrance"] };
            { AL["High Priestess Jeklik"].." ("..AL["Bat"]..")" };
            { AL["High Priest Venoxis"].." ("..AL["Snake"]..")" };
            { AL["Zanza the Restless"] };
            { AL["High Priestess Mar'li"].." ("..AL["Spider"]..")" };
            { AL["Bloodlord Mandokir"].." ("..AL["Raptor"]..")" };
            { AL["Ohgan"] };
            { AL["Edge of Madness"].." ("..AL["Optional"]..")" };
            { AL["Gri'lek"].." ("..AL["Random"]..")" };
            { AL["Hazza'rah"].." ("..AL["Random"]..")" };
            { AL["Renataki"].." ("..AL["Random"]..")" };
            { AL["Wushoolay"].." ("..AL["Random"]..")" };
            { AL["Gahz'ranka"].." ("..AL["Optional"]..")" };
            { AL["High Priest Thekal"].." ("..AL["Tiger"]..")" };
            { AL["Zealot Zath"] };
            { AL["Zealot Lor'Khan"] };
            { AL["High Priestess Arlokk"].." ("..AL["Panther"]..")" };
            { AL["Jin'do the Hexxer"].." ("..AL["Undead"]..")" };
            { AL["Hakkar"] };
            { AL["Muddy Churning Waters"] };
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
            { AL["Attunement Required"] };
            { AL["Reputation"]..": "..AL["Hydraxian Waterlords"] };
            { AL["Entrance"] };
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
    ["BlackwingLair"] = {
        ZoneName = { BabbleZone["Blackwing Lair"], 2677 };
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "60-70";
        MinLevel = "60";
        PlayerLimit = "10-25";
        Acronym = AL["BWL"];
        MapName = "BlackwingLair";
        [1] = {
            { AL["Attunement Required"] };
            { AL["Entrance"] };
            { AL["Connection"] };
            { AL["Connection"] };
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
    ["TheRuinsofAhnQiraj"] = {
        ZoneName = { BabbleZone["Ruins of Ahn'Qiraj"], 3429 };
        Location = { BabbleZone["Silithus"], 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = AL["AQR"];
        MapName = "RuinsofAhnQiraj";
        [1] = {
            { AL["Reputation"]..": "..AL["Cenarion Circle"], 609 };
            { AL["Entrance"] };
            { AL["Kurinnaxx"] };
            { AL["Lieutenant General Andorov"] };
            { AL["Four Kaldorei Elites"] };
            { AL["General Rajaxx"] };
            { AL["Captain Qeez"] };
            { AL["Captain Tuubid"] };
            { AL["Captain Drenn"] };
            { AL["Captain Xurrem"] };
            { AL["Major Yeggeth"] };
            { AL["Major Pakkon"] };
            { AL["Colonel Zerran"] };
            { AL["Moam"].." ("..AL["Optional"]..")" };
            { AL["Buru the Gorger"].." ("..AL["Optional"]..")" };
            { AL["Ayamiss the Hunter"].." ("..AL["Optional"]..")" };
            { AL["Ossirian the Unscarred"] };
            { AL["Safe Room"] };
        };
    };
    ["TheTempleofAhnQiraj"] = {
        ZoneName = { BabbleZone["Temple of Ahn'Qiraj"], 3428 };
        Location = { BabbleZone["Silithus"], 1377 };
        LevelRange = "60-70";
        MinLevel = "50";
        PlayerLimit = "10-25";
        Acronym = AL["AQT"];
        MapName = "AhnQiraj";
        [1] = {
            { AL["Reputation"]..": "..AL["Brood of Nozdormu"] };
            { AL["Entrance"] };
            { AL["The Prophet Skeram"].." ("..AL["Outside"]..")" };
            { AL["The Bug Family"].." ("..AL["Optional"]..")" };
            { AL["Vem"] };
            { AL["Lord Kri"] };
            { AL["Princess Yauj"] };
            { AL["Battleguard Sartura"] };
            { AL["Fankriss the Unyielding"] };
            { AL["Viscidus"].." ("..AL["Optional"]..")" };
            { AL["Princess Huhuran"] };
            { AL["Twin Emperors"] };
            { AL["Emperor Vek'lor"] };
            { AL["Emperor Vek'nilash"] };
            { AL["Ouro"].." ("..AL["Optional"]..")" };
            { AL["Eye of C'Thun"] };
            { AL["C'Thun"] };
            { AL["Andorgos <Brood of Malygos>"] };
            { AL["Vethsera <Brood of Ysera>"] };
            { AL["Kandrostrasz <Brood of Alexstrasza>"] };
            { AL["Arygos"] };
            { AL["Caelestrasz"] };
            { AL["Merithra of the Dream"] };
        };
    };

    --Classic Dungeons

    ["BlackfathomDeeps"] = {
        ZoneName = { BabbleZone["Blackfathom Deeps"], 719 };
        Location = { BabbleZone["Ashenvale"], 331 };
        LevelRange = "20-28";
        MinLevel = "19";
        PlayerLimit = "5";
        Acronym = AL["BFD"];
        MapName = "BlackFathomDeeps";
        [1] = {
            { BabbleSubZone["The Pool of Ask'ar"], SubZone = true};
            { AL["Ghamoo-ra"], cords = {32.9,59.9}, pinType = boss};
            { AL["Lorgalis Manuscript"], cords = {33,41}, pinType = quest};
            { AL["Lady Sarevess"], cords = {12,41}, pinType = boss};
            { AL["Argent Guard Thaelrid <The Argent Dawn>"], cords = {21,74}};
            { AL["Gelihast"], cords = {53,57}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Moonshrine Sanctum"], SubZone = true};
            { AL["Lorgus Jett"].." ("..AL["Varies"]..")", cords = {46,66.5} };
            { AL["Fathom Stone"] };
            { AL["Baron Aquanis"], pinType = boss };
            { AL["Old Serra'kis"], cords = {53.4,70}, pinType = boss };
            { AL["Twilight Lord Kelris"], cords = {51,81}, pinType = boss };
            { AL["Aku'mai"], cords = {81.7,84.5}, pinType = boss };
            { AL["Morridune"] };
            { AL["Altar of the Deeps"] };
        };
        [3] = {
            { BabbleSubZone["The Forgotten Pool"], SubZone = true};
            { AL["Old Serra'kis"], cords = {59.4,31.4}, pinType = boss };
        };
    };
    ["BlackrockDepths"] = {
        ZoneName = { BabbleZone["Blackrock Depths"], 1584 };
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "52-58";
        MinLevel = "10-25";
        PlayerLimit = "5";
        Acronym = AL["BRD"];
        MapName = "BlackrockDepths";
        [1] = {
            { BabbleSubZone["Detention Block"], SubZone = true };
            { AL["Lord Roccor"], cords = {57,65} , pinType = boss};
            { AL["Kharan Mighthammer"], cords = {52,82} };
            { AL["Commander Gor'shak <Kargath Expeditionary Force>"], cords = {54,87}, pinType = quest };
            { AL["Marshal Windsor"], cords = {53,94}, pinType = quest };
            { AL["High Interrogator Gerstahn <Twilight's Hammer Interrogator>"], cords = {48,91}, pinType = boss };
            { AL["Ring of Law"], cords = {51,61}, pinType = boss };
            { AL["Anub'shiah"].." ("..AL["Random"]..")" };
            { AL["Eviscerator"].." ("..AL["Random"]..")" };
            { AL["Gorosh the Dervish"].." ("..AL["Random"]..")" };
            { AL["Grizzle"].." ("..AL["Random"]..")" };
            { AL["Hedrum the Creeper"].." ("..AL["Random"]..")" };
            { AL["Ok'thor the Breaker"].." ("..AL["Random"]..")" };
            { AL["Theldren"].." ("..AL["Summon"]..")" };
            { AL["Lefty"] };
            { AL["Malgen Longspear"] };
            { AL["Gnashjaw <Malgen Longspear's Pet>"] };
            { AL["Rotfang"] };
            { AL["Va'jashni"] };
            { AL["Houndmaster Grebmar"].." ("..AL["Lower"]..")" };
            { AL["Elder Morndeep"].." ("..AL["Lunar Festival"]..")" };
            { AL["High Justice Grimstone"] };
            { AL["Pyromancer Loregrain"], cords = {57,69}, pinType = boss };
            { AL["Monument of Franclorn Forgewright"] };
            { AL["Fineous Darkvire <Chief Architect>"], cords = {64,21} };
            { AL["Lord Incendius"], cords = {56,31}, pinType = boss };
            { AL["The Black Anvil"] };
            { AL["Bael'Gar"], cords ={26,53}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Shadowforge City"], SubZone = true };
            { AL["The Vault"], cords = {60,66}, pinType = boss };
            { AL["Warder Stilgiss"] };
            { AL["Verek"] };
            { AL["Watchman Doomgrip"] };
            { AL["Ring of Law"], cords = {51,89}, pinType = boss };
            { AL["Shadowforge Lock"], cords = {42,91} };
            { AL["General Angerforge"], cords = {36,83}, pinType = boss };
            { AL["Golem Lord Argelmach"], cords = {36,65}, pinType = boss };
            { AL["Field Repair Bot 74A"] };
            { AL["Blacksmithing Plans"] };
            { AL["The Grim Guzzler"], cords = {50,63}, pinType = boss };
            { AL["Hurley Blackbreath"] };
            { AL["Lokhtos Darkbargainer <The Thorium Brotherhood>"] };
            { AL["Mistress Nagmara"] };
            { AL["Phalanx"] };
            { AL["Plugger Spazzring"] };
            { AL["Private Rocknot"] };
            { AL["Ribbly Screwspigot"] };
            { AL["Coren Direbrew"].." ("..AL["Brewfest"]..")" };
            { AL["Griz Gutshank <Arena Vendor>"] };
            { AL["Ambassador Flamelash"], cords = {55,49}, pinType = boss };
            { AL["Panzor the Invincible"].." ("..AL["Rare"]..")", cords = {50,35}, pinType = boss };
            { AL["Blacksmithing Plans"] };
            { AL["Summoner's Tomb"], cords = {54,25}, pinType = boss };
            { AL["The Lyceum"], cords = {67,12}, pinType = boss };
            { AL["Magmus"], cords = {81,12}, pinType = boss };
            { AL["Emperor Dagran Thaurissan"], cords = {91,12}, pinType = boss };
            { AL["Princess Moira Bronzebeard <Princess of Ironforge>"] };
            { AL["High Priestess of Thaurissan"] };
            { AL["The Black Forge"], cords = {63,25} };
            { BabbleZone["Molten Core"], cords = {68,36}, pinType = quest };
            { AL["Core Fragment"] };
        };
    };
    ["BlackrockSpire"] = {
        ZoneName = { BabbleZone["Blackrock Spire"], 1583};
        Location = { BabbleZone["Searing Gorge"].." / "..BabbleZone["Burning Steppes"], 51, 46 };
        LevelRange = "54-60";
        MinLevel = "45";
        PlayerLimit = "5";
        Acronym = AL["LBRS"];
        MapName = "BlackrockSpire";
        [1] = {
            { BabbleSubZone["Tazz'Alaor"], SubZone = true };
            { AL["War Master Voone"], cords = {52,54}, pinType = boss };
            { AL["Mor Grayhoof"].." ("..AL["Summon"]..")" };
            { AL["Sixth Mosh'aru Tablet"] };
            { AL["Bijou's Belongings"] };
            { AL["Elder Stonefort"].." ("..AL["Lunar Festival"]..")" };
            { AL["Mother Smolderweb"], cords = {64,70}, pinType = boss };
            { AL["Crystal Fang"].." ("..AL["Rare"]..")" };
            { AL["Burning Felguard"].." ("..AL["Rare"]..", "..AL["Summon"]..")", cords = {43,54}, pinType = boss };
        };
        [2] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Skitterweb Tunnels"], SubZone = true };
            { AL["Shadow Hunter Vosh'gajin"], cords = {56,70}, pinType = boss };
            { AL["Fifth Mosh'aru Tablet"] };
        };
        [3] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Hordemar City"], SubZone = true };
            { AL["Vaelan"].." ("..AL["Upper"]..")", cords = {52,41}, pinType = boss };
            { AL["Warosh <The Cursed>"].." ("..AL["Wanders"]..")", cords = {61,43}, pinType = boss };
            { AL["Bijou"], cords = {63,56} };
            { AL["Roughshod Pike"] , cords = {67,58}};
            { AL["Spirestone Butcher"].." ("..AL["Rare"]..")" , cords = {51,58}, pinType = boss};
            { AL["Highlord Omokk"], cords = {39,60}, pinType = boss };
            { AL["Spirestone Battle Lord"].." ("..AL["Rare"]..")" };
            { AL["Spirestone Lord Magus"].." ("..AL["Rare"]..")" };
        };
        [4] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Hall of Blackhand"], SubZone = true };
            { AL["Human Remains"].." ("..AL["Lower"]..")", cords = {43,56}};
            { AL["Unfired Plate Gauntlets"].." ("..AL["Lower"]..")" };
            { AL["Urok's Tribute Pile"], cords = {46,55}, pinType = boss };
            { AL["Urok Doomhowl"].." ("..AL["Summon"]..")" };
            { AL["Bannok Grimaxe <Firebrand Legion Champion>"].." ("..AL["Rare"]..")", cords = {46,65}, pinType = boss };
        };
        [5] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Lower"]..")", Zone = true };
            { BabbleSubZone["Dragonspire Hall"], SubZone = true };
            { AL["Quartermaster Zigris <Bloodaxe Legion>"], cords = {55,85}, pinType = boss };
            { AL["Halycon"], cords = {38,85} };
            { AL["Gizrul the Slavener"] };
            { AL["Ghok Bashguud <Bloodaxe Champion>"].." ("..AL["Rare"]..")", cords = {35,68}, pinType = boss };
        };
        [6] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")", Zone = true };
            { BabbleSubZone["The Rookery"], SubZone = true };
            { AL["Pyroguard Emberseer"], cords = {31,27}, pinType = boss };
            { AL["Solakar Flamewreath"], cords = {39,39}, pinType = boss };
            { AL["Father Flame"] };
            { AL["Darkstone Tablet"], cords = {32,42} };
            { AL["Doomrigger's Coffer"] };
            { AL["Overlord Wyrmthalak"], cords = {58,64}, pinType = boss };
        };
        [7] = {
            { BabbleZone["Blackrock Spire"].." ("..AL["Upper"]..")", Zone = true };
            { BabbleSubZone["Blackrock Stadium"], SubZone = true };
            { AL["Jed Runewatcher <Blackhand Legion>"].." ("..AL["Rare"]..")", cords = {38,24}, pinType = boss };
            { AL["Goraluk Anvilcrack <Blackhand Legion Armorsmith>"], cords = {33,27}, pinType = boss };
            { AL["Warchief Rend Blackhand"], cords = {49,27}, pinType = boss };
            { AL["Gyth <Rend Blackhand's Mount>"] };
            { AL["Awbee"], cords = {49,36} };
            { AL["The Beast"], cords = {64,32}, pinType = boss };
            { AL["Lord Valthalak"].." ("..AL["Summon"]..")" };
            { AL["Finkle Einhorn"] };
            { AL["General Drakkisath"], cords = {36,50}, pinType = boss };
            { AL["Drakkisath's Brand"] };
            { BabbleZone["Blackwing Lair"], cords = {55,22} };
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
            { BabbleSubZone["The Deadmines"], SubZone = true };
            { AL["Rhahk'Zor <The Foreman>"], cords = {36,62}, pinType = boss };
            { AL["Miner Johnson"].." ("..AL["Rare"]..")", cords = {51,51}, pinType = boss };
            { AL["Sneed <Lumbermaster>"], cords = {51,86}, pinType = boss };
            { AL["Sneed's Shredder <Lumbermaster>"] };
            { AL["Gilnid <The Smelter>"], cords = {61,57}, pinType = boss };

        };
        [2] = {
            { BabbleSubZone["Ironclad Cove"], SubZone = true };
            { AL["Defias Gunpowder"], cords = {20,55} };
            { AL["Captain Greenskin"], cords = {61,38}, pinType = boss };
            { AL["Edwin VanCleef <Defias Kingpin>"], cords = {61,46}, pinType = boss };
            { AL["Mr. Smite <The Ship's First Mate>"], cords = {56,26}, pinType = boss };
            { AL["Cookie <The Ship's Cook>"], cords = {68,43}, pinType = boss };
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
            { AL["Gordok Commons"].." (North)" , SubZone = true};
            { BabbleZone["Library"].." "..AL["Entrance"] };
            { AL["Guard Mol'dar"], cords = {69.9,76}, pinType = boss };
            { AL["Stomper Kreeg <The Drunk>"], cords = {61,68}, pinType = boss };
            { AL["Guard Fengus"], cords = {42.9,77.6}, pinType = boss };
            { AL["Knot Thimblejack"] };
            { AL["Guard Slip'kik"], cords = {26.5,57.8}, pinType = boss };
            { AL["Captain Kromcrush"], cords = {31.8,51.4}, pinType = boss };
            { AL["King Gordok"], cords = {32,27.7}, pinType = boss };
            { AL["Cho'Rush the Observer"], cords = {31.4,26.2} };
        };
        [2] = {
            { BabbleSubZone["Capital Gardens"].." (West)" , SubZone = true};
            { AL["Pylons"], cords = {70, 51}};
            { AL["Pylons"], cords = {40, 22}};
            { AL["Pylons"], cords = {36, 80}};
            { AL["Illyanna Ravenoak"], cords = {20,78}, pinType = boss };
            { AL["Tendris Warpwood"], cords = {33.4,53.5}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Court of the Highborne"].." (West)" , SubZone = true};
            { AL["Shen'dralar Ancient"] };
            { AL["Magister Kalendris"], cords = {32,45.3}, pinType = boss };
        };
        [4] = {
            { BabbleSubZone["Prison of Immol'thar"].." (West)", SubZone = true };
            { AL["Ancient Equine Spirit"] };
            { AL["Ferra"] };
            { AL["Tsu'zee"].." ("..AL["Rare"]..")", cords = {68.3,23.9}, pinType = boss };
            { AL["Immol'thar"], cords = {35.2,58.1}, pinType = boss };
            { AL["Lord Hel'nurath"].." ("..AL["Summon"]..")", cords = {14.9,55.7}, pinType = boss };
            { AL["Prince Tortheldrin"], cords = {61.4,15.1}, pinType = boss };
            { BabbleZone["Library"] };
            { AL["Falrin Treeshaper"] };
            { AL["Lorekeeper Lydros"] };
            { AL["Lorekeeper Javon"] };
            { AL["Lorekeeper Kildrath"] };
            { AL["Lorekeeper Mykos"] };
            { AL["Shen'dralar Provisioner"] };
            { AL["Skeletal Remains of Kariel Winthalus"] };
            { AL["Pylons"], cords = {44, 35}};
            { AL["Pylons"], cords = {34, 81}};
        };
        [5] = {
            { BabbleSubZone["Warpwood Quarter"].." (East)", SubZone = true };
            { AL["Zevrim Thornhoof"] };
            { AL["Hydrospawn"], cords = {41,49.2}, pinType = boss };
            { AL["Lethtendris"], cords = {44.5,46.6}, pinType = boss };
            { AL["Pimgib"] };
        };
        [6] = {
            { BabbleSubZone["The Shrine of Eldretharr"].." (East)", SubZone = true };
            { AL["Old Ironbark"], cords = {40,68} };
            { AL["Alzzin the Wildshaper"], cords = {57.3,28.9}, pinType = boss };
            { AL["Isalien"].." ("..AL["Summon"]..")", pinType = boss };
        };
    };
    ["Gnomeregan"] = {
        ZoneName = { BabbleZone["Gnomeregan"], 721 };
        Location = { BabbleZone["Dun Morogh"], 1 };
        LevelRange = "24-32";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = AL["Gnome"];
        MapName = "Gnomeregan";
        [1] = {
            { BabbleSubZone["The Hall of Gears"], SubZone = true };
            { AL["Blastmaster Emi Shortfuse"], cords = {77,68}, pinType = boss };
            { AL["Grubbis"] };
            { AL["Chomper"] };
            { AL["Viscous Fallout"], cords = {50,50}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["The Dormitory"], SubZone = true };
            { AL["Clean Room"] , cords = {64,64}};
            { AL["Tink Sprocketwhistle <Engineering Supplies>"] };
            { AL["The Sparklematic 5200"] };
            { AL["Mail Box"] };
            { AL["Kernobee"], cords = {72,68} };
            { AL["Alarm-a-bomb 2600"] };
            { AL["Matrix Punchograph 3005-B"] };
            { AL["Electrocutioner 6000"] , cords = {25,69}, pinType = boss};
            { AL["Matrix Punchograph 3005-C"] };
        };
        [3] = {
            { BabbleSubZone["Launch Bay"], SubZone = true };
            { AL["Crowd Pummeler 9-60"].." ("..AL["Upper"]..")", cords = {44,87}, pinType = boss };
            { AL["Matrix Punchograph 3005-D"] };
        };
        [4] = {
            { BabbleSubZone["Tinkers' Court"], SubZone = true };
            { AL["Dark Iron Ambassador"], cords = {29,48} };
            { AL["Mekgineer Thermaplugg"], cords = {32,30}, pinType = boss };
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
            { AL["Caverns of Maraudon"], SubZone = true };
            { AL["Veng <The Fifth Khan>"], cords = {60,24} };
            { AL["Noxxion"], cords = {36,15}, pinType = boss };
            { AL["Razorlash"], cords = {18,33}, pinType = boss };
            { AL["Maraudos <The Fourth Khan>"], cords = {53,74} };
            { AL["Lord Vyletongue"], cords = {37,72}, pinType = boss };
            { AL["Meshlok the Harvester"].." ("..AL["Rare"]..")" };
            { AL["Celebras the Cursed"], cords = {10,65}, pinType = boss };
        };
        [2] = {
            { AL["Zaetar's Grave"], SubZone = true };
            { AL["Celebras the Cursed"], cords = {25,15}, pinType = boss };
            { AL["Landslide"], cords = {40.6,48.2} };
            { AL["Tinkerer Gizlock"], cords = {48.4,68.6} };
            { AL["Rotgrip"], cords = {33.3,77.1}, pinType = boss };
            { AL["Princess Theradras"], cords = {24.2,80.4}, pinType = boss };
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
        MapName = "ragefire";
        [1] = {
            { BabbleZone["Ragefire Chasm"], SubZone = true };
            { AL["Maur Grimtotem"] };
            { AL["Oggleflint <Ragefire Chieftain>"], cords = {56.2,38.6}, pinType = boss };
            { AL["Taragaman the Hungerer"], cords = {40.9,59}, pinType = boss };
            { AL["Jergosh the Invoker"], cords = {38.9,82.9}, pinType = boss };
            { AL["Zelemar the Wrathful"].." ("..AL["Summon"]..")" };
            { AL["Bazzalan"], cords = {42.4,85.4}, pinType = boss };
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
            { BabbleZone["Razorfen Downs"], SubZone = true };
            { AL["Tuten'kash"], cords = {67.1,41.2}, pinType = boss };
            { AL["Henry Stern"] };
            { AL["Belnistrasz"] };
            { AL["Sah'rhee"] };
            { AL["Mordresh Fire Eye"], cords = {85.8,45.7}, pinType = boss };
            { AL["Glutton"], cords = {38.5,45.2}, pinType = boss};
            { AL["Ragglesnout"].." ("..AL["Rare"]..", "..AL["Varies"]..")" };
            { AL["Amnennar the Coldbringer"], cords = {45,59.1}, pinType = boss };
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
            { AL["Entrance"] };
            { AL["Roogug"], cords = {65,48}, pinType = boss };
            { AL["Aggem Thorncurse <Death's Head Prophet>"], cords = {81,53}, pinType = boss };
            { AL["Death Speaker Jargba <Death's Head Captain>"], cords = {88,41}, pinType = boss };
            { AL["Overlord Ramtusk"], cords = {56,30}, pinType = boss };
            { AL["Razorfen Spearhide"] };
            { AL["Agathelos the Raging"], cords = {9,68}, pinType = boss };
            { AL["Blind Hunter"].." ("..AL["Rare"]..")", cords = {11,31} };
            { AL["Charlga Razorflank <The Crone>"], cords = {22,31}, pinType = boss };
            { AL["Willix the Importer"] };
            { AL["Heralath Fallowbrook"] };
            { AL["Earthcaller Halmgar"].." ("..AL["Rare"]..")", cords = {49,45} };
        };
    };
    ["ScarletMonastery"] = {
        ZoneName = { BabbleZone["Scarlet Monastery"], 796 };
        Location = { BabbleZone["Tirisfal Glades"], 85 };
        LevelRange = "33-40";
        MinLevel = "20";
        PlayerLimit = "5";
        Acronym = AL["SM"];
        MapName = "ScarletMonastery";
        [1] = {
            { BabbleZone["Graveyard"], SubZone = true };
            { AL["Interrogator Vishas"], cords = {72,60}, pinType = boss };
            { AL["Vorrel Sengutz"] };
            { AL["Pumpkin Shrine"].." ("..AL["Hallow's End"]..")", cords = {36,63} };
            { AL["Headless Horseman"].." ("..AL["Summon"]..")" };
            { AL["Bloodmage Thalnos"], cords = {24,56}, pinType = boss };
            { AL["Ironspine"].." ("..AL["Rare"]..")" };
            { AL["Azshir the Sleepless"].." ("..AL["Rare"]..")" };
            { AL["Fallen Champion"].." ("..AL["Rare"]..")" };
        };
        [2] = {
            { BabbleZone["Library"], SubZone = true };
            { AL["Houndmaster Loksey"], cords = {30,85}, pinType = boss };
            { AL["Arcanist Doan"], cords = {83,77}, pinType = boss };
        };
        [3] = {
            { BabbleZone["Armory"], SubZone = true };
            { AL["Herod <The Scarlet Champion>"], cords = {79,11}, pinType = boss };
        };
        [4] = {
            { BabbleZone["Cathedral"], SubZone = true };
            { AL["High Inquisitor Fairbanks"], cords = {56,26}, pinType = boss };
            { AL["Scarlet Commander Mograine"], cords = {49,29}, pinType = boss };
            { AL["High Inquisitor Whitemane"], cords = {48,17}, pinType = boss };
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
            { BabbleSubZone["The Reliquary"], SubZone = true };
            { AL["Blood Steward of Kirtonos"] , cords = {82,46}, pinType = boss};
            { AL["Blood of Innocents"].." ("..AL["Kirtonos the Herald"]..")" };
            { AL["The Deed to Southshore"] };
        };
        [2] = {
            { BabbleSubZone["Chamber of Summoning"], SubZone = true };
            { AL["Kirtonos the Herald"].." ("..AL["Summon"]..")" , cords = {49,12}, pinType = boss};
            { AL["The Deed to Tarren Mill"], cords = {31,57}, pinType = quest };
            { AL["Torch Lever"] , cords = {49,55}};
            { AL["Secret Chest"] };
            { AL["Marduk Blackpool"] , cords = {49,66}, pinType = boss};
            { AL["Vectus"] };
        };
        [3] = {
            { AL["The Headmaster's Study"], SubZone = true };
            { AL["Jandice Barov"] , cords = {54,15}, pinType = boss};
            { AL["Instructor Malicia"] , cords = {73,79}, pinType = boss};
            { AL["Doctor Theolen Krastinov <The Butcher>"] , cords = {89,46}, pinType = boss};
            { AL["Lorekeeper Polkelt"] , cords = {73,24}, pinType = boss};
            { AL["Rattlegore"] , cords = {33,65}, pinType = boss};
            { AL["Death Knight Darkreaver"].." ("..AL["Summon"]..")" };
            { AL["Darkmaster Gandling"] , cords = {73,47}, pinType = boss};
        };
        [4] = {
            { BabbleSubZone["Barov Family Vault"], SubZone = true };
            { AL["Ras Frostwhisper"] , cords = {41,82}, pinType = boss};
            { AL["The Deed to Brill"] };
            { AL["Alchemy Lab"] };
            { AL["Kormok"].." ("..AL["Summon"]..")" };
            { AL["The Ravenian"] , cords = {67,49}, pinType = boss};
            { AL["Lord Alexei Barov"] , cords = {79,30}, pinType = boss};
            { AL["The Deed to Caer Darrow"] };
            { AL["Lady Illucia Barov"], cords = {67,16}, pinType = boss};
            { AL["Darkmaster Gandling"] , cords = {67,30}, pinType = boss};
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
            { AL["The Courtyard"], SubZone = true };
            { AL["Rethilgore <The Cell Keeper>"], cords = {67,73}, pinType = boss};
            { AL["Sorcerer Ashcrombe"] };
            { AL["Deathstalker Adamant"] };
            { AL["Landen Stilwell"] };
            { AL["Investigator Fezzen Brasstacks"].." ("..AL["Love is in the Air"]..")", cords = {54,66} };
            { AL["Deathstalker Vincent"], cords =  {57,60}};
            { AL["Apothecary Trio"].." ("..AL["Love is in the Air"]..")", cords = {39,51} };
            { AL["Apothecary Hummel <Crown Chemical Co.>"] };
            { AL["Apothecary Baxter <Crown Chemical Co.>"] };
            { AL["Apothecary Frye <Crown Chemical Co.>"] };
            { AL["Fel Steed"], cords = {35,58} };
            { AL["Jordan's Hammer"] };
            { AL["Crate of Ingots"] };
            { AL["Commander Springvale"] , cords = {27,61}, pinType = boss};      
        };
        [2] = {
            { AL["Dining Hall"], SubZone = true };
            { AL["Razorclaw the Butcher"] , cords = {48,28}, pinType = boss};
            { AL["Baron Silverlaine"] , cords = {30,77}, pinType = boss};
        };
        [3] = {
            { AL["The Vacant Den"], SubZone = true };
        };
        [4] = {
            { AL["Lower Observatory"], SubZone = true };
            { AL["Fenrus the Devourer"], cords = {53,54}, pinType = boss};
            { AL["Arugal's Voidwalker"] };
            { AL["The Book of Ur"] };
        };
        [5] = {
            { AL["Upper Observatory"], SubZone = true };
        };
        [6] = {
            { AL["Lord Godfrey's Chamber"], SubZone = true };
            { AL["Wolf Master Nandos"] , cords = {57,62}, pinType = boss};
            { AL["Archmage Arugal"] , cords = {65,20}, pinType = boss};
        };
        [7] = {
            { AL["The Wall Walk"], SubZone = true };
            { AL["Odo the Blindwatcher"] , cords = {55,81}, pinType = boss};
            { AL["Deathsworn Captain"].." ("..AL["Rare"]..")" , cords = {59,53}, pinType = boss};
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
        { BabbleZone["The Stockade"], SubZone = true };
        { AL["Targorr the Dread"], cords = {50,25}, pinType = boss };
        { AL["Kam Deepfury"], cords = {69,30} , pinType = boss};
        { AL["Hamhock"], cords = {78,46} , pinType = boss};
        { AL["Bazil Thredd"], cords = {86,51} , pinType = boss};
        { AL["Dextren Ward"], cords = {22,26} , pinType = boss};
        { AL["Bruegal Ironknuckle"].." ("..AL["Rare"]..")", cords = {30,43} , pinType = boss};
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
            { AL["Crusader's Square"], SubZone = true  };
            { AL["Crusaders' Square Postbox"] , cords = {36,35}};
            { AL["Market Row Postbox"], cords = {69,28} };
            { AL["Festival Lane Postbox"] , cords = {80,29}};
            { AL["King's Square Postbox"] , cords = {64,53}};
            { AL["Fras Siabi's Postbox"] , cords = {55,69}};
            { AL["3rd Box Opened"]..": "..AL["Postmaster Malown"] };
            { AL["Skul"].." ("..AL["Rare"]..")", cords = {80,43}, pinType = boss};
            { AL["Stratholme Courier"] };
            { AL["Fras Siabi"] };
            { AL["Atiesh <Hand of Sargeras>"].." ("..AL["Summon"]..")" , cords = {86,38}};
            { AL["Hearthsinger Forresten"].." ("..AL["Varies"]..")", cords = {81,34}, pinType = boss};
            { AL["The Unforgiven"], cords = {73,23}, pinType = boss};
            { AL["Elder Farwhisper"].." ("..AL["Lunar Festival"]..")", cords = {79,17}};
            { AL["Timmy the Cruel"] , cords = {35,26}, pinType = boss};
            { AL["Malor the Zealous"], cords = {30,42}, pinType = boss};
            { AL["Malor's Strongbox"]};
            { AL["Crimson Hammersmith"].." ("..AL["Summon"]..")", cords = {13,48} };
            { AL["Blacksmithing Plans"] };
            { AL["Cannon Master Willey"], cords = {5,51}, pinType = boss};
            { AL["Archivist Galford"], cords = {28,74}, pinType = boss};
            { AL["Grand Crusader Dathrohan"], cords = {21,82}, pinType = boss};
            { AL["Balnazzar"] };
            { AL["Sothos"].." ("..AL["Summon"]..")" };
            { AL["Jarien"].." ("..AL["Summon"]..")" };
        };
        [2] = {
            { BabbleSubZone["The Gauntlet"], SubZone = true  };
            { AL["Elders' Square Postbox"], cords = {67,76}};
            { AL["3rd Box Opened"]..": "..AL["Postmaster Malown"] };
            { AL["Magistrate Barthilas"].." ("..AL["Varies"]..")", cords = {66,77}, pinType = boss};
            { AL["Aurius"], cords = {68,74}, pinType = boss};
            { AL["Stonespine"].." ("..AL["Rare"]..")" , cords = {70,51}, pinType = boss};
            { AL["Baroness Anastari"] , cords = {76,46}, pinType = boss};
            { AL["Black Guard Swordsmith"].." ("..AL["Summon"]..")" };
            { AL["Blacksmithing Plans"] };
            { AL["Nerub'enkan"], cords = {58,48}, pinType = boss};
            { AL["Maleki the Pallid"] , cords = {67,22}, pinType = boss};
            { AL["Magistrate Barthilas"].." ("..AL["Varies"]..")", cords = {57,16}, pinType = boss};
            { AL["Ramstein the Gorger"] , cords = {45,21}, pinType = boss};
            { AL["Baron Rivendare"] , cords = {40,21}, pinType = boss};
            { AL["Ysida Harmon"] };


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
            { BabbleZone["Sunken Temple"] , SubZone = true};
            { AL["Dreamscythe"] , cords = {50,41}, pinType = boss};
            { AL["Weaver"] };
            { AL["Avatar of Hakkar"], cords = {26,46}, pinType = boss};
            { AL["Jammal'an the Prophet"], cords = {73,39}, pinType = boss};
            { AL["Ogom the Wretched"] };
            { AL["Morphaz"] , cords = {50,87}, pinType = boss};
            { AL["Hazzas"] };
            { AL["Shade of Eranikus"] , cords = {68,87}, pinType = boss};
            { AL["Essence Font"] };
            { AL["Upper Ring"] };
            { AL["Spawn of Hakkar"].." ("..AL["Rare"]..")" };
            { AL["Elder Starsong"].." ("..AL["Lunar Festival"]..")" };
            { "1'-6') "..AL["Statue Activation Order"] };
            { "7') "..AL["Atal'ai Defenders"] };
            { AL["Gasher"] };
            { AL["Loro"] };
            { AL["Hukku"] };
            { AL["Zolo"] };
            { AL["Mijan"] };
            { AL["Zul'Lor"] };
            { AL["Lower Pool"]};
            { AL["Altar of Hakkar"] };
            { AL["Atal'alarion <Guardian of the Idol>"] };
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
            { BabbleSubZone["Hall of the Keepers"], SubZone = true  };
            { AL["Key"]..": "..AL["Staff of Prehistoria"].." ("..AL["Ironaya"]..")" };
            { AL["Baelog"] , cords = {59,93}, pinType = boss};
            { AL["Eric \"The Swift\""] };
            { AL["Olaf"] };
            { AL["Baelog's Chest"] };
            { AL["Conspicuous Urn"] };
            { AL["Remains of a Paladin"], cords = {53,64}};
            { AL["Revelosh"] , cords = {54,72}, pinType = boss};
            { AL["Ironaya"] , cords = {37,74}, pinType = boss};
            { AL["Obsidian Sentinel"] , cords = {29,60}, pinType = boss};
            { AL["Ancient Stone Keeper"] , cords = {48,45}, pinType = boss};
            { AL["Galgann Firehammer"] , cords = {27,33}, pinType = boss};
            { AL["Tablet of Will"] };
            { AL["Shadowforge Cache"] };
            { AL["Grimlok <Stonevault Chieftain>"] , cords = {22,26}, pinType = boss};
            { AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")" , cords = {42,17}, pinType = boss};
            { AL["The Discs of Norgannon"].." ("..AL["Lower"]..")" , cords = {40,9}};
            { AL["Ancient Treasure"].." ("..AL["Lower"]..")" };

        };
        [2] = {
            { BabbleSubZone["Khaz'Goroth's Seat"], SubZone = true  };
            { AL["Archaedas <Ancient Stone Watcher>"].." ("..AL["Lower"]..")" , cords = {55,52}, pinType = boss};
            { AL["The Discs of Norgannon"].." ("..AL["Lower"]..")" , cords = {50,34}};
            { AL["Ancient Treasure"].." ("..AL["Lower"]..")" };
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
        { AL["Entrance"] };
        { AL["Disciple of Naralex"] };
        { AL["Lord Cobrahn <Fanglord>"] };
        { AL["Lady Anacondra <Fanglord>"].." ("..AL["Varies"]..")" };
        { AL["Kresh"].." ("..AL["Varies"]..")" };
        { AL["Lord Pythas <Fanglord>"] };
        { AL["Skum"] };
        { AL["Lord Serpentis <Fanglord>"].." ("..AL["Upper"]..")" };
        { AL["Verdan the Everliving"].." ("..AL["Upper"]..")" };
        { AL["Mutanus the Devourer"] };
        { AL["Naralex"] };
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
        { AL["Entrance"] };
        { AL["Antu'sul <Overseer of Sul>"] };
        { AL["Theka the Martyr"] };
        { AL["Witch Doctor Zum'rah"] };
        { AL["Zul'Farrak Dead Hero"] };
        { AL["Nekrum Gutchewer"] };
        { AL["Shadowpriest Sezz'ziz"] };
        { AL["Dustwraith"].." ("..AL["Rare"]..")" };
        { AL["Sergeant Bly"] };
        { AL["Weegli Blastfuse"] };
        { AL["Murta Grimgut"] };
        { AL["Raven"] };
        { AL["Oro Eyegouge"] };
        { AL["Sandfury Executioner"] };
        { AL["Hydromancer Velratha"] };
        { AL["Gahz'rilla"].." ("..AL["Summon"]..")" };
        { AL["Elder Wildmane"].." ("..AL["Lunar Festival"]..")" };
        { AL["Chief Ukorz Sandscalp"] };
        { AL["Ruuzlu"] };
        { AL["Zerillis"].." ("..AL["Rare"]..", "..AL["Wanders"]..")" };
        { AL["Sandarr Dunereaver"].." ("..AL["Rare"]..")" };
        };
    };

    --************************************************
    -- Burning Crusade Instances
    --************************************************

    -- Raids
    ["Karazhan"] = {
        ZoneName = { BabbleZone["Karazhan"].." [A] ("..AL["Start"]..")", 3457 };
        Location = { BabbleZone["Deadwind Pass"], 41 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["Kara"];
        MapName = "Karazhan";
        [1] = {
        { AL["Reputation"]..": "..AL["The Violet Eye"] };
        { AL["Key"]..": "..AL["The Master's Key"] };
        { AL["Entrance"].." ("..AL["Front"]..")" };
        { AL["Staircase to the Ballroom"].." ("..AL["Moroes <Tower Steward>"]..")" };
        { AL["Stairs to Upper Stable"] };
        { "D) "..AL["Ramp to the Guest Chambers"].." ("..AL["Maiden of Virtue"]..")" };
        { "E) "..AL["Stairs to Opera House Orchestra Level"] };
        { "F) "..AL["Ramp from Mezzanine to Balcony"] };
        { "G) "..AL["Entrance"].." ("..AL["Back"]..")" };
        { "H) "..AL["Connection to Master's Terrace"].." ("..AL["Nightbane"]..")" };
        { "I) "..AL["Path to the Broken Stairs"] };
        { AL["Hastings <The Caretaker>"] };
        { AL["Servant Quarters"] };
        { AL["Hyakiss the Lurker"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
        { AL["Rokad the Ravager"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
        { AL["Shadikith the Glider"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
        { AL["Berthold <The Doorman>"] };
        { AL["Calliard <The Nightman>"] };
        { AL["Attumen the Huntsman"] };
        { AL["Midnight"] };
        { AL["Koren <The Blacksmith>"] };
        { AL["Moroes <Tower Steward>"] };
        { AL["Baroness Dorothea Millstipe"].." ("..AL["Random"]..", "..AL["Shadow Priest"]..")" };
        { AL["Lady Catriona Von'Indi"].." ("..AL["Random"]..", "..AL["Holy Priest"]..")" };
        { AL["Lady Keira Berrybuck"].." ("..AL["Random"]..", "..AL["Holy Paladin"]..")" };
        { AL["Baron Rafe Dreuger"].." ("..AL["Random"]..", "..AL["Retribution Paladin"]..")" };
        { AL["Lord Robin Daris"].." ("..AL["Random"]..", "..AL["Arms Warrior"]..")" };
        { AL["Lord Crispin Ference"].." ("..AL["Random"]..", "..AL["Protection Warrior"]..")" };
        { AL["Bennett <The Sergeant at Arms>"] };
        { AL["Ebonlocke <The Noble>"] };
        { AL["Keanna's Log"] };
        { AL["Maiden of Virtue"] };
        { AL["Sebastian <The Organist>"] };
        { AL["Barnes <The Stage Manager>"] };
        { AL["The Opera Event"] };
        { AL["Red Riding Hood"].." ("..AL["Random"]..")" };
        { AL["The Big Bad Wolf"] };
        { AL["Wizard of Oz"].." ("..AL["Random"]..")" };
        { AL["Dorothee"] };
        { AL["Tito"] };
        { AL["Strawman"] };
        { AL["Tinhead"] };
        { AL["Roar"] };
        { AL["The Crone"] };
        { AL["Romulo and Julianne"].." ("..AL["Random"]..")" };
        { AL["Romulo"] };
        { AL["Julianne"] };
        { AL["The Master's Terrace"] };
        { AL["Nightbane"].." ("..AL["Summon"]..")" };
        };
        [2] = {
        { AL["Reputation"]..": "..AL["The Violet Eye"] };
        { AL["Key"]..": "..AL["The Master's Key"] };
        { "I) "..AL["Path to the Broken Stairs"] };
        { "J) "..AL["Broken Stairs"] };
        { "K) "..AL["Ramp to Guardian's Library"].." ("..AL["Shade of Aran"]..")" };
        { "L) "..AL["Suspicious Bookshelf"].." ("..AL["Terestian Illhoof"]..")" };
        { "M) "..AL["Ramp up to the Celestial Watch"].." ("..AL["Netherspite"]..")" };
        { AL["Ramp down to the Gamesman's Hall"].." ("..AL["Chess Event"]..")" };
        { "N) "..AL["Ramp to Medivh's Chamber"] };
        { "O) "..AL["Spiral Stairs to Netherspace"].." ("..AL["Prince Malchezaar"]..")" };
        { AL["The Curator"] };
        { AL["Wravien <The Mage>"] };
        { AL["Gradav <The Warlock>"] };
        { AL["Kamsis <The Conjurer>"] };
        { AL["Terestian Illhoof"] };
        { AL["Kil'rek"].." ("..AL["Imp"]..")" };
        { AL["Shade of Aran"] };
        { AL["Netherspite"] };
        { AL["Ythyar"].." ("..AL["Repair"]..", "..AL["Rewards"]..")" };
        { AL["Echo of Medivh"] };
        { AL["Dust Covered Chest"].." ("..AL["Chess Event"]..")" };
        { AL["Prince Malchezaar"] };
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
        { AL["Entrance"] };
        { AL["Magtheridon"] };
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
        { AL["Entrance"] };
        { AL["High King Maulgar <Lord of the Ogres>"] };
        { AL["Kiggler the Crazed"].." ("..AL["Shaman"]..")" };
        { AL["Blindeye the Seer"].." ("..AL["Priest"]..")" };
        { AL["Olm the Summoner"].." ("..AL["Warlock"]..")" };
        { AL["Krosh Firehand"].." ("..AL["Mage"]..")" };
        { AL["Gruul the Dragonkiller"] };
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
        { AL["Reputation"]..": "..AL["Cenarion Expedition"] };
        { AL["Entrance"] };
        { AL["Hydross the Unstable <Duke of Currents>"] };
        { AL["The Lurker Below"] };
        { AL["Leotheras the Blind"] };
        { AL["Fathom-Lord Karathress"] };
        { AL["Seer Olum"] };
        { AL["Morogrim Tidewalker"] };
        { AL["Lady Vashj <Coilfang Matron>"] };
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
        { AL["Reputation"]..": "..AL["The Sha'tar"] };
        { AL["Entrance"] };
        { AL["Al'ar <Phoenix God>"] };
        { AL["Void Reaver"] };
        { AL["High Astromancer Solarian"] };
        { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"] };
        { AL["Thaladred the Darkener <Advisor to Kael'thas>"].." ("..AL["Warrior"]..")" };
        { AL["Master Engineer Telonicus <Advisor to Kael'thas>"].." ("..AL["Hunter"]..")" };
        { AL["Grand Astromancer Capernian <Advisor to Kael'thas>"].." ("..AL["Mage"]..")" };
        { AL["Lord Sanguinar <The Blood Hammer>"].." ("..AL["Paladin"]..")" };
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
        { AL["Entrance"] };
        { AL["Harrison Jones"] };
        { AL["Nalorakk <Bear Avatar>"] };
        { AL["Tanzar"] };
        { AL["The Map of Zul'Aman"] };
        { AL["Akil'Zon <Eagle Avatar>"] };
        { AL["Harkor"] };
        { AL["Jan'Alai <Dragonhawk Avatar>"] };
        { AL["Kraz"] };
        { AL["Halazzi <Lynx Avatar>"] };
        { AL["Ashli"] };
        { AL["Zungam"] };
        { AL["Hex Lord Malacrass"] };
        { AL["Thurg"].." ("..AL["Random"]..")" };
        { AL["Gazakroth"].." ("..AL["Random"]..")" };
        { AL["Lord Raadan"].." ("..AL["Random"]..")" };
        { AL["Darkheart"].." ("..AL["Random"]..")" };
        { AL["Alyson Antille"].." ("..AL["Random"]..")" };
        { AL["Slither"].." ("..AL["Random"]..")" };
        { AL["Fenstalker"].." ("..AL["Random"]..")" };
        { AL["Koragg"].." ("..AL["Random"]..")" };
        { AL["Zul'jin"] };
        { AL["Forest Frogs"] };
        { AL["Kyren <Reagents>"] };
        { AL["Gunter <Food Vendor>"] };
        { AL["Adarrah"] };
        { AL["Brennan"] };
        { AL["Darwen"] };
        { AL["Deez"] };
        { AL["Galathryn"] };
        { AL["Mitzi"] };
        { AL["Mannuth"] };
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
        { AL["Battle for Mount Hyjal"] };
        { AL["Reputation"]..": "..AL["The Scale of the Sands"] };
        { AL["Alliance Base"] };
        { AL["Lady Jaina Proudmoore"], cords = {10.6,63.7} };
        { AL["Horde Encampment"] };
        { AL["Thrall <Warchief>"], cords = {48,41.7} };
        { AL["Night Elf Village"] };
        { AL["Tyrande Whisperwind\n<High Priestess of Elune>"], cords = {74.3,57.7} };
        { AL["Rage Winterchill"], cords = {15.6,58.7} };
        { AL["Anetheron"], cords = {15.6,60.7} };
        { AL["Kaz'rogal"], cords = {34.4,37.7} };
        { AL["Azgalor"], cords = {33.1,40.5} };
        { AL["Archimonde"], cords = {76.8,33.8} };
        { "?) "..AL["Indormi <Keeper of Ancient Gem Lore>"] };
        { AL["Tydormu <Keeper of Lost Artifacts>"] };
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
        { AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
        { AL["Entrance"] };
        { AL["Towards Reliquary of Souls"] };
        { AL["Towards Teron Gorefiend"] };
        { "D) "..AL["Towards Illidan Stormrage"] };
        { AL["Spirit of Olum"] };
        { AL["High Warlord Naj'entus"] };
        { AL["Supremus"] };
        { AL["Shade of Akama"] };
        { AL["Spirit of Udalo"] };
        { AL["Aluyen <Reagents>"] };
        { AL["Okuno <Ashtongue Deathsworn Quartermaster>"] };
        { AL["Seer Kanai"] };
        };
        [2] = {
        { AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
        { AL["Entrance"] };
        { AL["Entrance"] };
        { AL["Gurtogg Bloodboil"] };
        { AL["Reliquary of Souls"] };
        { AL["Essence of Suffering"] };
        { AL["Essence of Desire"] };
        { AL["Essence of Anger"] };
        { AL["Teron Gorefiend"] };
        };
        [3] = {
        { AL["Reputation"]..": "..AL["Ashtongue Deathsworn"] };
        { "D) "..AL["Entrance"] };
        { AL["Mother Shahraz"] };
        { AL["The Illidari Council"] };
        { AL["Lady Malande"].." ("..AL["Priest"]..")" };
        { AL["Gathios the Shatterer"].." ("..AL["Paladin"]..")" };
        { AL["High Nethermancer Zerevor"].." ("..AL["Mage"]..")" };
        { AL["Veras Darkshadow"].." ("..AL["Rogue"]..")" };
        { AL["Illidan Stormrage <The Betrayer>"] };
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
        { AL["Entrance"] };
        { AL["Kalecgos"] };
        { AL["Sathrovarr the Corruptor"] };
        { AL["Madrigosa"] };
        { AL["Brutallus"] };
        { AL["Felmyst"] };
        { AL["Eredar Twins"].." ("..AL["Lower"]..")" };
        { AL["Grand Warlock Alythess"].." ("..AL["Lower"]..")" };
        { AL["Lady Sacrolash"].." ("..AL["Lower"]..")" };
        { AL["M'uru"].." ("..AL["Upper"]..")" };
        { AL["Entropius"].." ("..AL["Upper"]..")" };
        { AL["Kil'jaeden <The Deceiver>"] };
        };
    };

    -- Dungeons

    ["HCHellfireRamparts"] = {
        ZoneName = { BabbleZone["Hellfire Ramparts"], 3562 };
        Location = { BabbleZone["Hellfire Peninsula"], 3483 };
        LevelRange = "59-67";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["Ramp"];
        MapName = "HellfireRamparts";
        [1] = {
        { AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
        { AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
        { AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Watchkeeper Gargolmar"] };
        { AL["Omor the Unscarred"] };
        { AL["Vazruden"] };
        { AL["Nazan <Vazruden's Mount>"] };
        { AL["Reinforced Fel Iron Chest"] };
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
        { AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
        { AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
        { AL["Key"]..": "..AL["Shattered Halls Key"] };
        { AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Randy Whizzlesprocket"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
        { AL["Drisella"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        { AL["Grand Warlock Nethekurse"] };
        { AL["Blood Guard Porung"].." ("..AL["Heroic"]..")" };
        { AL["Warbringer O'mrogg"] };
        { AL["Warchief Kargath Bladefist"] };
        { AL["Shattered Hand Executioner"].." ("..AL["Heroic"]..")" };
        { AL["Private Jacint"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
        { AL["Rifleman Brownbeard"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
        { AL["Captain Alina"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
        { AL["Scout Orgarr"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        { AL["Korag Proudmane"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        { AL["Captain Boneshatter"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
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
        { AL["Reputation"]..": "..AL["Thrallmar"].." ("..AL["Horde"]..")" };
        { AL["Reputation"]..": "..AL["Honor Hold"].." ("..AL["Alliance"]..")" };
        { AL["Key"]..": "..AL["Flamewrought Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["The Maker"] };
        { AL["Broggok"] };
        { AL["Keli'dan the Breaker"] };
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
        { AL["Reputation"]..": "..AL["The Sha'tar"] };
        { AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Exit"] };
        { AL["Commander Sarannis"] };
        { AL["High Botanist Freywinn"] };
        { AL["Thorngrin the Tender"] };
        { AL["Laj"] };
        { AL["Warp Splinter"] };
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
        { AL["Reputation"]..": "..AL["The Sha'tar"] };
        { AL["Key"]..": "..AL["Key to the Arcatraz"] };
        { AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Zereketh the Unbound"] };
        { AL["Arcane Container"] };
        { AL["Third Fragment Guardian"] };
        { AL["Dalliah the Doomsayer"] };
        { AL["Wrath-Scryer Soccothrates"] };
        { AL["Udalo"] };
        { AL["Harbinger Skyriss"] };
        { AL["Warden Mellichar"] };
        { AL["Millhouse Manastorm"] };
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
        { AL["Reputation"]..": "..AL["The Sha'tar"] };
        { AL["Key"]..": "..AL["Warpforged Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Exit"] };
        { AL["Gatewatcher Gyro-Kill"] };
        { AL["Gatewatcher Iron-Hand"] };
        { AL["Cache of the Legion"] };
        { AL["Mechano-Lord Capacitus"] };
        { AL["Overcharged Manacell"] };
        { AL["Nethermancer Sepethrea"] };
        { AL["Pathaleon the Calculator"] };
        };
    };
    ["AuchAuchenaiCrypts"] = {
        ZoneName = { BabbleZone["Auchenai Crypts"], 3790 };
        Location = { BabbleZone["Terokkar Forest"], 3519 };
        LevelRange = "64-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["AC"];
        MapName = "AuchenaiCrypts";
        [1] = {
        { AL["Reputation"]..": "..AL["Lower City"] };
        { AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Shirrak the Dead Watcher"] };
        { AL["Exarch Maladaar"] };
        { AL["Avatar of the Martyred"] };
        { AL["D'ore"] };
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
        { AL["Reputation"]..": "..AL["The Consortium"] };
        { AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
        { AL["Key"]..": "..AL["The Eye of Haramad"].." ("..AL["Exalted"]..")" };
        { AL["Entrance"] };
        { AL["Pandemonius"] };
        { AL["Shadow Lord Xiraxis"] };
        { AL["Ambassador Pax'ivi"].." ("..AL["Heroic"]..")" };
        { AL["Tavarok"] };
        { AL["Cryo-Engineer Sha'heen"] };
        { AL["Ethereal Transporter Control Panel"] };
        { AL["Nexus-Prince Shaffar"] };
        { AL["Yor <Void Hound of Shaffar>"].." ("..AL["Summon"]..")" };
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
        { AL["Reputation"]..": "..AL["Lower City"] };
        { AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
        { AL["Key"]..": "..AL["Essence-Infused Moonstone"].." ("..AL["Anzu"]..")" };
        { AL["Entrance"] };
        { AL["Darkweaver Syth"] };
        { AL["Lakka"] };
        { AL["The Saga of Terokk"] };
        { AL["Anzu"].." ("..AL["Summon"]..")" };
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
        { AL["Reputation"]..": "..AL["Lower City"] };
        { AL["Key"]..": "..AL["Shadow Labyrinth Key"] };
        { AL["Key"]..": "..AL["Auchenai Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Spy To'gun"] };
        { AL["Ambassador Hellmaw"] };
        { AL["Blackheart the Inciter"] };
        { AL["Grandmaster Vorpil"] };
        { AL["The Codex of Blood"] };
        { AL["Murmur"] };
        { AL["Arcane Container"] };
        { AL["First Fragment Guardian"] };
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
        { AL["Attunement Required"] };
        { AL["Reputation"]..": "..AL["Keepers of Time"] };
        { AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Erozion"] };
        { AL["Brazen"] };
        { AL["Landing Spot"] };
        { BabbleSubZone["Southshore"] };
        { "D) "..BabbleSubZone["Tarren Mill"] };
        { AL["Lieutenant Drake"] };
        { AL["Thrall"].." ("..AL["Lower"]..")" };
        { AL["Captain Skarloc"] };
        { AL["Thrall"].." ("..AL["Second Stop"]..")" };
        { AL["Thrall"].." ("..AL["Third Stop"]..")" };
        { AL["Epoch Hunter"] };
        { AL["Thrall"].." ("..AL["Fourth Stop"]..", "..AL["Upper"]..")" };
        { AL["Taretha"].." ("..AL["Upper"]..")" };
        { AL["Jonathan Revah"] };
        { AL["Jerry Carter"] };
        { "" };
        { AL["Traveling"] };
        { AL["Thomas Yance <Travelling Salesman>"] };
        { AL["Aged Dalaran Wizard"] };
        { AL["Don Carlos"] };
        { AL["Guerrero"] };
        { "" };
        { BabbleSubZone["Southshore"] };
        { AL["Kel'Thuzad <The Kirin Tor>"] };
        { AL["Helcular"] };
        { AL["Farmer Kent"] };
        { AL["Sally Whitemane"] };
        { AL["Renault Mograine"] };
        { AL["Little Jimmy Vishas"] };
        { AL["Herod the Bully"] };
        { AL["Nat Pagle"] };
        { AL["Hal McAllister"] };
        { AL["Zixil <Aspiring Merchant>"] };
        { AL["Overwatch Mark 0 <Protector>"] };
        { "" };
        { AL["Southshore Inn"] };
        { AL["Captain Edward Hanes"] };
        { AL["Captain Sanders"] };
        { AL["Commander Mograine"] };
        { AL["Isillien"] };
        { AL["Abbendis"] };
        { AL["Fairbanks"] };
        { AL["Tirion Fordring"] };
        { AL["Arcanist Doan"] };
        { AL["Taelan"].." ("..AL["Upper"]..")" };
        { AL["Barkeep Kelly <Bartender>"] };
        { AL["Frances Lin <Barmaid>"] };
        { AL["Chef Jessen <Speciality Meat & Slop>"] };
        { AL["Stalvan Mistmantle"].." ("..AL["Upper"]..")" };
        { AL["Phin Odelic <The Kirin Tor>"].." ("..AL["Upper"]..")" };
        { "" };
        { BabbleSubZone["Southshore Town Hall"] };
        { AL["Magistrate Henry Maleb"] };
        { AL["Raleigh the True"] };
        { AL["Nathanos Marris"] };
        { AL["Bilger the Straight-laced"] };
        { "" };
        { BabbleSubZone["Tarren Mill"] };
        { AL["Innkeeper Monica"] };
        { AL["Julie Honeywell"] };
        { AL["Jay Lemieux"] };
        { AL["Young Blanchy"] };
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
        { AL["Attunement Required"] };
        { AL["Reputation"]..": "..AL["Keepers of Time"] };
        { AL["Key"]..": "..AL["Key of Time"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Sa'at <Keepers of Time>"] };
        { "X) "..AL["Portal"].." ("..AL["Spawn Point"]..")" };
        { AL["Wave 6"]..": "..AL["Chrono Lord Deja"] };
        { AL["Wave 12"]..": "..AL["Temporus"] };
        { AL["Wave 18"]..": "..AL["Aeonus"] };
        { AL["The Dark Portal"] };
        { AL["Medivh"] };
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
        { AL["Reputation"]..": "..AL["Cenarion Expedition"] };
        { AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
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
        { AL["Reputation"]..": "..AL["Cenarion Expedition"] };
        { AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Hydromancer Thespia"] };
        { AL["Main Chambers Access Panel"] };
        { AL["Arcane Container"] };
        { AL["Second Fragment Guardian"] };
        { AL["Mekgineer Steamrigger"] };
        { AL["Main Chambers Access Panel"] };
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
        { AL["Reputation"]..": "..AL["Cenarion Expedition"] };
        { AL["Key"]..": "..AL["Reservoir Key"].." ("..AL["Heroic"]..")" };
        { AL["Entrance"] };
        { AL["Hungarfen"] };
        { AL["The Underspore"] };
        { AL["Ghaz'an"] };
        { AL["Earthbinder Rayge"] };
        { AL["Swamplord Musel'ek"] };
        { AL["Claw <Swamplord Musel'ek's Pet>"] };
        { AL["The Black Stalker"] };
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
        { AL["Reputation"]..": "..AL["Shattered Sun Offensive"] };
        { AL["Entrance"] };
        { AL["Selin Fireheart"] };
        { AL["Fel Crystals"] };
        { AL["Tyrith"] };
        { AL["Vexallus"] };
        { AL["Scrying Orb"] };
        { AL["Kalecgos"] };
        { AL["Priestess Delrissa"].." ("..AL["Lower"]..")" };
        { AL["Apoko"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Shaman"]..")" };
        { AL["Eramas Brightblaze"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Monk"]..")" };
        { AL["Ellrys Duskhallow"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warlock"]..")" };
        { AL["Fizzle"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
        { AL["Garaxxas"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Hunter"]..")" };
        { AL["Sliver <Garaxxas' Pet>"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
        { AL["Kagani Nightstrike"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Rogue"]..")" };
        { AL["Warlord Salaris"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warrior"]..")" };
        { AL["Yazzai"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Mage"]..")" };
        { AL["Zelfan"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Engineer"]..")" };
        { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"] };
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
        { AL["Entrance"] };
        { AL["Exit"] };
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
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["Exit"] };
        { AL["Krik'thir the Gatewatcher"] };
        { AL["Watcher Gashra"] };
        { AL["Watcher Narjil"] };
        { AL["Watcher Silthik"] };
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
        { AL["Entrance"] };
        { AL["Exit"].." ("..AL["Portal"]..")" };
        { "X) "..AL["Scourge Invasion Points"] };
        { AL["Wave 5"]..": "..AL["Meathook"] };
        { AL["Wave 10"]..": "..AL["Salramm the Fleshcrafter"] };
        { AL["Chromie"] };
        { AL["Chromie"] };
        { AL["Chrono-Lord Epoch"] };
        { AL["Infinite Corruptor"].." ("..AL["Heroic"]..")" };
        { AL["Guardian of Time"] };
        { AL["Mal'Ganis"] };
        { AL["Chromie"] };
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
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["Connection"] };
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
        { AL["Attunement Required"] };
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Dalaran"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Falric"].." ("..AL["Wave 5"]..")" };
        { AL["Marwyn"].." ("..AL["Wave 10"]..")" };
        { AL["Wrath of the Lich King"].." ("..AL["Event"]..")" };
        { AL["The Captain's Chest"] };
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
        { AL["Attunement Required"] };
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Halls of Reflection"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
        { AL["Forgemaster Garfrost"] };
        { AL["Martin Victus"].." ("..AL["Alliance"]..")" };
        { AL["Gorkun Ironskull"].." ("..AL["Horde"]..")" };
        { AL["Krick and Ick"] };
        { AL["Scourgelord Tyrannus"] };
        { AL["Rimefang"] };
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
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Pit of Saron"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
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
        { AL["Entrance"] };
        { AL["Exit"] };
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
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["To next map"] };
        { AL["Lord Marrowgar"] };
        { AL["Lady Deathwhisper"] };
        { AL["Gunship Battle"].." ("..AL["Alliance"]..")" };
        { AL["Gunship Battle"].." ("..AL["Horde"]..")" };
        { AL["Deathbringer Saurfang"] };
        { BabbleSubZone["Light's Hammer"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Oratory of the Damned"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Rampart of Skulls"].." ("..AL["Teleporter"]..", "..AL["Lower"]..")" };
        { BabbleSubZone["Deathbringer's Rise"].." ("..AL["Teleporter"]..", "..AL["Upper"]..")" };
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
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { AL["From previous map"] };
        { "D-H) "..AL["Connection"] };
        { "I) "..AL["To next map"] };
        { AL["Festergut"] };
        { AL["Rotface"] };
        { AL["Professor Putricide"] };
        { AL["Blood Prince Council"] };
        { AL["Prince Keleseth"] };
        { AL["Prince Taldaram"] };
        { AL["Prince Valanar"] };
        { AL["Blood-Queen Lana'thel"] };
        { AL["Valithria Dreamwalker"] };
        { AL["Sindragosa <Queen of the Frostbrood>"] };
        { "4') "..AL["Upper Spire"].." ("..AL["Teleporter"]..")" };
        { "5') "..AL["Sindragosa's Lair"].." ("..AL["Teleporter"]..")" };
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
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { "I) "..AL["From previous map"] };
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
        { AL["Entrance"] };
        { AL["Patchwerk"] };
        { AL["Grobbulus"] };
        { AL["Gluth"] };
        { AL["Thaddius"] };
        { AL["Anub'Rekhan"] };
        { AL["Grand Widow Faerlina"] };
        { AL["Maexxna"] };
        { _RED..AL["Instructor Razuvious"] };
        { _RED..AL["Gothik the Harvester"] };
        { _RED..AL["Four Horsemen Chest"] };
        { PURP..AL["Noth the Plaguebringer"] };
        { PURP..AL["Heigan the Unclean"] };
        { PURP..AL["Loatheb"] };
        { AL["Sapphiron"] };
        { AL["Kel'Thuzad"] };
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
        { AL["Entrance"] };
        { AL["Mr. Bigglesworth"].." ("..AL["Wanders"]..")" };
        { BabbleSubZone["The Construct Quarter"] };
        { AL["Patchwerk"] };
        { AL["Grobbulus"] };
        { AL["Gluth"] };
        { AL["Thaddius"] };
        { BabbleSubZone["The Arachnid Quarter"] };
        { AL["Anub'Rekhan"] };
        { AL["Grand Widow Faerlina"] };
        { AL["Maexxna"] };
        { _RED..BabbleSubZone["The Military Quarter"] };
        { _RED..AL["Instructor Razuvious"] };
        { _RED..AL["Gothik the Harvester"] };
        { _RED..AL["The Four Horsemen"] };
        { _RED..AL["Thane Korth'azz"] };
        { _RED..AL["Lady Blaumeux"] };
        { _RED..AL["Baron Rivendare"] };
        { _RED..AL["Sir Zeliek"] };
        { _RED..AL["Four Horsemen Chest"] };
        { PURP..BabbleSubZone["The Plague Quarter"] };
        { PURP..AL["Noth the Plaguebringer"] };
        { PURP..AL["Heigan the Unclean"] };
        { PURP..AL["Loatheb"] };
        { AL["Frostwyrm Lair"] };
        { AL["Sapphiron"] };
        { AL["Kel'Thuzad"] };
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
        { AL["AKA"]..": "..AL["Black Dragonflight Chamber"] };
        { AL["Entrance"] };
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
        { AL["Entrance"] };
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
        { AL["Entrance"] };
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
        { AL["AKA"]..": "..AL["Red Dragonflight Chamber"] };
        { AL["Entrance"] };
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
        { AL["Key"]..": "..AL["Key to the Focusing Iris"] };
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
        { AL["Entrance"] };
        { AL["Berinand's Research"] };
        { AL["Commander Stoutbeard"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        { AL["Commander Kolurg"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
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
        { AL["Entrance"] };
        { AL["Portal"] };
        { AL["Drakos the Interrogator"] };
        { AL["Varos Cloudstrider <Azure-Lord of the Blue Dragonflight>"] };
        { AL["Mage-Lord Urom"] };
        { AL["Ley-Guardian Eregos"] };
        { AL["Cache of Eregos"] };
        { AL["Centrifuge Construct"] };
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
        { AL["Entrance"] };
        { AL["Grand Champions"] };
        { AL["Champions of the Alliance"] };
        { AL["Marshal Jacob Alerius"] };
        { AL["Ambrose Boltspark"] };
        { AL["Colosos"] };
        { AL["Jaelyne Evensong"] };
        { AL["Lana Stouthammer"] };
        { AL["Champions of the Horde"] };
        { AL["Mokra the Skullcrusher"] };
        { AL["Eressea Dawnsinger"] };
        { AL["Runok Wildmane"] };
        { AL["Zul'tore"] };
        { AL["Deathstalker Visceri"] };
        { AL["Eadric the Pure <Grand Champion of the Argent Crusade>"] };
        { AL["Argent Confessor Paletress"] };
        { AL["The Black Knight"] };
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
        { AL["Heroic: Trial of the Grand Crusader"] };
        { AL["Entrance"] };
        { AL["Cavern Entrance"] };
        { AL["Northrend Beasts"] };
        { AL["Gormok the Impaler"] };
        { AL["Acidmaw"] };
        { AL["Dreadscale"] };
        { AL["Icehowl"] };
        { AL["Lord Jaraxxus"] };
        { AL["Faction Champions"] };
        { AL["Twin Val'kyr"] };
        { AL["Fjola Lightbane"] };
        { AL["Eydis Darkbane"] };
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
        { AL["Entrance"] };
        { BabbleSubZone["The Antechamber"] };
        { "A') "..AL["Tower of Life"] };
        { "B') "..AL["Tower of Flame"] };
        { "C') "..AL["Tower of Frost"] };
        { "D') "..AL["Tower of Storms"] };
        { AL["Flame Leviathan"] };
        { AL["Razorscale"].." ("..AL["Optional"]..")" };
        { AL["Ignis the Furnace Master"].." ("..AL["Optional"]..")" };
        { AL["XT-002 Deconstructor"] };
        { BabbleSubZone["Expedition Base Camp"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Formation Grounds"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["The Colossal Forge"].." ("..AL["Teleporter"]..")" };
        { "4') "..BabbleSubZone["The Scrapyard"].." ("..AL["Teleporter"]..")" };
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
        { AL["Key"]..": "..AL["Celestial Planetarium Key"] };
        { AL["The Siege"] };
        { AL["The Keepers"] };
        { AL["Assembly of Iron"].." ("..AL["Optional"]..")" };
        { AL["Steelbreaker"] };
        { AL["Runemaster Molgeim"] };
        { AL["Stormcaller Brundir"] };
        { AL["Prospector Doren"] };
        { AL["Archivum Console"] };
        { AL["Kologarn"] };
        { AL["Algalon the Observer"].." ("..AL["Optional"]..")" };
        { "5') "..BabbleSubZone["The Antechamber"].." ("..AL["Teleporter"]..")" };
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
        { BabbleSubZone["The Antechamber"] };
        { "D) "..BabbleSubZone["The Spark of Imagination"] };
        { "E) "..BabbleSubZone["The Descent into Madness"] };
        { AL["Auriaya"].." ("..AL["Optional"]..")" };
        { AL["Hodir"] };
        { AL["Thorim"] };
        { AL["Freya"] };
        { "6') "..BabbleSubZone["The Shattered Walkway"].." ("..AL["Teleporter"]..")" };
        { "7') "..BabbleSubZone["The Conservatory of Life"].." ("..AL["Teleporter"]..")" };
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
        { "D) "..AL["The Keepers"] };
        { AL["Mimiron"] };
        { "8') "..BabbleSubZone["The Spark of Imagination"].." ("..AL["Teleporter"]..")" };
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
        { "E) "..AL["The Keepers"] };
        { AL["General Vezax"] };
        { AL["Yogg-Saron"] };
        { "9') "..BabbleSubZone["The Prison of Yogg-Saron"].." ("..AL["Teleporter"]..")" };
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
        { AL["Entrance"] };
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
        { AL["Entrance"] };
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
        { AL["Entrance"] };
        { AL["Dark Ranger Marrah"] };
        { "B-C) "..AL["Connection"] };
        { AL["Prince Keleseth <The San'layn>"] };
        { AL["Elder Jarten"].." ("..AL["Lunar Festival"]..", "..AL["Lower"]..")" };
        { AL["Dalronn the Controller"] };
        { AL["Skarvald the Constructor"] };
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
        { AL["Entrance"] };
        { AL["Brigg Smallshanks"] };
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
        { AL["Entrance"] };
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
        { AL["Key"]..": "..AL["The Violet Hold Key"] };
        { AL["Entrance"] };
        { AL["Erekem"].." ("..AL["Random"]..")" };
        { AL["Zuramat the Obliterator"].." ("..AL["Upper"]..", "..AL["Random"]..")" };
        { AL["Xevozz"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
        { AL["Ichoron"].." ("..AL["Random"]..")" };
        { AL["Moragg"].." ("..AL["Random"]..")" };
        { AL["Lavanthor"].." ("..AL["Random"]..")" };
        { AL["Cyanigosa"].." ("..AL["Wave 18"]..")" };
        };
    };
    };