local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local modules = { "AtlasLoot_BurningCrusade", "AtlasLoot_Crafting", "AtlasLoot_OriginalWoW", "AtlasLoot_WorldEvents", "AtlasLoot_WrathoftheLichKing" };

AtlasLoot_QualityMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DifficultyMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_DiffSubMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_EquipMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_EquipSubMenu = AceLibrary("Dewdrop-2.0");
AtlasLoot_WeaponSubMenu = AceLibrary("Dewdrop-2.0");

AtlasLoot_Argument1Menu = AceLibrary("Dewdrop-2.0");
AtlasLoot_Argument1SubMenu = AceLibrary("Dewdrop-2.0");

AtlasLoot_Argument2Menu = AceLibrary("Dewdrop-2.0");
AtlasLoot_Argument2SubMenu = AceLibrary("Dewdrop-2.0");

AtlasLoot_Argument3Menu = AceLibrary("Dewdrop-2.0");
AtlasLoot_Argument3SubMenu = AceLibrary("Dewdrop-2.0");

local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local DEFAULT = "|cffFFd200";

AtlasLoot_FrameMenuList = {
    ["EquipSubMenu"] = {AtlasLoot_EquipSubMenu, "AtlasLootAdvancedSearch_EquipSub", "Select Option", "equipType", "", "AtlasLootAdvancedSearch_WeaponSub"};
    ["MythicSubMenu"] = {AtlasLoot_DiffSubMenu, "AtlasLootAdvancedSearch_MythicSub", "Mythic+ 1", "difficulty", 5};
	["WeaponSubMenu"] = {AtlasLoot_WeaponSubMenu, "AtlasLootAdvancedSearch_WeaponSub", "Select Weapon Type", "equipType", ""};
}

