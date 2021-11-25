local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot_Difficulty = {
    -- table of difficulties and there itemID references
    ["ClassicDungeon"] = { 
        [1] = {
            {"Normal", "", [4] = "Submenu"}, 
        }, 
        [2] = {
            {"Bloodforged", 1, [4] = "Submenu"}, 
        }, 
    };
    
    ["ClassicDungeonExt"] = { 
        [1] = {
            {"Normal", "", [4] = "Submenu"}, 
        }, 
        [2] = {
            {"Heroic", 3, "=q4=", [4] = "Submenu"}, 
        }, 
        [3] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"}, 
        }, 
        [4] = { 
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" }, 
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            }, 
        },
        [5] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" }, 
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        }, 
        [6] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        }, 
    };
    
    ["ClassicRaid"] = { 
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"}, 
            }, 
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"}, 
        }, 
        [3] = {
            {"Ascended", 4, [4] = "Submenu"}, 
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        }, 
    };
    
    ["BCDungeon"] = { 
        [1] = {
            {"Normal/Heroic", "", [4] = "Submenu"}, 
        }, 
        [2] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"}, 
        },
        [3] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        }, 
        --[[
        [3] = { 
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" }, 
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            }, 
        },
        [4] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" }, 
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        }, 
        ]]
     };
    
    ["BCRaid"] = { 
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"}, 
            }, 
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"}, 
        }, 
        [3] = {
            {"Ascended", 4, [4] = "Submenu"}, 
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
     };
    
    ["WrathDungeon"] = { 
        [1] = {
            {"Normal/Heroic", "", [4] = "Submenu"}, 
        }, 
        [2] = {
            {"Mythic", 4, "=q4=", [4] = "Submenu"}, 
        },
        [3] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        }, 
        --[[
        [3] = { 
            ["Mythic+ 1-10"] = {
                {"Mythic 1", 5, "=q4=", [4] = "Submenu" },  {"Mythic 2", 6, "=q4=", [4] = "Submenu" },  {"Mythic 3", 7, "=q4=", [4] = "Submenu" },  {"Mythic 4", 8, "=q4=", [4] = "Submenu" },  {"Mythic 5", 9, "=q4=", [4] = "Submenu" }, 
                {"Mythic 6", 10, "=q4=", [4] = "Submenu" }, {"Mythic 7", 11, "=q4=", [4] = "Submenu" }, {"Mythic 8", 12, "=q4=", [4] = "Submenu" }, {"Mythic 9", 13, "=q4=", [4] = "Submenu" }, {"Mythic 10", 14, "=q4=", [4] = "Submenu" },
            }, 
        },
        [4] = {
            ["Mythic+ 11-20"] = {
                {"Mythic 11", 15, "=q4=", [4] = "Submenu" }, {"Mythic 12", 16, "=q4=", [4] = "Submenu" }, {"Mythic 13", 17, "=q4=", [4] = "Submenu" }, {"Mythic 14", 18, "=q4=", [4] = "Submenu" }, {"Mythic 15", 19, "=q4=", [4] = "Submenu" }, 
                {"Mythic 16", 20, "=q4=", [4] = "Submenu" }, {"Mythic 17", 21, "=q4=", [4] = "Submenu" }, {"Mythic 18", 22, "=q4=", [4] = "Submenu" }, {"Mythic 19", 23, "=q4=", [4] = "Submenu" }, {"Mythic 20", 24, "=q4=", [4] = "Submenu" },
            },
        }, 
        ]]
     };
    
    ["WrathRaid"] = { 
        [1] = {
            {"Normal Flex", "", [4] = "Submenu"}, 
            }, 
        [2] = {
            {"Heroic Flex", 3, [4] = "Submenu"}, 
        }, 
        [3] = {
            {"Ascended", 4, [4] = "Submenu"}, 
        },
        [4] = {
            {"Bloodforged", 1, [4] = "Submenu"},
        },
     };
    
    ["Crafting"] = { 
        [1] = {
            {"Crafting Patterns", "", [4] = "Submenu" },
        },
        [2] = { 
            {"Item Normal", "=s=Normal", [4] = "Submenu" },
        },
        [3] = { 
            {"Bloodforged", 1, [4] = "Submenu" },
        }, 
    };
    
    ["CraftingExt"] = { 
        [1] = {
            {"Crafting Pattern Uncommon", "", [4] = "Submenu" },
        },
        [2] = { 
            {"Crafting Patterns Rare", "Rare", [4] = "Submenu" },
        },
        [3] = { 
            {"Crafting Patterns Epic", "Epic", [4] = "Submenu" },
        },
        [4] = { 
            {"Item Uncommon", "=s=", [4] = "Submenu" },
        },
        [5] = { 
            {"Item Rare", "=s=Rare", [4] = "Submenu" },
        },
        [6] = { 
            {"Item Epic", "=s=Epic", [4] = "Submenu" }
        }, 
    };
    

    ["Search"] = {"Bloodforged", "Normal", "Heroic", "Mythic", "Mythic 1", "Mythic 2","Mythic 3","Mythic 4","Mythic 5", "Mythic 6","Mythic 7",
    "Mythic 8","Mythic 9", "Mythic 10", "Mythic 11", "Mythic 12","Mythic 13","Mythic 14","Mythic 15", "Mythic 16","Mythic 17","Mythic 18",
    "Mythic 19", "Mythic 20", [99] = "Ascended"};

    --Enums for comparisons in code
    Bloodforged = 1;
    Normal = 2;
    Heroic = 3;
    Mythic = 4; --Use for Ascended as well

    MythicPlus = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24}; --Usage AtlasLoot_Difficulty.MythicPlus[1-20];

    DIF_SEARCH = 16;
    DUPLICATE = 17;
    MIN_DIF = 18;
    MAX_DIF = 19;
}

