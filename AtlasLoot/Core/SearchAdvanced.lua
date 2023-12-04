local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local MAX_ARGUMENTS = 6
local ACTIVE_ARGUMENT = 0

AtlasLoot_ArgumentMenus = {}
AtlasLoot_ArgumentSubMenus = {}

local GREY = "|cff999999"
local RED = "|cffff0000"
local WHITE = "|cffFFFFFF"
local GREEN = "|cff1eff00"
local PURPLE = "|cff9F3FFF"
local BLUE = "|cff0070dd"
local ORANGE = "|cffFF8400"
local DEFAULT = "|cffFFd200"

AtlasLoot_FrameMenuList = {
    ["EquipSubMenu"] = {AtlasLoot.Dewdrop, "AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton", "Select Option", "type", ""}
}

AtlasLoot_AdvancedSearchMenus = {
    ["Difficulty"] = {
        [1] = {{"Normal", "difficulty", AtlasLoot_Difficulty.Normal}},
        [2] = {{"Heroic", "difficulty", AtlasLoot_Difficulty.Heroic}},
        [3] = {{"Mythic/Ascended", "difficulty", AtlasLoot_Difficulty.Mythic}},
        [4] = {
            ["Mythic+ 1-10"] = {{"Mythic 1", "difficulty", AtlasLoot_Difficulty.MythicPlus[1]}, {"Mythic 2", "difficulty", AtlasLoot_Difficulty.MythicPlus[2]},
                                {"Mythic 3", "difficulty", AtlasLoot_Difficulty.MythicPlus[3]}, {"Mythic 4", "difficulty", AtlasLoot_Difficulty.MythicPlus[4]},
                                {"Mythic 5", "difficulty", AtlasLoot_Difficulty.MythicPlus[5]}, {"Mythic 6", "difficulty", AtlasLoot_Difficulty.MythicPlus[6]},
                                {"Mythic 7", "difficulty", AtlasLoot_Difficulty.MythicPlus[7]}, {"Mythic 8", "difficulty", AtlasLoot_Difficulty.MythicPlus[8]},
                                {"Mythic 9", "difficulty", AtlasLoot_Difficulty.MythicPlus[9]}, {"Mythic 10", "difficulty", AtlasLoot_Difficulty.MythicPlus[10]}}
        },
        [5] = {
            ["Mythic+ 11-20"] = {{"Mythic 11", "difficulty", AtlasLoot_Difficulty.MythicPlus[11]}, {"Mythic 12", "difficulty", AtlasLoot_Difficulty.MythicPlus[12]},
                                 {"Mythic 13", "difficulty", AtlasLoot_Difficulty.MythicPlus[13]}, {"Mythic 14", "difficulty", AtlasLoot_Difficulty.MythicPlus[14]},
                                 {"Mythic 15", "difficulty", AtlasLoot_Difficulty.MythicPlus[15]}, {"Mythic 16", "difficulty", AtlasLoot_Difficulty.MythicPlus[16]},
                                 {"Mythic 17", "difficulty", AtlasLoot_Difficulty.MythicPlus[17]}, {"Mythic 18", "difficulty", AtlasLoot_Difficulty.MythicPlus[18]},
                                 {"Mythic 19", "difficulty", AtlasLoot_Difficulty.MythicPlus[19]}, {"Mythic 20", "difficulty", AtlasLoot_Difficulty.MythicPlus[20]}}
        },
        [6] = {
            ["Mythic+ 21-30"] = {{"Mythic 21", "difficulty", AtlasLoot_Difficulty.MythicPlus[21]}, {"Mythic 22", "difficulty", AtlasLoot_Difficulty.MythicPlus[22]},
                                 {"Mythic 23", "difficulty", AtlasLoot_Difficulty.MythicPlus[23]}, {"Mythic 24", "difficulty", AtlasLoot_Difficulty.MythicPlus[24]},
                                 {"Mythic 25", "difficulty", AtlasLoot_Difficulty.MythicPlus[25]}, {"Mythic 26", "difficulty", AtlasLoot_Difficulty.MythicPlus[26]},
                                 {"Mythic 27", "difficulty", AtlasLoot_Difficulty.MythicPlus[27]}, {"Mythic 28", "difficulty", AtlasLoot_Difficulty.MythicPlus[28]},
                                 {"Mythic 29", "difficulty", AtlasLoot_Difficulty.MythicPlus[29]}, {"Mythic 30", "difficulty", AtlasLoot_Difficulty.MythicPlus[30]}}
        },
        [7] = {{"Bloodforged", "difficulty", AtlasLoot_Difficulty.Bloodforged}},
        [8] = {{RED .. "Reset", "difficulty", "reset"}}
    },

    ["Quality"] = {
        -- [1] = {
        --     {AtlasLoot:FixText("=q0=").."Poor", "quality", "poor"},
        -- },
        -- [2] = {
        --     {AtlasLoot:FixText("=q1=").."Common", "quality", "common"},
        -- },
        [1] = {{AtlasLoot:FixText("=q2=") .. "Uncommon", "quality", "uncommon"}},
        [2] = {{AtlasLoot:FixText("=q3=") .. "Rare", "quality", "rare"}},
        [3] = {{AtlasLoot:FixText("=q4=") .. "Epic", "quality", "epic"}},
        [4] = {{AtlasLoot:FixText("=q5=") .. "Legendary", "quality", "legendary"}},
        [5] = {{RED .. "Reset", "quality", "reset"}}
    },

    ["Equip"] = {
        [1] = {{"Head", "equip", "head", "EquipSubMenu", "ArmorType"}},
        [2] = {{"Shoulder", "equip", "shoulder", "EquipSubMenu", "ArmorType"}},
        [3] = {{"Chest", "equip", "chest", "EquipSubMenu", "ArmorType"}},
        [4] = {{"Wrist", "equip", "wrist", "EquipSubMenu", "ArmorType"}},
        [5] = {{"Hands", "equip", "hand", "EquipSubMenu", "ArmorType"}},
        [6] = {{"Waist", "equip", "waist", "EquipSubMenu", "ArmorType"}},
        [7] = {{"Legs", "equip", "legs", "EquipSubMenu", "ArmorType"}},
        [8] = {{"Feet", "equip", "feet", "EquipSubMenu", "ArmorType"}},
        [9] = {
            ["Accessories"] = {{"Necklace", "equip", "neck", "EquipSubMenu", "Disable"}, {"Back", "equip", "cloak", "EquipSubMenu", "Disable"}, {"Ring", "equip", "finger", "EquipSubMenu", "Disable"},
                               {"Trinket", "equip", "trinket", "EquipSubMenu", "Disable"}}
        },
        [10] = {
            ["Weapons"] = {{"One-Hand", "equip", "weapon", "EquipSubMenu", "WeaponType1H"}, {"Two-Hand", "equip", "2h", "EquipSubMenu", "WeaponType2H"},
                           {"Main Hand", "equip", "mainhand", "EquipSubMenu", "WeaponType1H"}, {"Off Hand", "equip", "offhand", "EquipSubMenu", "WeaponType1H"},
                           {"Ranged", "equip", "ranged", "EquipSubMenu", "WeaponTypeRanged"}, {"Relic", "equip", "relic", "EquipSubMenu", "RelicType"}}
        },
        [11] = {
            ["Off-Hand"] = {{"Shield", "equip", "shield", "EquipSubMenu", "Disable"}, {"Held in Off-Hand", "equip", "holdable", "EquipSubMenu", "Disable"}}
        },
        [12] = {{RED .. "Reset", "equip", "reset", "EquipSubMenu", "Disable"}}
    },

    ["ArmorType"] = {
        [1] = {{"Cloth", "type", "Cloth"}},
        [2] = {{"Leather", "type", "Leather"}},
        [3] = {{"Mail", "type", "Mail"}},
        [4] = {{"Plate", "type", "Plate"}},
        [5] = {{RED .. "Reset", "type", "reset"}}
    },

    ["RelicType"] = {
        [1] = {{"Idols", "type", "idol"}},
        [2] = {{"Libram", "type", "libram"}},
        [3] = {{"Totem", "type", "totem"}},
        [4] = {{"Sigil", "type", "sigil"}},
        [5] = {{RED .. "Reset", "type", "reset"}}
    },

    ["WeaponType1H"] = {
        [1] = {{"Axe", "type", "axe1h"}},
        [2] = {{"Mace", "type", "mace1h"}},
        [3] = {{"Sword", "type", "sword1h"}},
        [4] = {{"Dagger", "type", "dagger"}},
        [5] = {{"Fist Weapon", "type", "fist"}},
        [6] = {{RED .. "Reset", "type", "reset"}}
    },

    ["WeaponType2H"] = {
        [1] = {{"Axe", "type", "axe2h"}},
        [2] = {{"Mace", "type", "mace2h"}},
        [3] = {{"Sword", "type", "sword2h"}},
        [4] = {{"Polearm", "type", "polearm"}},
        [5] = {{"Staff", "type", "staff"}},
        [6] = {{RED .. "Reset", "type", "reset"}}

    },

    ["WeaponTypeRanged"] = {
        [1] = {{"Bow", "type", "bows"}},
        [2] = {{"Gun", "type", "guns"}},
        [3] = {{"Crossbow", "type", "crossbows"}},
        [4] = {{"Wand", "type", "wand"}},
        [5] = {{"Thrown", "type", "thrown"}},
        [6] = {{RED .. "Reset", "type", "reset"}}
    }
}