AtlasLoot_AdvancedSearchMenus = {
    ["Difficulty"] ={
        [1] = {
            {"Normal", "difficulty", 2, "MythicSubMenu", "Disable"},
        },
        [2] = {
            {"Heroic", "difficulty", 3, "MythicSubMenu", "Disable"},
        },
        [3] = {
            {"Mythic/Ascended", "difficulty", 4, "MythicSubMenu", "Disable"},
        },
        [4] = {
            {"Mythic Plus", "difficulty", 5, "MythicSubMenu", "MythicPlus"},
        },
        [5] = {
            {"Bloodforged", "difficulty", 1, "MythicSubMenu", "Disable"},
        }, 
    };

    ["MythicPlus"] = {

    };

    ["Quality"] = { 
        [1] = {
            {AtlasLoot_FixText("=q0=").."Poor", "quality", "=q0="}, 
        }, 
        [2] = {
            {AtlasLoot_FixText("=q1=").."Normal", "quality", "=q1="}, 
        }, 
        [3] = {
            {AtlasLoot_FixText("=q2=").."Uncommon", "quality", "=q2="}, 
        }, 
        [4] = {
            {AtlasLoot_FixText("=q3=").."Rare", "quality", "=q3="}, 
        }, 
        [5] = {
            {AtlasLoot_FixText("=q4=").."Epic", "quality", "=q4="}, 
        }, 
        [6] = {
            {AtlasLoot_FixText("=q5=").."Legendary", "quality", "=q5="}, 
        },  
    };

    ["Equip"] = { 
        [1] = {
            {"Head", "equip", "#s1#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [2] = {
            {"Shoulder", "equip", "#s3#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [3] = {
            {"Chest", "equip", "#s5#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [4] = {
            {"Wrist", "equip", "#s8#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [5] = {
            {"Hands", "equip", "#s9#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [6] = {
            {"Waist", "equip", "#s10#", "EquipSubMenu", "ArmorType"}, 
        }, 
        [7] = {
            {"Legs", "equip", "#s11#", "EquipSubMenu", "ArmorType"}, 
        },
        [8] = {
            {"Feet", "equip", "#s12#", "EquipSubMenu", "ArmorType"}, 
        },
        [9] = {
            {"Back", "equip", "#s4#", "EquipSubMenu", "Disable"}, 
        },
        [10] = {
            {"Necklace", "equip", "#s2#", "EquipSubMenu", "Disable"}, 
        },
        [11] = {
            {"Ring", "equip", "#s13#", "EquipSubMenu", "Disable"}, 
        },
        [12] = {
            {"Trinket", "equip", "#s14#", "EquipSubMenu", "Disable"}, 
        },
        [13] = {
            {"Weapon/Shield", "equip", "#w", "EquipSubMenu", "WeaponEquip"}, 
        },
        [14] = {
            {"Relic", "equip", "#s16#", "EquipSubMenu", "RelicType"}, 
        },
    };

    ["ArmorType"] = {
        [1] = {
            {"Cloth", "equipType", "#a1#"}, 
        }, 
        [2] = {
            {"Leather", "equipType", "#a2#"}, 
        }, 
        [3] = {
            {"Mail", "equipType", "#a3#"}, 
        }, 
        [4] = {
            {"Plate", "equipType", "#a4#"}, 
        },
    };

    ["RelicType"] = {
        [1] = {
            {"Idols", "equipType", "#w14#"}, 
        }, 
        [2] = {
            {"Libram", "equipType", "#w16#"}, 
        }, 
        [3] = {
            {"Totem", "equipType", "#w15#"}, 
        }, 
        [4] = {
            {"Sigil", "equipType", "#w21#"}, 
        },
    };

	["WeaponEquip"] = {
		[1] = {
            {"One-Hand", "equip", "#h1#", "WeaponSubMenu", "WeaponType"}, 
        }, 
        [2] = {
            {"Two-Hand", "equip", "#h2#", "WeaponSubMenu", "WeaponType"}, 
        }, 
        [3] = {
            {"Main Hand", "equip", "#h3#", "WeaponSubMenu", "WeaponType"}, 
        }, 
        [4] = {
            {"Off Hand", "equip", "#h4#", "WeaponSubMenu", "WeaponType"}, 
        },
		[5] = {
			{"Ranged", "equip", "ranged", "WeaponSubMenu", "WeaponType"},
		}
	};

	["WeaponType"] = {
		[1] = {
			{"Axe", "equipType", "#w1#"}
		},
		[2] = {
			{"Mace", "equipType", "#w6#"}
		},
		[3] = {
			{"Sword", "equipType", "#w10#"}
		},
		[4] = {
			{"Polearm", "equipType", "#w7#"}
		},
		[5] = {
			{"Dagger", "equipType", "#w4#"}
		},
		[6] = {
			{"Staff", "equipType", "#w9#"}
		},
		[7] = {
			{"Fist Weapon", "equipType", "#w13#"}
		},
		[8] = {
			{"Bow", "equipType", "#w2#"}
		},
		[9] = {
			{"Gun", "equipType", "#w5#"}
		},
		[10] = {
			{"Crossbow", "equipType", "#w3#"}
		},
		[11] = {
			{"Wand", "equipType", "#w12#"}
		},
		[12] = {
			{"Thrown", "equipType", "#w11#"}
		},
		[13] = {
			{"Shield", "equipType", "#w8#"}
		},	
	};
}

AtlasLoot_AdvancedSearchArguments = {
	["Arguments"] = {
		[1] = {
			["Primary Stats"] = {
				{"Stamina", "sta"},
				{"Strength", "str"},
				{"Agility", "agi"};
				{"Intellect", "int"},
				{"Spirit", "spr"},
			}
		};
		[2] = {
			["Secondary Stats"] = {
				{"Attack Power", "ap"};
				{"Spell Power", "sp"};
				{"Crit", "crit"};
				{"Hit", "hit"};
				{"Haste", "haste"};
				{"Expertise", "exp"};
				{"Armor Pen", "arp"};
				{"Spell Pen", "spp"};
			}
		};
		[3] = {
			["Defensive Stats"] = {
				{"Defense", "def"};
				{"Dodge", "dodge"};
				{"Parry", "parry"};
				{"Block", "block"};
				{"Block Value", "bv"};
				{"Resilience", "res"};
			}
		};
		[4] = {
			["Resistances"] = {
				{"Armor", "armor"};
				{"Holy Resist", "resholy"};
				{"Fire Resist", "resfire"};
				{"Nature Resist", "resnat"};
				{"Frost Resist", "resfrost"};
				{"Shadow Resist", "resshad"};
				{"Arcane Resist", "resarc"};
			}
		};
		[5] = {
			["Sockets"] = {
				{"Any", "socket"};
				{"Red Socket", "socketred"};
				{"Blue Socket", "socketblue"};
				{"Yellow Socket", "socketyellow"};
				{"Meta Socket", "socketmeta"};
			}
		};
		[6] = {
			["Other"] = {
				{"Required Level", "minlvl"};
				{"Item Level", "ilvl"};
			}
		};

		[7] = {
			{RED.."Reset", "reset"}
		}
	};

	["Operators"] = {
		[1] = {
			{"Equals", "=", true};
		},
		[2] = {
			{"Greater Than", ">", true}
		},
		[3] = {
			{"Greater Than Or Equal", ">=", true}
		},
		[4] = {
			{"Less Than", "<", true}
		},
		[5] = {
			{"Less Than Or Equal", "<=", true}
		},
		[6] = {
			{"Not Equal", "<>", true}
		},
		[7] = {
			{RED.."Reset", "reset", true}
		}
	}
}

local findByQuality = false;
local findByEquip = false;
local findByEquipType = false;
local findByName = false;
local findByDifficulty = false;

AdvancedSearchOptions = {
    ["quality"] = "",
    ["equip"] = "",
    ["equipType"] = "",
    ["difficulty"] = 0,
	["arg1"] = "",
	["arg1op"] = "",
	["arg2"] = "",
	["arg2op"] = "",
	["arg3"] = "",
	["arg3op"] = "",
}

local AtlasLoot_AdvancedSearchQuality = {
	["=q0="] = "Poor",
	["=q1="] = "Common",
	["=q2="] = "Uncoom",
	["=q3="] = "Rare",
	["=q4="] = "Epic",
	["=q5="] = "Legendary",
	["=q6="] = "Artifact",
	["=q7="] = "Heirloom"
};

function AtlasLoot_AdvancedSearchShow()
	if (AtlasLootAdvancedSearch:IsVisible()) then
		AtlasLoot_AdvancedSearchClose();
		return;
	end

    pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };

    AtlasLoot_AdvancedSearchRegister(AtlasLoot_QualityMenu, AtlasLootAdvancedSearch_Quality, AtlasLoot_AdvancedSearchMenus["Quality"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_EquipMenu, AtlasLootAdvancedSearch_Equip, AtlasLoot_AdvancedSearchMenus["Equip"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_DifficultyMenu, AtlasLootAdvancedSearch_Difficulty, AtlasLoot_AdvancedSearchMenus["Difficulty"]);

	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument1Menu, AtlasLootAdvancedSearch_Argument1, "1", AtlasLoot_AdvancedSearchArguments["Arguments"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument2Menu, AtlasLootAdvancedSearch_Argument2, "2", AtlasLoot_AdvancedSearchArguments["Arguments"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument3Menu, AtlasLootAdvancedSearch_Argument3, "3", AtlasLoot_AdvancedSearchArguments["Arguments"]);

	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument1SubMenu, AtlasLootAdvancedSearch_Argument1Sub, "1", AtlasLoot_AdvancedSearchArguments["Operators"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument2SubMenu, AtlasLootAdvancedSearch_Argument2Sub, "2", AtlasLoot_AdvancedSearchArguments["Operators"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument3SubMenu, AtlasLootAdvancedSearch_Argument3Sub, "3", AtlasLoot_AdvancedSearchArguments["Operators"]);

    --Hide all elements that could be in the AtlasTable
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootItemsFrame_BACK"):Hide();

    AtlasLootDefaultFrame_SubMenu2:Disable();
    AtlasLootDefaultFrame_SelectedTable2:SetText("");
    AtlasLootDefaultFrame_SelectedTable2:Hide();

    AtlasLootDefaultFrame_SubMenu:Disable();
    AtlasLootDefaultFrame_SelectedTable:SetText("");

	AtlasLootServerQueryButton:Hide();

    --Ditch the Quicklook selector
    AtlasLoot_QuickLooks:Hide();
    AtlasLootQuickLooksButton:Hide();
	
	-- Hide the Filter Check-Box
	AtlasLootFilterCheck:Hide();

    for i = 1, 30, 1 do
        getglobal("AtlasLootItem_"..i.."_Unsafe"):Hide();
		getglobal("AtlasLootMenuItem_"..i):Hide();
        getglobal("AtlasLootItem_"..i):Hide();
        getglobal("AtlasLootItem_"..i).itemID = 0;
        getglobal("AtlasLootItem_"..i).spellitemID = 0;
	end

    --Setup Mythic+ dropdown options;
    for i = 1, 20, 1 do
        AtlasLoot_AdvancedSearchMenus["MythicPlus"][i] = {
            {"Mythic+ "..i, "difficulty", i + 4};
        }
    end

	--Reset Search options
	AtlasLoot_AdvancedSearchReset();

    AtlasLoot_BossName:SetText("Advanced Search");

    AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetParent(pFrame[2]);
	AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetPoint(pFrame[1], pFrame[2], pFrame[3], pFrame[4], pFrame[5]);
    AtlasLootAdvancedSearch:Show();
end

function AtlasLoot_AdvancedSearchReset()
	AdvancedSearchOptions = { }
	AdvancedSearchOptions = {
		["quality"] = "",
		["equip"] = "",
		["equipType"] = "",
		["difficulty"] = 0,
		["arg1"] = "",
		["arg1op"] = "",
		["arg2"] = "",
		["arg2op"] = "",
		["arg3"] = "",
		["arg3op"] = "",
	}

	findByQuality = false;
	findByEquip = false;
	findByEquipType = false;
	findByName = false;
	findByDifficulty = false;

	AtlasLootAdvancedSearch_Quality:SetText("Select Quality");
	AtlasLootAdvancedSearch_Equip:SetText("Select Item Type");
	AtlasLootAdvancedSearch_Difficulty:SetText("Select Difficulty");
	AtlasLootAdvancedSearch_Argument1:SetText("Select Option");
	AtlasLootAdvancedSearch_Argument2:SetText("Select Option");
	AtlasLootAdvancedSearch_Argument3:SetText("Select Option");

	AtlasLootAdvancedSearch_EquipSub:Disable();
	AtlasLootAdvancedSearch_EquipSub:SetText("Select Option")
    AtlasLootAdvancedSearch_MythicSub:Disable();
	AtlasLootAdvancedSearch_MythicSub:SetText("Mythic+ 1");
	AtlasLootAdvancedSearch_WeaponSub:Disable();
	AtlasLootAdvancedSearch_WeaponSub:SetText("Select Weapon Type")

	AtlasLootAdvancedSearch_Argument1Sub:Disable();
	AtlasLootAdvancedSearch_Argument1Sub:SetText("Select Option");
	AtlasLootAdvancedSearch_Argument1Value:Hide();
	AtlasLootAdvancedSearch_Argument1Value:SetText("");
	AtlasLootAdvancedSearch_Argument2Sub:Disable();
	AtlasLootAdvancedSearch_Argument2Sub:SetText("Select Option");
	AtlasLootAdvancedSearch_Argument2Value:Hide();
	AtlasLootAdvancedSearch_Argument2Value:SetText("");
	AtlasLootAdvancedSearch_Argument3Sub:Disable();
	AtlasLootAdvancedSearch_Argument3Sub:SetText("Select Option");
	AtlasLootAdvancedSearch_Argument3Value:Hide();
	AtlasLootAdvancedSearch_Argument3Value:SetText("");
end

function AtlasLoot_AdvancedSearchClose() 
	AtlasLootAdvancedSearch:Hide();
	AtlasLootServerQueryButton:Show();

	if (SearchPrevData[1] ~= "") then
		AtlasLoot_ShowItemsFrame(SearchPrevData[1], SearchPrevData[2], SearchPrevData[3], SearchPrevData[4]);
	end
end

function AtlasLoot_AdvancedSearchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
	--Setups child menus and sets search options to default
    if(ChildMenu ~= nil) then
        if(ChildMenuRegister == "Disable") then
			AdvancedSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5];
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):Disable();
			--Disable assigned children menus as well
			if(AtlasLoot_FrameMenuList[ChildMenu][6]) then
				getglobal(AtlasLoot_FrameMenuList[ChildMenu][6]):Disable();
			end
        else 
            AtlasLoot_AdvancedSearchRegister(AtlasLoot_FrameMenuList[ChildMenu][1], getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]), AtlasLoot_AdvancedSearchMenus[ChildMenuRegister]);
			AdvancedSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5];
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):Enable();
            getglobal(AtlasLoot_FrameMenuList[ChildMenu][2]):SetText(AtlasLoot_FrameMenuList[ChildMenu][3]);
			--Disable assigned children menus as well
			if(AtlasLoot_FrameMenuList[ChildMenu][6]) then
				getglobal(AtlasLoot_FrameMenuList[ChildMenu][6]):Disable();
			end
        end
    end
	AdvancedSearchOptions[VariableToSet] = VariableValue;
    Object[1]:SetText(Object[3]);
    Object[2]:Close();
end

function AtlasLoot_AdvancedSearchRegister(DropDown, DropDownObject, MenuOption)
    DropDown:Register(DropDownObject,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if level == 1 then
				if AtlasLoot_AdvancedSearchMenus then
                    for k,v in ipairs(MenuOption) do
                        --If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            if v[1][1] ~= "" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchMenuClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', v[1][2],
                                    'arg3', v[1][3],
                                    'arg4', v[1][4],
                                    'arg5', v[1][5],
                                    'notCheckable', true
                                )
                            end
                        else
                            local lock=0;
                            --If an entry linked to a subtable
                            for i,j in pairs(v) do
                                if lock==0 then
                                    DropDown:AddLine(
                                        'text', i,
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'hasArrow', true,
                                        'value', j,
                                        'notCheckable', true
                                    )
                                    lock=1;
                                end
                            end
                        end
                    end
                end
                --Close button
				DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
			end
		end,
		'dontHook', true
	)
end

function AtlasLoot_AdvancedSearchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
	if IsOperator and VariableValue == "reset" then
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";

		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):Hide();

		Object[1]:SetText("Select Option");
    	Object[2]:Close();
	elseif IsOperator then
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = VariableValue;

		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):Show();

		Object[1]:SetText(Object[3]);
    	Object[2]:Close();
	elseif VariableValue == "reset" then
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Sub"):SetText("Select Option");
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Sub"):Disable();

		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):Hide();

		AdvancedSearchOptions["arg"..VariableToSet] = "";
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";		

		Object[1]:SetText("Select Option");
		Object[2]:Close();
	else
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Sub"):SetText("Select Option");
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Sub"):Enable();
		AdvancedSearchOptions["arg"..VariableToSet.."op"] = "";	

		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):SetText("");
		getglobal("AtlasLootAdvancedSearch_Argument"..VariableToSet.."Value"):Hide();
		
		AdvancedSearchOptions["arg"..VariableToSet] = VariableValue;
		Object[1]:SetText(Object[3]);
		Object[2]:Close();
	end