function QueryItems(instance, difficulty, expansion)
	if instance == "help" then 
		print("Instance types are: \"Dungeon\", \"Raid\"");
		print("Difficulty types are: 1 - 24");
		print("Expansion options are: \"classic\" and \"tbc\"");
		print("Example: QueryItems(\"Dungeon\", 10) - This will query all classic dungeons Mythic+ 6 items");
		print("Example: QueryItems(\"Dungeon\", 10, \"tbc\") - This will query all tbc dungeons Mythic+ 6 items");
		return
	end

    local instanceType = "ClassicRaid";
	
	--Expansion select enums to make arguments easier to use
	local ex_sel = {
		["classic"] = AL["Classic Instances"];
		["tbc"] = AL["BC Instances"];
	}

	--Setup ranges so we arent parsing unwanted instance pages
	local range = {
		["classic"] = {
			["Raid"] = {2, 8},
			["Dungeon"] = {10, 29}
		},
		["tbc"] = {
			["Raid"] = {2, 10},
			["Dungeon"] = {12, 27}
		}
	}

	--Setup defualts if the arguments are not set or nil
	if expansion == nil or ex_sel[expansion] == nil then expansion = "classic" end
	if instance == nil then 
        instance = "Dungeon"
        instanceType = "ClassicDungeonExt" 
    end
	--TBC dungeon types are ExDungeon, i only want one argument type so we swap it here
	if instance == "Dungeon" and expansion == "tbc" then 
        instanceType = "BCDungeon" 
    end

    if instance == "Raid" then
        if expansion == "classic" then
            instanceType = "ClassicRaid"
        end

        if expansion == "tbc" then
            instanceType = "BCRaid"
        end
    end

	if difficulty == nil then difficulty = AtlasLoot_Difficulty.Normal end
	
	--We parse a drop down menu, they are setup weird so we have to check for expansion twice in the arry once as a number second as a Global Var
	local _men = 1
	if expansion == "tbc" then _men = 2 end;

	if instance == "Raid" then difficulty = math.min(AtlasLoot_Difficulty.Mythic, difficulty) end

	for i = range[expansion][instance][1], range[expansion][instance][2] do
		local inst = "";
		--DireMaul is in an another drop down list so instead what we can do is utilize instance ids we won't be querying
		if i == 14 and expansion == "classic" then inst = "DireMaulNorth" elseif i == 15 and expansion == "classic" then inst = "DireMaulEast" elseif i == 16 and expansion == "classic" then inst = "DireMaulWest"
		else
			inst = AtlasLoot_DewDropDown[_men][ex_sel[expansion]][i][1][2]
		end

		if (inst ~= nil and AtlasLoot_DewDropDown_SubTables[inst] ~= nil) then
			for b = 1, #AtlasLoot_DewDropDown_SubTables[inst] do
				local boss = AtlasLoot_DewDropDown_SubTables[inst][b][2];
				if(AtlasLoot_Data[boss] ~= nil and AtlasLoot_Data[boss].Type ~= nil and AtlasLoot_Data[boss].Type == instanceType) then
					local n = 1;
					local querytime = 0;
					local now = 0;
					while n < 31 do
						now = GetTime();
						if now - querytime > 0.01 then
							querytime = GetTime();        
							if(AtlasLoot_Data[boss][n] ~= nil) then
								local queryitem = AL_FindId(string.sub(AtlasLoot_Data[boss][n][4], 5), difficulty) or AtlasLoot_Data[boss][n][2];
								if (queryitem) and (queryitem ~= nil) and (queryitem ~= "") and (queryitem ~= 0) and (string.sub(queryitem, 1, 1) ~= "s") then
									AtlasLootTooltip:SetHyperlink("item:"..queryitem..":0:0:0:0:0:0:0");
								end
							end
							n = n + 1;
						end
					end
					print("Query for "..boss.." in instance "..inst.." finished");
				end
			end
		elseif AtlasLoot_DewDropDown[_men][ex_sel[expansion]][i][1][3] == "Table" then
			if(AtlasLoot_Data[inst] ~= nil and AtlasLoot_Data[inst].Type ~= nil and AtlasLoot_Data[inst].Type == instanceType) then
				local n = 1;
				local querytime = 0;
				local now = 0;
				while n < 31 do
					now = GetTime();
					if now - querytime > 0.01 then
						querytime = GetTime();        
						if(AtlasLoot_Data[inst][n] ~= nil) then
							local queryitem = AL_FindId(string.sub(AtlasLoot_Data[inst][n][4], 5), difficulty) or AtlasLoot_Data[inst][n][2];
							if (queryitem) and (queryitem ~= nil) and (queryitem ~= "") and (queryitem ~= 0) and (string.sub(queryitem, 1, 1) ~= "s") then
								AtlasLootTooltip:SetHyperlink("item:"..queryitem..":0:0:0:0:0:0:0");
							end
						end
						n = n + 1;
					end
				end
				print("Query for "..inst.." in instance "..inst.." finished");
			end
		end
	end
	print("You may need to reload your UI to finalize the Query")
end