AtlasLoot_AdvancedSearchArguments = {
    ["Arguments"] = {
        [1] = {
            ["Primary Stats"] = {{"Stamina", "sta"}, {"Strength", "str"}, {"Agility", "agi"}, {"Intellect", "int"}, {"Spirit", "spi"}}
        },
        [2] = {
            ["Secondary Stats"] = {{"Attack Power", "ap"}, {"Spell Power", "sp"}, {"Crit", "crit"}, {"Hit", "hit"}, {"Haste", "haste"}, {"Armor Pen", "arp"}, {"Spell Pen", "spp"}, {"Mana Per 5", "mp5"}}
        },
        [3] = {
            ["Defensive Stats"] = {{"Defense", "def"}, {"Dodge", "dodge"}, {"Parry", "parry"}, {"Block", "block"}, {"Block Value", "bv"}, {"Resilience", "res"}}
        },
        [4] = {
            ["Resistances"] = {{"Armor", "armor"}, {"Holy Resist", "resholy"}, {"Fire Resist", "resfire"}, {"Nature Resist", "resnat"}, {"Frost Resist", "resfrost"}, {"Shadow Resist", "resshad"},
                               {"Arcane Resist", "resarc"}}
        },
        [5] = {
            ["Sockets"] = {{"Any", "socket"}, {"Red Socket", "socketred"}, {"Blue Socket", "socketblue"}, {"Yellow Socket", "socketyellow"}, {"Meta Socket", "socketmeta"}}
        },
        [6] = {
            ["Other"] = {{"Required Level", "minlvl"}, {"Item Level", "ilvl"}}
        },

        [7] = {{RED .. "Reset", "reset"}}
    },

    ["Operators"] = {
        [1] = {{"Equals", "=", true}},
        [2] = {{"Greater Than", ">", true}},
        [3] = {{"Greater Than Or Equal", ">=", true}},
        [4] = {{"Less Than", "<", true}},
        [5] = {{"Less Than Or Equal", "<=", true}},
        [6] = {{"Not Equal", "<>", true}},
        [7] = {{RED .. "Reset", "reset", true}}
    }
}

