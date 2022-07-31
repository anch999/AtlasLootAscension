local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Difficulty = {
    -- table of difficulties and there itemID references
    ["ClassicDungeon"] = {
            {"Normal", 2,},
            {"Bloodforged", 1,},
    };

    ["PVP"] = {
        {"Normal", 2},
        {"Bloodforged", 1},
    };

    ["ClassicDungeonExt"] = {
        {"Bloodforged", 1},
        {"Normal", 2},
        {"Heroic", 3, "=q4="},
        {"Mythic", 4, "=q4="},
        {"Mythic 1", 5, "=q4=" },  {"Mythic 2", 6, "=q4=" },  {"Mythic 3", 7, "=q4=" },  {"Mythic 4", 8, "=q4=" },  {"Mythic 5", 9, "=q4=" },
        {"Mythic 6", 10, "=q4=" }, {"Mythic 7", 11, "=q4=" }, {"Mythic 8", 12, "=q4=" }, {"Mythic 9", 13, "=q4=" }, {"Mythic 10", 14, "=q4=" },
        {"Mythic 11", 15, "=q4=" }, {"Mythic 12", 16, "=q4=" }, {"Mythic 13", 17, "=q4=" }, {"Mythic 14", 18, "=q4=" }, {"Mythic 15", 19, "=q4=" },
        {"Mythic 16", 20, "=q4=" }, {"Mythic 17", 21, "=q4=" }, {"Mythic 18", 22, "=q4=" }, {"Mythic 19", 23, "=q4=" }, {"Mythic 20", 24, "=q4=" },
        {"Mythic 21", 25, "=q4=" }, {"Mythic 22", 26, "=q4=" }, {"Mythic 23", 27, "=q4=" }, {"Mythic 24", 28, "=q4=" }, {"Mythic 25", 29, "=q4=" },
        {"Mythic 26", 30, "=q4=" }, {"Mythic 27", 31, "=q4=" }, {"Mythic 28", 32, "=q4=" }, {"Mythic 29", 33, "=q4=" }, {"Mythic 30", 34, "=q4=" },
        {"Mythic 31", 35, "=q4=" }, {"Mythic 32", 36, "=q4=" }, {"Mythic 33", 37, "=q4=" }, {"Mythic 34", 38, "=q4=" }, {"Mythic 35", 39, "=q4=" },
        {"Mythic 36", 40, "=q4=" }, {"Mythic 37", 41, "=q4=" }, {"Mythic 38", 42, "=q4=" }, {"Mythic 39", 43, "=q4=" }, {"Mythic 40", 44, "=q4=" },
    };

    ["ClassicRaid"] = {
            {"Normal Flex", 2},
            {"Heroic Flex", 3},
            {"Ascended", 4},
            {"Bloodforged", 1},
    };

    ["BCDungeon"] = {
        {"Bloodforged", 1},
        {"Normal/Heroic", 2},
        {"Mythic", 4, "=q4="},
        {"Mythic 1", 5, "=q4=" },  {"Mythic 2", 6, "=q4=" },  {"Mythic 3", 7, "=q4=" },  {"Mythic 4", 8, "=q4=" },  {"Mythic 5", 9, "=q4=" },
        {"Mythic 6", 10, "=q4=" }, {"Mythic 7", 11, "=q4=" }, {"Mythic 8", 12, "=q4=" }, {"Mythic 9", 13, "=q4=" }, {"Mythic 10", 14, "=q4=" },
        {"Mythic 11", 15, "=q4=" }, {"Mythic 12", 16, "=q4=" }, {"Mythic 13", 17, "=q4=" }, {"Mythic 14", 18, "=q4=" }, {"Mythic 15", 19, "=q4=" },
        {"Mythic 16", 20, "=q4=" }, {"Mythic 17", 21, "=q4=" }, {"Mythic 18", 22, "=q4=" }, {"Mythic 19", 23, "=q4=" }, {"Mythic 20", 24, "=q4=" },
        {"Mythic 21", 25, "=q4=" }, {"Mythic 22", 26, "=q4=" }, {"Mythic 23", 27, "=q4=" }, {"Mythic 24", 28, "=q4=" }, {"Mythic 25", 29, "=q4=" },
        {"Mythic 26", 30, "=q4=" }, {"Mythic 27", 31, "=q4=" }, {"Mythic 28", 32, "=q4=" }, {"Mythic 29", 33, "=q4=" }, {"Mythic 30", 34, "=q4=" },
        {"Mythic 31", 35, "=q4=" }, {"Mythic 32", 36, "=q4=" }, {"Mythic 33", 37, "=q4=" }, {"Mythic 34", 38, "=q4=" }, {"Mythic 35", 39, "=q4=" },
        {"Mythic 36", 40, "=q4=" }, {"Mythic 37", 41, "=q4=" }, {"Mythic 38", 42, "=q4=" }, {"Mythic 39", 43, "=q4=" }, {"Mythic 40", 44, "=q4=" },
    };

     ["D3Set"] = {
        {"Bloodforged", 1},
        {"Normal/Heroic", 2},
        {"Mythic", 4, "=q4="},
        {"Mythic 1", 5, "=q4=" },  {"Mythic 2", 6, "=q4=" },  {"Mythic 3", 7, "=q4=" },  {"Mythic 4", 8, "=q4=" },  {"Mythic 5", 9, "=q4=" },
        {"Mythic 6", 10, "=q4=" }, {"Mythic 7", 11, "=q4=" }, {"Mythic 8", 12, "=q4=" }, {"Mythic 9", 13, "=q4=" }, {"Mythic 10", 14, "=q4=" },
        {"Mythic 11", 15, "=q4=" }, {"Mythic 12", 16, "=q4=" }, {"Mythic 13", 17, "=q4=" }, {"Mythic 14", 18, "=q4=" }, {"Mythic 15", 19, "=q4=" },
        {"Mythic 16", 20, "=q4=" }, {"Mythic 17", 21, "=q4=" }, {"Mythic 18", 22, "=q4=" }, {"Mythic 19", 23, "=q4=" }, {"Mythic 20", 24, "=q4=" },
        {"Mythic 21", 25, "=q4=" }, {"Mythic 22", 26, "=q4=" }, {"Mythic 23", 27, "=q4=" }, {"Mythic 24", 28, "=q4=" }, {"Mythic 25", 29, "=q4=" },
        {"Mythic 26", 30, "=q4=" }, {"Mythic 27", 31, "=q4=" }, {"Mythic 28", 32, "=q4=" }, {"Mythic 29", 33, "=q4=" }, {"Mythic 30", 34, "=q4=" },
        {"Mythic 31", 35, "=q4=" }, {"Mythic 32", 36, "=q4=" }, {"Mythic 33", 37, "=q4=" }, {"Mythic 34", 38, "=q4=" }, {"Mythic 35", 39, "=q4=" },
        {"Mythic 36", 40, "=q4=" }, {"Mythic 37", 41, "=q4=" }, {"Mythic 38", 42, "=q4=" }, {"Mythic 39", 43, "=q4=" }, {"Mythic 40", 44, "=q4=" },
     };

    ["BCRaid"] = {
        {"Normal Flex", 2},
        {"Heroic Flex", 3},
        {"Ascended", 4},
        {"Bloodforged", 1},
     };

    ["WrathDungeon"] = {
        {"Normal/Heroic", 2},
        {"Mythic", 4, "=q4="},
        {"Bloodforged", 1},
        {"Mythic 1", 5, "=q4=" },  {"Mythic 2", 6, "=q4=" },  {"Mythic 3", 7, "=q4=" },  {"Mythic 4", 8, "=q4=" },  {"Mythic 5", 9, "=q4=" },
        {"Mythic 6", 10, "=q4=" }, {"Mythic 7", 11, "=q4=" }, {"Mythic 8", 12, "=q4=" }, {"Mythic 9", 13, "=q4=" }, {"Mythic 10", 14, "=q4=" },
        {"Mythic 11", 15, "=q4=" }, {"Mythic 12", 16, "=q4=" }, {"Mythic 13", 17, "=q4=" }, {"Mythic 14", 18, "=q4=" }, {"Mythic 15", 19, "=q4=" },
        {"Mythic 16", 20, "=q4=" }, {"Mythic 17", 21, "=q4=" }, {"Mythic 18", 22, "=q4=" }, {"Mythic 19", 23, "=q4=" }, {"Mythic 20", 24, "=q4=" },
     };

    ["WrathRaid"] = {
        {"Normal Flex", 2},
        {"Heroic Flex", 3},
        {"Ascended", 4},
        {"Bloodforged", 1},
     };

    ["Crafting"] = {
        {"Crafting Patterns", "" },
        {"Item Normal", 2 },
        {"Bloodforged", 1 },
    };

    ["Search"] = {"Bloodforged", "Normal", "Heroic", "Mythic", 
    "Mythic 1", "Mythic 2","Mythic 3","Mythic 4","Mythic 5", "Mythic 6","Mythic 7", "Mythic 8","Mythic 9", "Mythic 10",
    "Mythic 11", "Mythic 12","Mythic 13","Mythic 14","Mythic 15", "Mythic 16","Mythic 17","Mythic 18", "Mythic 19", "Mythic 20",
    "Mythic 21", "Mythic 22","Mythic 23","Mythic 24","Mythic 25", "Mythic 26","Mythic 27", "Mythic 28","Mythic 29", "Mythic 30",
    "Mythic 31", "Mythic 32","Mythic 33","Mythic 34","Mythic 35", "Mythic 36","Mythic 37","Mythic 38", "Mythic 39", "Mythic 40",
    [99] = "Ascended"};

    --Enums for comparisons in code
    Bloodforged = 1;
    Normal = 2;
    Heroic = 3;
    Mythic = 4;
    Ascended = 4;

    MythicPlus = {
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
        25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
        35, 36, 37, 38, 39, 40, 41, 42, 43, 44
    }; --Usage AtlasLoot_Difficulty.MythicPlus[1-40];

    DIF_SEARCH = 16;
    DUPLICATE = 17;
    MIN_DIF = 18;
    MAX_DIF = 19;
}
