local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")


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
local quest = "questturnin"
local boss = "dungeonskull"


    --************************************************
    -- Burning Crusade Instances
    --************************************************

    -- Raids
    AtlasLoot_MapData["Karazhan"] = {
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

    AtlasLoot_MapData["HCMagtheridonsLair"] = {
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

    AtlasLoot_MapData["GruulsLair"] = {
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

    AtlasLoot_MapData["CFRSerpentshrineCavern"] = {
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

    AtlasLoot_MapData["TempestKeepTheEye"] = {
        ZoneName = { BabbleZone["The Eye"], 3845 };
        Location = { BabbleZone["Netherstorm"], 3523 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["Eye"];
        MapName = "TempestKeep";
        Reputation = AL["The Sha'tar"];
        [1] = {
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

    AtlasLoot_MapData["ZulAman"] = {
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

    AtlasLoot_MapData["CoTHyjal"] = {
        ZoneName = { BabbleZone["Hyjal Summit"], 3606 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["CoT3"];
        MapName = "CoTMountHyjal";
        Reputation = AL["The Scale of the Sands"];
        [1] = {
        { AL["Battle for Mount Hyjal"], SubZone = true };
        { AL["Alliance Base"] };
        { AL["Lady Jaina Proudmoore"], cords = {10.6,63.7} };
        { AL["Horde Encampment"] };
        { AL["Thrall <Warchief>"], cords = {48,41.7} };
        { AL["Night Elf Village"] };
        { AL["Tyrande Whisperwind\n<High Priestess of Elune>"], cords = {74.3,57.7} };
        { AL["Rage Winterchill"], cords = {7,72}, pinType = boss };
        { AL["Anetheron"], cords = {7,74}, pinType = boss };
        { AL["Kaz'rogal"], cords = {34.4,37.7}, pinType = boss };
        { AL["Azgalor"], cords = {33.1,40.5}, pinType = boss };
        { AL["Archimonde"], cords = {78,28}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackTemple"] = {
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

    AtlasLoot_MapData["SunwellPlateau"] = {
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

    AtlasLoot_MapData["HCHellfireRamparts"] = {
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

    AtlasLoot_MapData["HCTheShatteredHalls"] = {
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

    AtlasLoot_MapData["HCBloodFurnace"] = {
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

    AtlasLoot_MapData["TempestKeepBotanica"] = {
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

    AtlasLoot_MapData["TempestKeepArcatraz"] = {
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

    AtlasLoot_MapData["TempestKeepMechanar"] = {
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

    AtlasLoot_MapData["AuchAuchenaiCrypts"] = {
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

    AtlasLoot_MapData["AuchManaTombs"] = {
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

    AtlasLoot_MapData["AuchSethekkHalls"] = {
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

    AtlasLoot_MapData["AuchShadowLabyrinth"] = {
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

    AtlasLoot_MapData["CoTOldHillsbrad"] = {
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

    AtlasLoot_MapData["CoTBlackMorass"] = {
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

    AtlasLoot_MapData["CFRTheSlavePens"] = {
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

    AtlasLoot_MapData["CFRTheSteamvault"] = {
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

    AtlasLoot_MapData["CFRTheUnderbog"] = {
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

    AtlasLoot_MapData["MagistersTerrace"] = {
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