AtlasLoot_AdvSearchOptions = {
    ["quality"] = "",
    ["equip"] = "",
    ["type"] = "",
    ["difficulty"] = ""
}

function AtlasLoot:AdvancedSearchSetup()
    AtlasLoot:AdvancedSearchRegister(AtlasLoot.Dewdrop, AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton, AtlasLoot_AdvancedSearchMenus["Quality"])
    AtlasLoot:AdvancedSearchRegister(AtlasLoot.Dewdrop, AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton, AtlasLoot_AdvancedSearchMenus["Equip"])

    for n = 1, MAX_ARGUMENTS do
        AtlasLoot_ArgumentMenus[n] = AtlasLoot.Dewdrop
        AtlasLoot_ArgumentSubMenus[n] = AtlasLoot.Dewdrop

        AtlasLoot:AdvancedSearchArgumentRegister(AtlasLoot_ArgumentMenus[n], _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n)], tostring(n), AtlasLoot_AdvancedSearchArguments["Arguments"])
        AtlasLoot:AdvancedSearchArgumentRegister(AtlasLoot_ArgumentSubMenus[n], _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(n) .. "Sub"], tostring(n),
                                                 AtlasLoot_AdvancedSearchArguments["Operators"])
    end

    -- Reset Search options to defualt
    AtlasLoot:AdvancedSearchReset()