end

function AtlasLoot_AdvancedSearchArgumentRegister(DropDown, DropDownObject, ArgumentCount, ArgumentMenu)
    DropDown:Register(DropDownObject,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
		'children', function(level, value)
			if level == 1 then
				if AtlasLoot_AdvancedSearchArguments then
                    for k,v in ipairs(ArgumentMenu) do
                        --If a link to show a submenu
                        if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                            local checked = false;
                            if v[1][3] == "Submenu" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[1][2],
									'arg4', v[1][3],
                                    'notCheckable', true
                                )
                            elseif v[1][1] ~= "" then
                                DropDown:AddLine(
                                    'text', v[1][1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1][1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[1][2],
									'arg4', v[1][3],
                                    'notCheckable', true
                                )
                            end
                        else
                            local lock=0;
                            --If an entry linked to a subtable
                            for i,j in pairs(v) do
                                if lock==0 then
                                    DropDown:AddLine(
                                        'text', i,
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'hasArrow', true,
                                        'value', j,
                                        'notCheckable', true
                                    )
                                    lock=1;
                                end
                            end
                        end
                    end
                end
                --Close button
				DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
			elseif level == 2 then
				if value then
                    for k,v in ipairs(value) do
                        if type(v) == "table" then
                            if (type(v[1]) == "string") then
                                local checked = false;
                                --If an entry to show a submenu
                                if v[4] == "Header" then
                                    DropDown:AddLine(
                                        'text', v[1],
                                        'textR', 0.2,
                                        'textG', 0.82,
                                        'textB', 0.5,
                                        'func', AtlasLoot_AdvancedSearchArgumentClick,
										'arg1', {DropDownObject, DropDown, v[1]},
										'arg2', ArgumentCount,
										'arg3', v[2],
										'arg4', v[3],
                                        'notCheckable', true
                                    )
                                elseif v[3] == "Submenu" then
                                    DropDown:AddLine(
                                    'text', v[1],
                                    'textR', 1,
                                    'textG', 0.82,
                                    'textB', 0,
                                    'func', AtlasLoot_AdvancedSearchArgumentClick,
                                    'arg1', {DropDownObject, DropDown, v[1]},
                                    'arg2', ArgumentCount,
                                    'arg3', v[2],
									'arg4', v[3],
                                    'notCheckable', true
                                )
                                else
                                    DropDown:AddLine(
                                        'text', v[1],
                                        'textR', 1,
                                        'textG', 0.82,
                                        'textB', 0,
                                        'func', AtlasLoot_AdvancedSearchArgumentClick,
                                        'arg1', {DropDownObject, DropDown, v[1]},
                                        'arg2', ArgumentCount,
                                        'arg3', v[2],
										'arg4', v[3],
                                        'notCheckable', true
                                    )
                                end
                            end
                        end
                    end
                end
                DropDown:AddLine(
					'text', AL["Close Menu"],
                    'textR', 0,
                    'textG', 1,
                    'textB', 1,
					'func', function() DropDown:Close() end,
					'notCheckable', true
				)
            end
		end,
		'dontHook', true
	)
