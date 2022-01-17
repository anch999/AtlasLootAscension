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

AdvSearchSubMenuEnabled = 0;
AdvSearchSubMenuText = "";
AdvSearchSubMenu2Enabled = 0;
AdvSearchSubMenuText = "";

AdvSearchSetup = false;

AtlasLoot_FrameMenuList = {
    ["EquipSubMenu"] = {AtlasLoot_EquipSubMenu, "AtlasLootAdvancedSearch_EquipSub", "Select Option", "type", "", "AtlasLootAdvancedSearch_WeaponSub"};
    ["MythicSubMenu"] = {AtlasLoot_DiffSubMenu, "AtlasLootAdvancedSearch_MythicSub", "Mythic+ 1", "difficulty", 5};
	["WeaponSubMenu"] = {AtlasLoot_WeaponSubMenu, "AtlasLootAdvancedSearch_WeaponSub", "Select Weapon Type", "type", ""};
}

AtlasLoot_AdvancedSearchMenus = {
    ["Difficulty"] ={
        [1] = {
            {"Normal", "difficulty", AtlasLoot_Difficulty.Normal, "MythicSubMenu", "Disable"},
        },
        [2] = {
            {"Heroic", "difficulty", AtlasLoot_Difficulty.Heroic, "MythicSubMenu", "Disable"},
        },
        [3] = {
            {"Mythic/Ascended", "difficulty", AtlasLoot_Difficulty.Mythic, "MythicSubMenu", "Disable"},
        },
        [4] = {
            {"Mythic Plus", "difficulty", AtlasLoot_Difficulty.MythicPlus[1], "MythicSubMenu", "MythicPlus"},
        },
        [5] = {
            {"Bloodforged", "difficulty", AtlasLoot_Difficulty.Bloodforged, "MythicSubMenu", "Disable"},
        },
    };

    ["MythicPlus"] = {

    };

    ["Quality"] = {
        [1] = {
            {AtlasLoot_FixText("=q0=").."Poor", "quality", "poor"},
        },
        [2] = {
            {AtlasLoot_FixText("=q1=").."Normal", "quality", "normal"},
        },
        [3] = {
            {AtlasLoot_FixText("=q2=").."Uncommon", "quality", "uncommon"},
        },
        [4] = {
            {AtlasLoot_FixText("=q3=").."Rare", "quality", "rare"},
        },
        [5] = {
            {AtlasLoot_FixText("=q4=").."Epic", "quality", "epic"},
        },
        [6] = {
            {AtlasLoot_FixText("=q5=").."Legendary", "quality", "legendary"},
        },
    };

    ["Equip"] = {
        [1] = {
            {"Head", "equip", "head", "EquipSubMenu", "ArmorType"},
        },
        [2] = {
            {"Shoulder", "equip", "shoulder", "EquipSubMenu", "ArmorType"},
        },
        [3] = {
            {"Chest", "equip", "chest", "EquipSubMenu", "ArmorType"},
        },
        [4] = {
            {"Wrist", "equip", "wrist", "EquipSubMenu", "ArmorType"},
        },
        [5] = {
            {"Hands", "equip", "hand", "EquipSubMenu", "ArmorType"},
        },
        [6] = {
            {"Waist", "equip", "waist", "EquipSubMenu", "ArmorType"},
        },
        [7] = {
            {"Legs", "equip", "legs", "EquipSubMenu", "ArmorType"},
        },
        [8] = {
            {"Feet", "equip", "feet", "EquipSubMenu", "ArmorType"},
        },
        [9] = {
            {"Back", "equip", "back", "EquipSubMenu", "Disable"},
        },
        [10] = {
            {"Necklace", "equip", "neck", "EquipSubMenu", "Disable"},
        },
        [11] = {
            {"Ring", "equip", "ring", "EquipSubMenu", "Disable"},
        },
        [12] = {
            {"Trinket", "equip", "trinket", "EquipSubMenu", "Disable"},
        },
        [13] = {
            {"Weapon/Shield", "equip", "#w", "EquipSubMenu", "WeaponEquip"},
        },
		[14] = {
			{"Held in Off-Hand", "equip", "holdable", "EquipSubMenu", "Disable"},
		},
        [15] = {
            {"Relic", "equip", "relic", "EquipSubMenu", "RelicType"},
        },
    };

    ["ArmorType"] = {
        [1] = {
            {"Cloth", "type", "Cloth"},
        },
        [2] = {
            {"Leather", "type", "Leather"},
        },
        [3] = {
            {"Mail", "type", "Mail"},
        },
        [4] = {
            {"Plate", "type", "Plate"},
        },
    };

    ["RelicType"] = {
        [1] = {
            {"Idols", "type", "idol"},
        },
        [2] = {
            {"Libram", "type", "libram"},
        },
        [3] = {
            {"Totem", "type", "totem"},
        },
        [4] = {
            {"Sigil", "type", "sigil"},
        },
    };

	["WeaponEquip"] = {
		[1] = {
            {"One-Hand", "equip", "weapon", "WeaponSubMenu", "WeaponType"},
        },
        [2] = {
            {"Two-Hand", "equip", "2h", "WeaponSubMenu", "WeaponType"},
        },
        [3] = {
            {"Main Hand", "equip", "mainhand", "WeaponSubMenu", "WeaponType"},
        },
        [4] = {
            {"Off Hand", "equip", "offhand", "WeaponSubMenu", "WeaponType"},
        },
		[5] = {
			{"Ranged", "equip", "ranged", "WeaponSubMenu", "WeaponType"},
		}
	};

	["WeaponType"] = {
		[1] = {
			{"Axe", "type", "axe"}
		},
		[2] = {
			{"Mace", "type", "mace"}
		},
		[3] = {
			{"Sword", "type", "sword"}
		},
		[4] = {
			{"Polearm", "type", "polearm"}
		},
		[5] = {
			{"Dagger", "type", "dagger"}
		},
		[6] = {
			{"Staff", "type", "stave"}
		},
		[7] = {
			{"Fist Weapon", "type", "fist"}
		},
		[8] = {
			{"Bow", "type", "bow"}
		},
		[9] = {
			{"Gun", "type", "gun"}
		},
		[10] = {
			{"Crossbow", "type", "crossbow"}
		},
		[11] = {
			{"Wand", "type", "wand"}
		},
		[12] = {
			{"Thrown", "type", "thrown"}
		},
		[13] = {
			{"Shield", "type", "shield"}
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

AdvancedSearchOptions = {
    ["quality"] = "",
    ["equip"] = "",
    ["type"] = "",
    ["difficulty"] = 0,
	["arg1"] = "",
	["arg1op"] = "",
	["arg2"] = "",
	["arg2op"] = "",
	["arg3"] = "",
	["arg3op"] = "",
}

function AtlasLoot_AdvancedSearchSetup()
	AtlasLoot_AdvancedSearchRegister(AtlasLoot_QualityMenu, AtlasLootAdvancedSearch_Quality, AtlasLoot_AdvancedSearchMenus["Quality"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_EquipMenu, AtlasLootAdvancedSearch_Equip, AtlasLoot_AdvancedSearchMenus["Equip"]);
    AtlasLoot_AdvancedSearchRegister(AtlasLoot_DifficultyMenu, AtlasLootAdvancedSearch_Difficulty, AtlasLoot_AdvancedSearchMenus["Difficulty"]);

	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument1Menu, AtlasLootAdvancedSearch_Argument1, "1", AtlasLoot_AdvancedSearchArguments["Arguments"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument2Menu, AtlasLootAdvancedSearch_Argument2, "2", AtlasLoot_AdvancedSearchArguments["Arguments"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument3Menu, AtlasLootAdvancedSearch_Argument3, "3", AtlasLoot_AdvancedSearchArguments["Arguments"]);

	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument1SubMenu, AtlasLootAdvancedSearch_Argument1Sub, "1", AtlasLoot_AdvancedSearchArguments["Operators"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument2SubMenu, AtlasLootAdvancedSearch_Argument2Sub, "2", AtlasLoot_AdvancedSearchArguments["Operators"]);
	AtlasLoot_AdvancedSearchArgumentRegister(AtlasLoot_Argument3SubMenu, AtlasLootAdvancedSearch_Argument3Sub, "3", AtlasLoot_AdvancedSearchArguments["Operators"]);

	--Setup Mythic+ dropdown options;
    for i = 1, 30, 1 do
        AtlasLoot_AdvancedSearchMenus["MythicPlus"][i] = {
            {"Mythic+ "..i, "difficulty", AtlasLoot_Difficulty.MythicPlus[i]};
        }
    end

	AdvSearchSetup = true;
end

function AtlasLoot_AdvancedSearchShow()
	if (AtlasLootAdvancedSearch:IsVisible()) then
		AtlasLoot_AdvancedSearchClose();
		return;
	end

    pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };

	if not (AdvSearchSetup) then AtlasLoot_AdvancedSearchSetup() end

    --Hide all elements that could be in the AtlasTable
    getglobal("AtlasLootItemsFrame_NEXT"):Hide();
    getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootItemsFrame_BACK"):Hide();

	if AtlasLootDefaultFrame_SubMenu2:IsEnabled() then
		AdvSearchSubMenu2Enabled = 1;
		AdvSearchSubMenu2Text = AtlasLootDefaultFrame_SelectedTable2:GetText();
		AtlasLootDefaultFrame_SubMenu2:Disable();
		AtlasLootDefaultFrame_SelectedTable2:SetText("");
    	AtlasLootDefaultFrame_SelectedTable2:Hide();
	end

	if AtlasLootDefaultFrame_SubMenu:IsEnabled() then
		AdvSearchSubMenuEnabled = 1;
		AdvSearchSubMenuText = AtlasLootDefaultFrame_SelectedTable:GetText();
		AtlasLootDefaultFrame_SubMenu:Disable();
		AtlasLootDefaultFrame_SelectedTable:SetText("");
	end

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

	--Reset Search options
	AtlasLoot_AdvancedSearchReset();

    AtlasLoot_BossName:SetText("Advanced Search");

    AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetParent(pFrame[2]);
	AtlasLootAdvancedSearch:ClearAllPoints();
	AtlasLootAdvancedSearch:SetPoint(pFrame[1], pFrame[2], pFrame[3], pFrame[4], pFrame[5]);
    AtlasLootAdvancedSearch:Show();
end

function AtlasLoot_AdvancedSearchClose()
	AtlasLootAdvancedSearch:Hide();
	AtlasLootServerQueryButton:Show();

	if AdvSearchSubMenu2Enabled then
		AtlasLootDefaultFrame_SubMenu2:Enable();
		AtlasLootDefaultFrame_SelectedTable2:SetText(AdvSearchSubMenu2Text);
	end

	if AdvSearchSubMenuEnabled then
		AtlasLootDefaultFrame_SubMenu:Enable();
		AtlasLootDefaultFrame_SelectedTable:SetText(AdvSearchSubMenuText);
	end

	AdvSearchSubMenuEnabled = 0;
	AdvSearchSubMenu2Enabled = 0;

	if (SearchPrevData[1] ~= "") then
		AtlasLoot_ShowItemsFrame(SearchPrevData[1], SearchPrevData[2], SearchPrevData[3], SearchPrevData[4]);
	end
end

function AtlasLoot_AdvancedSearchReset()
	AdvancedSearchOptions = {
		["quality"] = "",
		["equip"] = "",
		["equipType"] = "",
		["difficulty"] = AtlasLoot_Difficulty.Normal,
		["arg1"] = "",
		["arg1op"] = "",
		["arg2"] = "",
		["arg2op"] = "",
		["arg3"] = "",
		["arg3op"] = "",
	}

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

function AtlasLoot:AdvancedSearch(Text, args)
	if not Text then return end
	Text = strtrim(Text);
	local advSearchString = Text or "";

	local function AppendSearchString(toAppend, str)
		if toAppend ~= "" then
			toAppend = toAppend.."&"..str;
			return toAppend;
		end

		return str;
	end

	local function AdvancedSearchFixType(slot, subType)
		if slot == "2h" and (subType == "axe" or subType == "sword" or subType == "mace") then
			return slot..subType;
		end
	end

    if AdvancedSearchOptions["quality"] ~= "" then
		advSearchString = AppendSearchString(advSearchString, "quality="..AdvancedSearchOptions["quality"]);
    end

	if AdvancedSearchOptions["equip"] ~= "" then
		advSearchString = AppendSearchString(advSearchString, "slot="..AdvancedSearchOptions["equip"]);
    end

	if AdvancedSearchOptions["type"] ~= "" and AdvancedSearchOptions["type"] then
		AdvancedSearchOptions["type"] = AdvancedSearchFixType(AdvancedSearchOptions["equip"], AdvancedSearchOptions["type"]) or AdvancedSearchOptions["type"];
		advSearchString = AppendSearchString(advSearchString, "type="..AdvancedSearchOptions["type"]);
    end

	if AdvancedSearchOptions["difficulty"] ~= "" and AdvancedSearchOptions["difficulty"] ~= 2 then
		advSearchString = AppendSearchString(advSearchString, "dif="..AdvancedSearchOptions["difficulty"]);
	end

	for i = 1, 3, 1 do
		if AdvancedSearchOptions["arg"..i] ~= "" then
			if AdvancedSearchOptions["arg"..i.."op"] == "" then
				AdvancedSearchOptions["arg"..i.."op"] = ">"
				args[i] = "0";
				print(args[i]);
			end
		advSearchString = AppendSearchString(advSearchString, AdvancedSearchOptions["arg"..i]..AdvancedSearchOptions["arg"..i.."op"]..args[i]);
		end
	end

	AtlasLoot:Search(string.lower(advSearchString));
end