end

function AtlasLoot:AdvancedSearchShow()
    if (AtlasLootDefaultFrame_AdvancedSearchPanel:IsVisible()) then
        AtlasLoot:AdvancedSearchClose()
        return
    end

    -- Hide all elements that could be in the AtlasTable
    _G["AtlasLootItemsFrame_NEXT"]:Hide()
    _G["AtlasLootItemsFrame_PREV"]:Hide()
    _G["AtlasLootItemsFrame_BACK"]:Hide()

    -- Hide the Filter Check-Box
    AtlasLootFilterCheck:Hide()

    for i = 1, 30, 1 do
        _G["AtlasLootItem_" .. i]:Hide()
    end

    AtlasLoot_BossName:SetText("Advanced Search")

    AtlasLootDefaultFrame_AdvancedSearchPanel:Show()

    AtlasLoot.CurrentType = "Search"
	AtlasLoot:ScrollFrameUpdate()
    AtlasLoot:SubTableScrollFrameUpdate("EmptyTable","AtlasLoot_Data")
end

function AtlasLoot:AdvancedSearchClose()
    AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()
    AtlasLoot:ItemFrameRefresh()
end

function AtlasLoot:AdvancedSearchReset()
    AtlasLoot_AdvSearchOptions = {
        ["quality"] = "",
        ["equip"] = "",
        ["type"] = "",
        ["difficulty"] = ""
    }

    for i = 1, MAX_ARGUMENTS do
        AtlasLoot_AdvSearchOptions["arg" .. tostring(i)] = ""
        AtlasLoot_AdvSearchOptions["arg" .. tostring(i) .. "op"] = ""

        AtlasLoot:RemoveArgumentContainer()
    end

    local expansionLevels = {60, 70, 80}

    AtlasLootDefaultFrame_AdvancedSearchPanel_LevelMin:SetText(expansionLevels[GetAccountExpansionLevel() + 1])
    AtlasLootDefaultFrame_AdvancedSearchPanel_LevelMax:SetText(expansionLevels[GetAccountExpansionLevel() + 1])
    AtlasLootDefaultFrame_AdvancedSearchPanel_iLevelMin:SetText("")
    AtlasLootDefaultFrame_AdvancedSearchPanel_iLevelMax:SetText("")

    AtlasLootDefaultFrame_AdvancedSearchPanel_QualityButton:SetText("Select Quality")

    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipButton:SetText("Select Item Type")
    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton:Disable()
    AtlasLootDefaultFrame_AdvancedSearchPanel_EquipSubButton:SetText("Select Option")
end

function AtlasLoot:AddArgumentContainer()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        AtlasLoot:AdvSearchArgButtonToggle()
        return
    end

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT + 1

    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:Show()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:SetText("Select Option")
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Show()

    AtlasLoot:AdvSearchArgButtonToggle()
end