end



function AtlasLoot:AdvancedSearch(Text, arg1, arg2, arg3)
	if not Text then return end
	Text = strtrim(Text);
	if Text == "" then findByName = false else findByName = true end
	local searchTitleString = Text
	
    local dif = 2;

    if AdvancedSearchOptions["difficulty"] ~= 0 then
        findByDifficulty = true;
		dif = AdvancedSearchOptions["difficulty"]
		searchTitleString = searchTitleString.." "..WHITE..AtlasLoot_Difficulty.Search[dif];
    end

    if AdvancedSearchOptions["quality"] ~= "" then
        findByQuality = true;
		searchTitleString = searchTitleString.." "..AtlasLoot_FixText(AdvancedSearchOptions["quality"])..AtlasLoot_AdvancedSearchQuality[AdvancedSearchOptions["quality"]];
    end

	if AdvancedSearchOptions["equipType"] ~= "" then
        findByEquipType = true;
		searchTitleString = searchTitleString.." "..WHITE..AtlasLoot_FixText(AdvancedSearchOptions["equipType"]);
    end

	if AdvancedSearchOptions["equip"] ~= "" then
        findByEquip = true;
		searchTitleString = searchTitleString.." "..WHITE..AtlasLoot_FixText(AdvancedSearchOptions["equip"]);
    end

	local advSearchString = "";

	if AdvancedSearchOptions["arg1"] ~= "" and AdvancedSearchOptions["arg1op"] ~= "" and arg1 ~= "" then
		advSearchString = advSearchString..AdvancedSearchOptions["arg1"]..AdvancedSearchOptions["arg1op"]..arg1;
		searchTitleString = searchTitleString.." "..AdvancedSearchOptions["arg1"].." "..AdvancedSearchOptions["arg1op"].." "..arg1;
	end

	if AdvancedSearchOptions["arg2"] ~= "" and AdvancedSearchOptions["arg2op"] ~= "" and arg2 ~= "" then
		if advSearchString == "" then
			advSearchString = advSearchString..AdvancedSearchOptions["arg2"]..AdvancedSearchOptions["arg2op"]..arg2;
			searchTitleString = searchTitleString.." "..AdvancedSearchOptions["arg2"].." "..AdvancedSearchOptions["arg2op"].." "..arg2;
		else
			advSearchString = advSearchString.."&"..AdvancedSearchOptions["arg2"]..AdvancedSearchOptions["arg2op"]..arg2;
			searchTitleString = searchTitleString.." & "..AdvancedSearchOptions["arg2"].." "..AdvancedSearchOptions["arg2op"].." "..arg2;
		end
	end

	if AdvancedSearchOptions["arg3"] ~= "" and AdvancedSearchOptions["arg3op"] ~= "" and arg3 ~= "" then
		if advSearchString == "" then
			advSearchString = advSearchString..AdvancedSearchOptions["arg3"]..AdvancedSearchOptions["arg3op"]..arg3;
			searchTitleString = searchTitleString.." "..AdvancedSearchOptions["arg3"].." "..AdvancedSearchOptions["arg3op"].." "..arg3
		else
			advSearchString = advSearchString.."&"..AdvancedSearchOptions["arg3"]..AdvancedSearchOptions["arg3op"]..arg3;
			searchTitleString = searchTitleString.." & "..AdvancedSearchOptions["arg3"].." "..AdvancedSearchOptions["arg3op"].." "..arg3
		end
	end

	advSearchString = string.lower(advSearchString);
	
	-- Decide if we need load all modules or just specified ones
	local allDisabled = not self.db.profile.SearchOn.All;
	if allDisabled then
		for _, module in ipairs(modules) do
			if self.db.profile.SearchOn[module] == true then
				allDisabled = false;
				break;
			end
		end
	end
	if allDisabled then
		DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot"]..": "..WHITE..AL["You don't have any module selected to search on."]);
		return;
	end
	if self.db.profile.SearchOn.All then
		AtlasLoot_LoadAllModules();
	else
		for k, v in pairs(self.db.profile.SearchOn) do
			if k ~= "All" and v == true and not IsAddOnLoaded(k) and LoadAddOn(k) and self.db.profile.LoDNotify then
				DEFAULT_CHAT_FRAME:AddMessage(GREEN..AL["AtlasLoot"]..": "..ORANGE..k..WHITE.." "..AL["sucessfully loaded."]);
			end
		end
	end
	
    AtlasLootCharDB["SearchResult"] = {};
	AtlasLootCharDB.LastSearchedText = searchTitleString;
    
	local text = string.lower(Text);
    --[[if not self.db.profile.SearchOn.All then
        local module = AtlasLoot_GetLODModule(dataSource);
        if not module or self.db.profile.SearchOn[module] ~= true then return end
    end]]
	
	local function HaveBinaryOperator (textValue)
		for index, operator in ipairs(BINARYOPERATORS) do
			if string.find(textValue, operator) then
				return operator;
			end
		end
		return nil;
	end
	
	local function HaveOperator (textValue)
		for index, operator in ipairs(OPERATORS) do
			if string.find(textValue, operator) then
				return operator;
			end
		end
		return nil;
	end
	
	local function SplitString(str, delimiter)
		result = {};
		for match in (str..delimiter):gmatch("(.-)"..delimiter) do
			table.insert(result, match);
		end
		return result;
	end
	
	local function CompareNumbersByOperator (operator, baseValue, valueToCompare)
		if baseValue ~= nil and valueToCompare ~= nil
			and ((operator == "<>") and (baseValue ~= valueToCompare)
				or (operator == "<=") and (baseValue <= valueToCompare)
				or (operator == ">=") and (baseValue >= valueToCompare)
				or (operator == "=") and (baseValue == valueToCompare)
				or (operator == "<") and (baseValue < valueToCompare)
				or (operator == ">") and (baseValue > valueToCompare))
		then
			return true;
		end
		return false;
	end
	
	-- Region: Stat Filter
	local function IsSocketTermInSearchText(searchText)
		if string.find(searchText, "socket")
			or string.find(searchText, "sockets")
			or string.find(searchText, "gem")
			or string.find(searchText, "gems")
		then
			return true;
		end
		return false;
	end
	
	local function IsSocketTermEqualsSearchText(searchText)
		if searchText == "socket"
			or searchText == "sockets"
			or searchText == "gem"
			or searchText == "gems"
		then
			return true;
		end
		return false;
	end
	
	local function FilterSockets(searchTextItem, stats, operator)
		if stats then
			if IsSocketTermInSearchText(searchTextItem) then
				local searchedStatValue = tonumber(string.match(searchTextItem, "%d+"));
				local searchTerm = string.gsub(searchTextItem, tostring(searchedStatValue), "");
				searchTerm = string.gsub(searchTerm, operator, "");

				if IsSocketTermEqualsSearchText(searchTerm) then
					local socketCount = 0;
					for _, socketType in pairs(ITEMSOCKETSTATFILTERS) do
						if socketType then
							local statValue = tonumber(stats[socketType]);
							if statValue then
								socketCount = socketCount + statValue;
							end
						end
					end
					if CompareNumbersByOperator(operator, socketCount, searchedStatValue) then
						return true;
					end
				end
			end
		end
		return false;
	end
	
	local function HaveStat (textValue)
		for index, statItem in pairs(STATFILTERS) do
			if textValue == index then
				return STATFILTERS[index];
			end
		end
		return nil;
	end
	
	local function IsItemStatMatch(searchTextItem, stats, operator)
		if stats then
			local searchedStat = tonumber(string.match(searchTextItem, "%d+"));
			local searchTerm = searchTextItem.gsub(searchTextItem, tostring(searchedStat), "");
			searchTerm = string.gsub(searchTerm, operator, "");
		
			local statFilterFound = HaveStat(searchTerm);
			if statFilterFound then
				local statValue = tonumber(stats[statFilterFound]);
				if CompareNumbersByOperator(operator, statValue, searchedStat) then
					return true;
				end
			else
				return FilterSockets(searchTextItem, stats, operator);
			end
		end
		return false;
	end
	-- EndRegion
	
	-- Region: Item Level Filter
	local function HaveItemInfoFilter (textValue)
		for index, itemInfoFilter in pairs(ITEMINFOFILTERS) do
			if textValue == index then
				return index;
			end
		end
		return nil;
	end
	
	local function IsEquipableGear (textValue)
		if textValue == nil or textValue == "" then
			return false;
		end
		for index, equipLoc in ipairs(ITEMLEVELGEAREQUIPFILTER) do
			if string.find(textValue, equipLoc) then
				return false;
			end
		end
		return true;
	end
	
	local function IsItemLevelFilter (textValue)
		local itemLevelFilter = ITEMINFOFILTERS["ilvl"];
		if string.match(textValue, itemLevelFilter) then
			return true;
		end
		return false;
	end
	
	local function IsItemLevelFilterMatch(searchText, itemLvl, itemEquipLoc, operator)
		local searchedItemLevel = tonumber(string.match(searchText, "%d+"));
		local searchTerm = searchText.gsub(searchText, tostring(searchedItemLevel), "");
		searchTerm = string.gsub(searchTerm, operator, "");
		
		local itemInfoFilter = HaveItemInfoFilter(searchTerm);
		if itemInfoFilter and itemLvl ~= nil and itemLvl > 0
			--TODO Equipment filter patch
			--and IsEquipableGear(itemEquipLoc)
			and IsItemLevelFilter(itemInfoFilter)
		then
			if CompareNumbersByOperator(operator, itemLvl, searchedItemLevel) then
				return true;
			end
		end
		return false;
	end

	local function IsMinLevelFilter (textValue)
		local itemLevelFilter = ITEMINFOFILTERS["minlvl"];
		if string.match(textValue, itemLevelFilter) then
			return true;
		end
		return false;
	end

	local function IsMinLevelFilterMatch(searchText, minLvl, operator)
		local searchedMinLevel = tonumber(string.match(searchText, "%d+"));
		local searchTerm = searchText.gsub(searchText, tostring(searchedMinLevel), "");
		searchTerm = string.gsub(searchTerm, operator, "");
		
		local itemInfoFilter = HaveItemInfoFilter(searchTerm);
		if itemInfoFilter and minLvl ~= nil and minLvl > 0
			and IsMinLevelFilter(itemInfoFilter)
		then
			if CompareNumbersByOperator(operator, minLvl, searchedMinLevel) then
				return true;
			end
		end
		return false;
	end
	-- EndRegion
	
	-- Checks for Partial Matching
    local partial = self.db.profile.PartialMatching;
	
	-- Checks for Item Filters by searching for an Operator in the search text
	local operator = HaveOperator(advSearchString);

    for dataID, data in pairs(AtlasLoot_Data) do
        for _, v in ipairs(data) do
            local _id;
            local found = true;

			local dup = "";
			if v[AtlasLoot_Difficulty.DUPLICATE] then
				dup = " "..v[AtlasLoot_Difficulty.DUPLICATE]
			end

            if findByDifficulty then
                _id = AL_FindId(string.sub(v[4]..dup, 5), dif);
                if _id == nil then found = false; end
            else
                _id = v[2];
            end

            if _id ~= nil and type(_id) == "number" and _id > 0 then
                -- Name, Link, Quality(num), iLvl(num), minLvl(num), itemType(localized string), itemSubType(localized string), stackCount(num), itemEquipLoc(enum), texture(link to a local file), displayId(num)
                local itemName, _, itemQuality, itemLvl, minLvl, _, _, _, itemEquipLoc, tex = GetItemInfo(_id);
                
                if GetItemIcon(_id) == nil then
                    found = false;
                end

				if(dif > 4 and (data.Type ~= "ClassicDungeonExt" --[[or data.Type ~= "BCDungeon"]])) then
					found = false;
				end
				
                itemName = string.sub(v[4], 5)

                local quality = string.sub(v[4], 3, -(string.len(v[4]) - 2));
				if dif > 2 and tonumber(quality) then
					if tonumber(quality) < 4 then
						quality = 4;
					end
				end

                if findByQuality then
                    if not (AdvancedSearchOptions["quality"] == "=q"..quality.."=") then
                        found = false;
                    end
                end

				--v[5] contains equip data
				if findByEquip then
					if v[5] then
						if string.find(v[5], AdvancedSearchOptions["equip"]) then
							if findByEquipType then
								if not (string.find(v[5], AdvancedSearchOptions["equipType"])) then
									found = false;
								end
							end
						else
							found = false
						end
					else
						found = false;
					end
				end

                if operator ~= nil and found then
					local stats = GetItemStats("item:"..tostring(_id));
					
					 -- Currently only supports "&"
					local binaryOperator = HaveBinaryOperator(advSearchString);
					if binaryOperator ~= nil then
						local searchConditionsMet = true;
						local searchItems = SplitString(advSearchString, binaryOperator);
						
						if searchItems then
							for _, searchTextItem in ipairs(searchItems) do
								local localOperator = HaveOperator(searchTextItem);
								if not localOperator
									or not (
										-- Stat Filter
										IsItemStatMatch(searchTextItem, stats, localOperator)
										-- Item Level Filter
										or IsItemLevelFilterMatch(searchTextItem, itemLvl, itemEquipLoc, localOperator)
										-- Min Level Filter
										or IsMinLevelFilterMatch(searchTextItem, minLvl, localOperator)
									)
								then
									searchConditionsMet = false;
									break;
								end
							end
							
							if not (searchConditionsMet) then
								found = false;
							end
						end
					else
						-- Stat Filter
						if not (IsItemStatMatch(advSearchString, stats, operator)
							-- Item Level Filter
							or IsItemLevelFilterMatch(advSearchString, itemLvl, itemEquipLoc, operator)
							-- Min Level Filter
							or IsMinLevelFilterMatch(advSearchString, minLvl, operator))
						then
							found = false;
						end
					end
					
					-- Stat Table Cleanup
					if stats then
						table.wipe(stats);
					end
                end

                
                if findByName and found then
                    if partial then
                        found = string.find(string.lower(itemName), text);
                    else
                        found = string.lower(itemName) == text;
                    end
                end

                if found then

					local difficultyName = AtlasLoot_Difficulty.Search[dif];
					local tempdif = dif
					if dif == 4 and data.Type then
						if string.find(data.Type, "Raid") then
							difficultyName = "Ascended";
							tempdif = 99;
						end
					end

					itemName = "=q"..quality.."="..itemName
                    if AtlasLoot_TableNames[dataID] then lootpage = AtlasLoot_TableNames[dataID][1]; else lootpage = "Argh!"; end
                    table.insert(AtlasLootCharDB["SearchResult"], { 0, _id, v[3], itemName, lootpage.." ("..GREEN..difficultyName..DEFAULT..")", "", "", dataID.."|".."\"\"", [AtlasLoot_Difficulty.DUPLICATE] = dup, [AtlasLoot_Difficulty.DIF_SEARCH] = tempdif});
                end

            --[[elseif (v[2] ~= nil) and (v[2] ~= "") and (string.sub(v[2], 1, 1) == "s") then 
                local spellName = GetSpellInfo(string.sub(v[2], 2));
                if not spellName then
                    if (string.sub(v[4], 1, 2) == "=d") then  
                        spellName = gsub(v[4], "=ds=", "");
                    else
                        spellName = gsub(v[4], "=q%d=", ""); 
                    end
                end
                local found;
                if partial then
                    found = string.find(string.lower(spellName), text);
                else
                    found = string.lower(spellName) == text;
                end
                if found then
                    spellName = string.sub(v[4], 1, 4)..spellName;
                    if AtlasLoot_TableNames[dataID][1] then lootpage = AtlasLoot_TableNames[dataID][1]; else lootpage = "Argh!"; end
                    table.insert(AtlasLootCharDB["SearchResult"], { 0, v[2], v[3], spellName, lootpage, "", "", dataID.."|".."\"\"" });
                end--]]
            end
        end
    end
	
	if #AtlasLootCharDB["SearchResult"] == 0 then
		local itemFilterErrorMessage = "";
		if operator then
			itemFilterErrorMessage = [[
			Please check if you have a typo in the filter.
			To check filter keys, type "/atlaslootfilterkeys".
			To check filter examples, type "/atlaslootfilterexample".
			You might also have to query the server for item informations to load them into your client's Cache.]];
		end
		DEFAULT_CHAT_FRAME:AddMessage(RED..AL["AtlasLoot"]..": "..WHITE..AL["No match found for"].." \""..Text.."\"."..itemFilterErrorMessage);
	else
		AtlasLootServerQueryButton:Show();
		currentPage = 1;
		SearchResult = AtlasLoot_CategorizeWishList(AtlasLootCharDB["SearchResult"]);
		AtlasLoot_ShowItemsFrame("SearchResult", "SearchResultPage1", (AL["Search Result: %s"]):format(AtlasLootCharDB.LastSearchedText or ""), pFrame);
	end
end