function AtlasLoot:RemoveArgumentContainer()
    if ACTIVE_ARGUMENT == 0 then
        AtlasLoot:AdvSearchArgButtonToggle()
        return
    end

    AtlasLoot_AdvSearchOptions["arg" .. tostring(ACTIVE_ARGUMENT)] = ""
    AtlasLoot_AdvSearchOptions["arg" .. tostring(ACTIVE_ARGUMENT) .. "op"] = ""

    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT)]:Hide()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Disable()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Sub"]:Hide()
    _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(ACTIVE_ARGUMENT) .. "Value"]:Hide()

    ACTIVE_ARGUMENT = ACTIVE_ARGUMENT - 1
    AtlasLoot:AdvSearchArgButtonToggle()
end

function AtlasLoot:AdvSearchArgButtonToggle()
    if ACTIVE_ARGUMENT == MAX_ARGUMENTS then
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn:Disable()
    else
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerAddArgBtn:Enable()
    end

    if ACTIVE_ARGUMENT == 0 then
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerRemArgBtn:Disable()
    else
        AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainerRemArgBtn:Enable()
    end
end

AtlasLoot_AdvSearchDefaultText = {
    ["quality"] = "Select Quality",
    ["equip"] = "Select Item Type",
    ["type"] = "Select Option",
    ["difficulty"] = "Select Difficulty"
}

function AtlasLoot:AdvancedSearchMenuClick(Object, VariableToSet, VariableValue, ChildMenu, ChildMenuRegister)
    -- Setups child menus and sets search options to default
    if (ChildMenu ~= nil) then
        if (ChildMenuRegister == "Disable") then
            AtlasLoot_AdvSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5]
            _G[AtlasLoot_FrameMenuList[ChildMenu][2]]:Disable()
            -- Disable assigned children menus as well
            if (AtlasLoot_FrameMenuList[ChildMenu][6]) then
                _G[AtlasLoot_FrameMenuList[ChildMenu][6]]:Disable()
            end
            if VariableValue == "reset" then
                AtlasLoot_AdvSearchOptions[VariableToSet] = ""
                Object[1]:SetText(AtlasLoot_AdvSearchDefaultText[VariableToSet])
                Object[2]:Close()

                _G[AtlasLoot_FrameMenuList[ChildMenu][2]]:SetText(AtlasLoot_FrameMenuList[ChildMenu][3])
                return
            end
        else
            AtlasLoot:AdvancedSearchRegister(AtlasLoot_FrameMenuList[ChildMenu][1], _G[AtlasLoot_FrameMenuList[ChildMenu][2]], AtlasLoot_AdvancedSearchMenus[ChildMenuRegister])
            AtlasLoot_AdvSearchOptions[AtlasLoot_FrameMenuList[ChildMenu][4]] = AtlasLoot_FrameMenuList[ChildMenu][5]
            _G[AtlasLoot_FrameMenuList[ChildMenu][2]]:Enable()
            _G[AtlasLoot_FrameMenuList[ChildMenu][2]]:SetText(AtlasLoot_FrameMenuList[ChildMenu][3])
            -- Disable assigned children menus as well
            if (AtlasLoot_FrameMenuList[ChildMenu][6]) then
                _G[AtlasLoot_FrameMenuList[ChildMenu][6]]:Disable()
            end
        end
    end
    if VariableValue == "reset" then
        AtlasLoot_AdvSearchOptions[VariableToSet] = ""
        Object[1]:SetText(AtlasLoot_AdvSearchDefaultText[VariableToSet])
        Object[2]:Close()
        return
    end
    AtlasLoot_AdvSearchOptions[VariableToSet] = VariableValue
    Object[1]:SetText(Object[3])
    Object[2]:Close()
end

function AtlasLoot:AdvancedSearchRegister(DropDown, DropDownObject, MenuOption)
    DropDown:Register(DropDownObject, 'point', function(parent)
        return "TOP", "BOTTOM"
    end, 'children', function(level, value)
        if level == 1 then
            if AtlasLoot_AdvancedSearchMenus then
                for k, v in ipairs(MenuOption) do
                    -- If a link to show a submenu
                    if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                        if v[1][1] ~= "" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function()
                                AtlasLoot:AdvancedSearchMenuClick({DropDownObject, DropDown, v[1][1]}, v[1][2], v[1][3], v[1][4], v[1][5])
                            end,
                            'notCheckable', true)
                        end
                    else
                        local lock = 0
                        -- If an entry linked to a subtable
                        for i, j in pairs(v) do
                            if lock == 0 then
                                DropDown:AddLine('text', i, 'textR', 1, 'textG', 0.82, 'textB', 0, 'hasArrow', true, 'value', j, 'notCheckable', true)
                                lock = 1
                            end
                        end
                    end
                end
            end
            -- Close button
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        elseif level == 2 then
            if value then
                for k, v in ipairs(value) do
                    DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                    'func', function()
                        AtlasLoot:AdvancedSearchMenuClick({DropDownObject, DropDown, v[1]}, v[2], v[3], v[4], v[5])
                    end,
                    'notCheckable', true)
                end
            end
        end
    end, 'dontHook', true)
end

function AtlasLoot:AdvancedSearchArgumentClick(Object, VariableToSet, VariableValue, IsOperator)
    if IsOperator and VariableValue == "reset" then
        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        Object[1]:SetText("Select Option")
        Object[2]:Close()
    elseif IsOperator then
        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet .. "op"] = VariableValue

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Show()

        Object[1]:SetText(Object[3])
        Object[2]:Close()
    elseif VariableValue == "reset" then
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:SetText("Select Option")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:Disable()

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet] = ""
        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        Object[1]:SetText("Select Option")
        Object[2]:Close()
    else
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:SetText("Select Option")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Sub"]:Enable()
        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet .. "op"] = ""

        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:SetText("")
        _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. VariableToSet .. "Value"]:Hide()

        AtlasLoot_AdvSearchOptions["arg" .. VariableToSet] = VariableValue
        Object[1]:SetText(Object[3])
        Object[2]:Close()
    end
end

function AtlasLoot:AdvancedSearchArgumentRegister(DropDown, DropDownObject, ArgumentCount, ArgumentMenu)
    DropDown:Register(DropDownObject, 'point', function(parent)
        return "TOP", "BOTTOM"
    end, 'children', function(level, value)
        if level == 1 then
            if AtlasLoot_AdvancedSearchArguments then
                for k, v in ipairs(ArgumentMenu) do
                    -- If a link to show a submenu
                    if (type(v[1]) == "table") and (type(v[1][1]) == "string") then
                        local checked = false
                        if v[1][3] == "Submenu" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function() 
                                AtlasLoot:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                                end,
                                'notCheckable', true)
                        elseif v[1][1] ~= "" then
                            DropDown:AddLine('text', v[1][1], 'textR', 1, 'textG', 0.82, 'textB', 0,
                            'func', function() AtlasLoot:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1][1]}, ArgumentCount, v[1][2], v[1][3])
                            end,
                            'notCheckable', true)
                        end
                    else
                        local lock = 0
                        -- If an entry linked to a subtable
                        for i, j in pairs(v) do
                            if lock == 0 then
                                DropDown:AddLine('text', i, 'textR', 1, 'textG', 0.82, 'textB', 0, 'hasArrow', true, 'value', j, 'notCheckable', true)
                                lock = 1
                            end
                        end
                    end
                end
            end
            -- Close button
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        elseif level == 2 then
            if value then
                for _, v in ipairs(value) do
                    if type(v) == "table" then
                        if (type(v[1]) == "string") then
                            local checked = false
                            -- If an entry to show a submenu
                            if v[4] == "Header" then
                                DropDown:AddLine('text', v[1], 'textR', 0.2, 'textG', 0.82, 'textB', 0.5, 'func', function()
                                    AtlasLoot:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            elseif v[3] == "Submenu" then
                                DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0, 'func', function()
                                    AtlasLoot:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            else
                                DropDown:AddLine('text', v[1], 'textR', 1, 'textG', 0.82, 'textB', 0, 'func', function()
                                    AtlasLoot:AdvancedSearchArgumentClick({DropDownObject, DropDown, v[1]}, ArgumentCount, v[2], v[3])
                                    end,
                                    'notCheckable', true)
                            end
                        end
                    end
                end
            end
            DropDown:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, 'func', function()
                DropDown:Close()
            end, 'notCheckable', true)
        end
    end, 'dontHook', true)
end

function AtlasLoot:AdvancedSearch(Text)
    if not Text then
        return
    end
    Text = strtrim(Text)
    local advSearchString = Text or ""

    local function AppendSearchString(toAppend, str)
        if toAppend ~= "" then
            toAppend = toAppend .. "&" .. str
            return toAppend
        end

        return str
    end

    local function GetTextByName(name)
        if (_G["AtlasLootDefaultFrame_AdvancedSearchPanel_" .. name]) then
            return _G["AtlasLootDefaultFrame_AdvancedSearchPanel_" .. name]:GetText()
        end

        return nil
    end

    local function FixRangedSlot(subType)
        if (subType == "wand" or subType == "gun" or subType == "crossbow") then
            return "rangedright"
        elseif subType == "thrown" then
            return "thrown"
        end
        return "ranged"
    end

    if AtlasLoot_AdvSearchOptions["quality"] ~= "" then
        advSearchString = AppendSearchString(advSearchString, "quality=" .. AtlasLoot_AdvSearchOptions["quality"])
    end

    if AtlasLoot_AdvSearchOptions["equip"] ~= "" then
        if AtlasLoot_AdvSearchOptions["equip"] == "ranged" and AtlasLoot_AdvSearchOptions["type"] ~= "" then
            AtlasLoot_AdvSearchOptions["equip"] = FixRangedSlot(AtlasLoot_AdvSearchOptions["type"])
        end
        advSearchString = AppendSearchString(advSearchString, "slot=" .. AtlasLoot_AdvSearchOptions["equip"])
    end

    if AtlasLoot_AdvSearchOptions["type"] ~= "" and AtlasLoot_AdvSearchOptions["type"] then
        advSearchString = AppendSearchString(advSearchString, "type=" .. AtlasLoot_AdvSearchOptions["type"])
    end

    if AtlasLoot_AdvSearchOptions["difficulty"] ~= "" and AtlasLoot_AdvSearchOptions["difficulty"] ~= 2 then
        advSearchString = AppendSearchString(advSearchString, "dif=" .. AtlasLoot_AdvSearchOptions["difficulty"])
    end

    if(not AtlasLootDefaultFrame_AdvancedSearchPanel_LevelToggle:GetChecked()) then
        if (GetTextByName("LevelMin") and GetTextByName("LevelMin") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. GetTextByName("LevelMin"))
        end

        if (GetTextByName("LevelMax") and GetTextByName("LevelMax") ~= "") then
            advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. GetTextByName("LevelMax"))
        end
    else
        advSearchString = AppendSearchString(advSearchString, "minlvl>=" .. UnitLevel("player"))
        advSearchString = AppendSearchString(advSearchString, "minlvl<=" .. UnitLevel("player"))
    end

    if (GetTextByName("iLevelMin") and GetTextByName("iLevelMin") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl>=" .. GetTextByName("iLevelMin"))
    end

    if (GetTextByName("iLevelMax") and GetTextByName("iLevelMax") ~= "") then
        advSearchString = AppendSearchString(advSearchString, "ilvl<=" .. GetTextByName("iLevelMax"))
    end

    for i = 1, ACTIVE_ARGUMENT, 1 do
        if AtlasLoot_AdvSearchOptions["arg" .. i] ~= "" then
            local arg = _G["AtlasLootDefaultFrame_AdvancedSearchPanel_ArgumentContainer" .. tostring(i) .. "Value"]:GetText()
            if AtlasLoot_AdvSearchOptions["arg" .. i .. "op"] == "" then
                AtlasLoot_AdvSearchOptions["arg" .. i .. "op"] = ">"
                arg = "0"
            end
            advSearchString = AppendSearchString(advSearchString, AtlasLoot_AdvSearchOptions["arg" .. i] .. AtlasLoot_AdvSearchOptions["arg" .. i .. "op"] .. arg)
        end
    end

    AtlasLootDefaultFrame_AdvancedSearchPanel:Hide()
    AtlasLoot:Search(string.lower(advSearchString))
end
