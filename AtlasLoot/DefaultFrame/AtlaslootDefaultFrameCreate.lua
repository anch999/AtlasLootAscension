local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
    
    --Main AtlasLoot Frame
local mainframe = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent, nil);
   mainframe:SetPoint("CENTER",0,0);
   mainframe:SetSize(880,690);
   mainframe:EnableMouse(true);
   mainframe:SetMovable(1);
   mainframe:SetBackdropColor(0.75,0,0,0.75);
   mainframe:RegisterForDrag("LeftButton");
   mainframe:SetMovable(true);
   mainframe:EnableKeyboard(true)
   mainframe:Hide()
   mainframe:SetBackdrop({
       bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
       edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
       tile = "true",
       insets = {left = "11", right = "12", top = "12", bottom = "11"},
       edgeSize = 32,
       titleSize = 32,
   });
   mainframe:SetScript("OnShow", function()
    local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
    getglobal("AtlasLootDefaultFrame_Notice"):SetText(AL["This is a loot browser only.  To view maps as well, install either Atlas or Alphamap."]);
    AtlasLootDefaultFrame_OnShow();
    end);
    mainframe:SetScript("OnHide", function() AtlasLootDefaultFrame_OnHide() end)
    mainframe:SetScript("OnDragStart", function(self)
        self:StartMoving();
		self.isMoving = true;
    end);
    mainframe:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing();
		self.isMoving = false;
    end);
    mainframe.header = mainframe:CreateTexture("AtlasLootDefaultFrameHeader","ARTWORK");
    mainframe.header:SetSize(425,64);
    mainframe.header:SetPoint("TOP",0,12);
    mainframe.header:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header");
    mainframe.header.txt = mainframe:CreateFontString(nil,"ARTWORK","GameFontNormal");
    mainframe.header.txt:SetPoint("TOP",0,-1);
    mainframe.header.txt:SetText(ATLASLOOT_VERSION);
    mainframe.header.notice = mainframe:CreateFontString("AtlasLootDefaultFrame_Notice","ARTWORK","GameFontNormal");
    mainframe.header.notice:SetPoint("BOTTOM",0,17);

    --Close Button
local closebtn = CreateFrame("Button", "AtlasLootDefaultFrame_CloseButton", AtlasLootDefaultFrame, "UIPanelCloseButton");
    closebtn:SetPoint("TOPRIGHT", AtlasLootDefaultFrame, "TOPRIGHT",-10,-10);
    closebtn:SetScript("OnClick", function() AtlasLootDefaultFrame:Hide() end);
    closebtn:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);

    --Load All Addon Moduels Button
local loadModulebtn = CreateFrame("Button", "AtlasLootDefaultFrame_LoadModules", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    loadModulebtn:SetSize(105,20);
    loadModulebtn:SetPoint("TOPRIGHT", AtlasLootDefaultFrame, "TOPRIGHT",-38,-15);
    loadModulebtn:SetText(AL["Load Modules"]);
    loadModulebtn:SetScript("OnClick", function() AtlasLoot_LoadAllModules() end);
    loadModulebtn:SetScript("OnShow", function(self) 
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ); 
    end);

    --Options Button
local optionsbtn = CreateFrame("Button", "AtlasLootDefaultFrame_Options", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    optionsbtn:SetSize(105,20);
    optionsbtn:SetPoint("TOPLEFT", AtlasLootDefaultFrame, "TOPLEFT",40,-15);
    optionsbtn:SetText(AL["Options"]);
    optionsbtn:SetScript("OnClick", function() AtlasLootOptions_Toggle() end);
    optionsbtn:SetScript("OnShow", function(self)
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);

    --Moduel Menu Button
local menubtn = CreateFrame("Button", "AtlasLootDefaultFrame_Menu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    menubtn:SetSize(179,25);
    menubtn:SetPoint("TOPLEFT", AtlasLootDefaultFrame, "TOPLEFT",38,-55);
    menubtn.Lable = menubtn:CreateFontString("AtlasLootDefaultFrame_SelectedCategory", "OVERLAY","GameFontNormal")
    menubtn.Lable:SetPoint("TOP",menubtn,"BOTTOM",0,37);
    menubtn.Lable:SetText("Select Module");
    menubtn.Lable:Show();
    menubtn:SetText(AL["Select Loot Table"]);
    menubtn:SetScript("OnClick", function(self) 
        if AtlasLoot_Dewdrop:IsOpen() then
            AtlasLoot_Dewdrop:Close();
        else
            AtlasLoot_Dewdrop:Open(self);
        end
    end);
    menubtn:SetScript("OnShow", function(self)
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);

    --SubMenu Button
local submenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    submenubtn:SetSize(179,25);
    submenubtn:SetPoint("LEFT", "AtlasLootDefaultFrame_Menu", "RIGHT",5,0);
    submenubtn.Lable = submenubtn:CreateFontString("AtlasLootDefaultFrame_SelectedTable", "OVERLAY","GameFontNormal")
    submenubtn.Lable:SetPoint("TOP",submenubtn,"BOTTOM",0,37);
    submenubtn.Lable:SetText("Select Subcategory");
    submenubtn.Lable:Show();
    submenubtn:SetText(AL["Select Sub-Table"]);
    submenubtn:SetScript("OnClick", function(self)
        if AtlasLoot_DewdropSubMenu:IsOpen() then
            AtlasLoot_DewdropSubMenu:Close();
        else
            AtlasLoot_DewdropSubMenu:Open(self);
        end
    end);
    submenubtn:SetScript("OnShow", function(self)
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);

    --Expansion Menu Button
local expansionmenubtn = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    expansionmenubtn:SetSize(179,25);
    expansionmenubtn:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",5,0);
    expansionmenubtn:SetText(AtlasLoot_ExpansionMenu[GetAccountExpansionLevel()+1][1]);
    expansionmenubtn.Lable = expansionmenubtn:CreateFontString("AtlasLootDefaultFrame_SelectedTable2", "OVERLAY","GameFontNormal")
    expansionmenubtn.Lable:SetPoint("TOP",expansionmenubtn,"BOTTOM",0,37);
    expansionmenubtn.Lable:SetText("Select Expansion");
    expansionmenubtn.Lable:Show();
    expansionmenubtn:SetScript("OnClick", function(self)
        if AtlasLoot_DewdropExpansionMenu:IsOpen() then
            AtlasLoot_DewdropExpansionMenu:Close();
        else
            AtlasLoot_DewdropExpansionMenu:Open(self);
        end
    end);
    expansionmenubtn:SetScript("OnShow", function(self)
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);

    --Loot Background
local lootbground = CreateFrame("Frame", "AtlasLootDefaultFrame_LootBackground", AtlasLootDefaultFrame);
        lootbground:SetSize(540,515);
        lootbground:SetPoint("BOTTOMLEFT", AtlasLootDefaultFrame, "BOTTOMLEFT",40,90);
        lootbground.Back = lootbground:CreateTexture("AtlasLootDefaultFrame_LootBackground_Back", "BACKGROUND");
        lootbground.Back:SetAllPoints();
        lootbground.Back:SetPoint("TOPLEFT","AtlasLootDefaultFrame_LootBackground","TOPLEFT");
        lootbground.Back:SetPoint("BOTTOMRIGHT","AtlasLootDefaultFrame_LootBackground","BOTTOMRIGHT");
        lootbground:SetBackdropColor(0, 0, 0.5, 0.5);

    --Wish List Button
local wishbtn = CreateFrame("Button", "AtlasLootDefaultFrameWishListButton", AtlasLootDefaultFrame, "OptionsButtonTemplate");
        wishbtn:SetPoint("BOTTOMLEFT", "AtlasLootDefaultFrame", "BOTTOMLEFT", 40, 63);
        wishbtn:SetSize(105,20);
        wishbtn:SetScript("OnClick", function(self)AtlasLoot_ShowWishListDropDown("","","","","",self,true) end);
        wishbtn:SetScript("OnShow", function(self)
            local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
            self:SetText(AL["Wishlist"]);
            self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
        end);

    --Quick Look Buttons
local function presetcreate(preset,num)
    preset:SetSize(105,20);
    preset:SetScript("OnEnter", function(self)
        if self:IsEnabled() then
            GameTooltip:ClearLines();
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5);
            GameTooltip:AddLine(AtlasLootCharDB["QuickLooks"][num][3]);
            GameTooltip:Show();
        end
    end);
    preset:SetScript("OnLeave", function()
        if(GameTooltip:IsVisible()) then
            GameTooltip:Hide();
        end
    end);
    preset:SetScript("OnClick", function()
        if AtlasLoot_IsLootTableAvailable(AtlasLootCharDB["QuickLooks"][num][1]) then
            pFrame = { "TOPLEFT", "AtlasLootDefaultFrame_LootBackground", "TOPLEFT", "2", "-2" };
            AtlasLootDefaultFrame_SubTableScrollFrameUpdate(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][2], pFrame, AtlasLootCharDB["QuickLooks"][num][5])
            AtlasLoot_ShowItemsFrame(AtlasLootCharDB["QuickLooks"][num][1], AtlasLootCharDB["QuickLooks"][num][2], AtlasLootCharDB["QuickLooks"][num][3], pFrame, AtlasLootCharDB["QuickLooks"][num][5]);
        end
    end);
    preset:SetScript("OnShow", function(self)
        local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
            self:SetText(AL["QuickLook"].." "..num);
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
            if ((not AtlasLootCharDB["QuickLooks"][num]) or (not AtlasLootCharDB["QuickLooks"][num][1])) or (AtlasLootCharDB["QuickLooks"][num][1]==nil) then
                self:Disable();
            end
    end);

end
    --QuickLook Button 1
local preset1 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset1", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset1,1);
    preset1:SetPoint("LEFT", AtlasLootDefaultFrameWishListButton, "RIGHT", 5, 0);
    --QuickLook Button 2
local preset2 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset2", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset2,2);
    preset2:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset1", "RIGHT", 5, 0);
    --QuickLook Button 3
local preset3 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset3", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset3,3);
    preset3:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset2", "RIGHT", 5, 0);
    --QuickLook Button 4
local preset4 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset4", AtlasLootDefaultFrame, "OptionsButtonTemplate");
    presetcreate(preset4,4);
    preset4:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset3", "RIGHT", 5, 0);
    
    --Search Edit Box
local searchbox = CreateFrame("EditBox","AtlasLootDefaultFrameSearchBox",AtlasLootDefaultFrame,"InputBoxTemplate");
    searchbox:SetSize(190,32);
    searchbox:SetMaxLetters(100);
    searchbox:SetAutoFocus(false);
    searchbox:SetPoint("TOPLEFT",AtlasLootDefaultFrameWishListButton,"BOTTOMLEFT",7,-3)
    searchbox:SetTextInsets(0, 8, 0, 0);
    searchbox:SetScript("OnEnterPressed", function(self)
        AtlasLoot:Search(self:GetText());
        self:ClearFocus();
    end)
    local fstring = searchbox:CreateFontString("AtlasLootDefaultFrameSearchString", "ARTWORK", "GameFontNormal");

    --Search Button
local searchbtn = CreateFrame("Button","AtlasLootDefaultFrameSearchButton",AtlasLootDefaultFrame,"UIPanelButtonTemplate2");
    searchbtn:SetSize(69,32);
    searchbtn:SetPoint("LEFT","AtlasLootDefaultFrameSearchBox","RIGHT",2,0);
    searchbtn:SetScript("OnShow", function(self)
        local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
		self:SetText(AL["Search"]);
		self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);
    searchbtn:SetScript("OnClick", function()
        AtlasLoot:Search(AtlasLootDefaultFrameSearchBox:GetText());
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end);

    --Search Options Button
local searchopt = CreateFrame("Button", "AtlasLootDefaultFrameSearchOptionsButton", AtlasLootDefaultFrameSearchButton);
    searchopt:SetSize(28,28);
    searchopt:SetPoint("LEFT","AtlasLootDefaultFrameSearchButton","RIGHT",-5,0);
    searchopt:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up");
    searchopt:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down");
    searchopt:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled");
    searchopt:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight","ADD");
    searchopt:SetScript("OnShow", function(self) self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 ) end);
    searchopt:SetScript("OnClick", function(self) AtlasLoot:ShowSearchOptions(self) end)

    --Clear Search Button
local searchclear = CreateFrame("Button","AtlasLootDefaultFrameSearchClearButton",AtlasLootDefaultFrameSearchBox,"UIPanelButtonTemplate2");
    searchclear:SetSize(58,32);
    searchclear:SetPoint("LEFT",AtlasLootDefaultFrameSearchOptionsButton,"RIGHT",-2,0);
    searchclear:SetScript("OnShow", function(self)
        local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
        self:SetText(AL["Clear"]);
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);
    searchclear:SetScript("OnClick", function() 
        AtlasLootDefaultFrameSearchBox:SetText("");
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end);

    --Last Result Button
local lastresult = CreateFrame("Button","AtlasLootDefaultFrameLastResultButton",AtlasLootDefaultFrameSearchBox,"UIPanelButtonTemplate2");
    lastresult:SetSize(100,32);
    lastresult:SetPoint("LEFT",AtlasLootDefaultFrameSearchClearButton,"RIGHT",1,0);
    lastresult:SetScript("OnShow", function(self)
        local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
        self:SetText(AL["Last Result"]);
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end);
    lastresult:SetScript("OnClick", function() AtlasLoot:ShowSearchResult() end);

    -- Advanced Search Button
local advSearch = CreateFrame("Button","AtlasLootDefaultFrameAdvancedSearchButton", AtlasLootDefaultFrame,"UIPanelButtonTemplate2");
    advSearch:SetSize(95,32);
    advSearch:SetPoint("LEFT",AtlasLootDefaultFrameLastResultButton,"RIGHT",2);
    advSearch:SetScript("OnShow", function(self)
        local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
        self:SetText("Advanced");
        self:SetFrameLevel( (self:GetParent()):GetFrameLevel() + 1 );
    end)
    advSearch:SetScript("OnClick", function()
        AtlasLoot_AdvancedSearchShow();
        AtlasLootDefaultFrameSearchBox:ClearFocus();
    end)

---------------------ScrollFrame----------------------------------
local ROW_HEIGHT = 16;   -- How tall is each row?
local MAX_ROWS = 5;      -- How many rows can be shown at once?

local scrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", AtlasLootDefaultFrame);
    scrollFrame:EnableMouse(true);
    scrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16);
    scrollFrame:SetPoint("LEFT","AtlasLootDefaultFrame_ExpansionMenu","RIGHT",0,-39);
    scrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    });

function AtlasLoot_GetNumOfRows(tablename)
    local num = 1
        if tablename then
            for n in ipairs(tablename) do
                    num = num + 1
            end
        else
            num = 0
        end
    return num
end

function AtlasLootDefaultFrame_ScrollFrameUpdate()
    local maxValue = AtlasLoot_GetNumOfRows(AtlasLoot_Difficulty[AtlasLoot_CurrentType])
	FauxScrollFrame_Update(scrollFrame.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT);
	local offset = FauxScrollFrame_GetOffset(scrollFrame.scrollBar);
	for i = 1, MAX_ROWS do
		local value = i + offset
        scrollFrame.rows[i]:SetChecked(false);
        scrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
		if value <= maxValue and AtlasLoot_Difficulty[AtlasLoot_CurrentType][value] then
			local row = scrollFrame.rows[i]
            row:SetText("|cffFFd200"..AtlasLoot_Difficulty[AtlasLoot_CurrentType][value][1]);
            row.itemIndex = AtlasLoot_Difficulty[AtlasLoot_CurrentType][value][2];
            if row.itemIndex == ItemindexID then
                row:SetChecked(true);
            end
			row:Show()
		else
			scrollFrame.rows[i]:Hide()
		end
	end
end

local scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll",Atlasloot_Difficulty_ScrollFrame,"FauxScrollFrameTemplate");
    scrollSlider:SetPoint("TOPLEFT", 0, -8)
    scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider:SetScript("OnVerticalScroll", function(self, offset)
    self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
        AtlasLootDefaultFrame_ScrollFrameUpdate()
end)

scrollSlider:SetScript("OnShow", function()
    AtlasLootDefaultFrame_ScrollFrameUpdate()
end)

scrollFrame.scrollBar = scrollSlider

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, scrollFrame)
	row:SetSize(150, ROW_HEIGHT)
	row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
    row:SetScript("OnClick", function()
        ItemindexID = row.itemIndex;
        AtlasLoot_ShowItemsFrame(AtlasLootItemsFrame.refreshOri[1], AtlasLootItemsFrame.refreshOri[2], AtlasLootItemsFrame.refreshOri[3], AtlasLootItemsFrame.refreshOri[4], AtlasLootItemsFrame.refreshOri[5]);
        AtlasLootDefaultFrame_ScrollFrameUpdate();
    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", scrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", scrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

scrollFrame.rows = rows
local MAX_ROWS2 = 26;      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
local subtableFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", AtlasLootDefaultFrame);
    subtableFrame:EnableMouse(true);
    subtableFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23);
    subtableFrame:SetPoint("LEFT","Atlasloot_Difficulty_ScrollFrame","LEFT",0,-273);
    subtableFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    });
  
function AtlasLootDefaultFrame_SubTableScrollFrameUpdate(tablename, dataSource, pFrame, currenttablenum)
    if dataSource ~= nil then
        local maxValue = AtlasLoot_GetNumOfRows(dataSource[tablename]);
        subtableFrame.tablename = tablename;
        FauxScrollFrame_Update(subtableFrame.scrollBar, maxValue, MAX_ROWS2, ROW_HEIGHT);
        local offset = FauxScrollFrame_GetOffset(subtableFrame.scrollBar);
        for i = 1, MAX_ROWS2 do
            local value = i + offset
            subtableFrame.rows[i]:SetChecked(false);
            subtableFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
            if value <= maxValue and dataSource[tablename][value] then
                local row = subtableFrame.rows[i]
                row:SetText("|cffFFd200"..dataSource[tablename][value].Name);
                row.tablenum = value;
                row.dataSource = dataSource;
                row.tablename = tablename;
                row.pFrame = pFrame;
                if currenttablenum == value then
                    row:SetChecked(true);
                end
                row:Show();
            else
                subtableFrame.rows[i]:Hide()
            end
        end
    end
end

local scrollSlider2 = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate");
    scrollSlider2:SetPoint("TOPLEFT", 0, -8)
    scrollSlider2:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider2:SetScript("OnVerticalScroll", function(self, offset)
        self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            AtlasLootDefaultFrame_SubTableScrollFrameUpdate(subtableFrame.tablename);
    end)
    
    scrollSlider2:SetScript("OnShow", function()
        AtlasLootDefaultFrame_SubTableScrollFrameUpdate(subtableFrame.tablename);
    end)
    
    subtableFrame.scrollBar = scrollSlider2
    
local rows2 = setmetatable({}, { __index = function(t, i)
    local row = CreateFrame("CheckButton", "$parentRow"..i, subtableFrame)
    row:SetSize(150, ROW_HEIGHT)
    row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD");
    row:SetScript("OnClick", function()
        AtlasLootDefaultFrame_SubTableScrollFrameUpdate(row.tablename, row.dataSource, row.pFrame, row.tablenum);
        AtlasLoot_ShowItemsFrame(row.tablename, row.dataSource, row.dataSource[row.tablename][row.tablenum].Name, row.pFrame, row.tablenum);
        AtlasLoot.db.profile.LastBoss = {row.tablename, row.dataSource, row.dataSource[row.tablename][row.tablenum].Name, row.pFrame, row.tablenum};
    end)
    if i == 1 then
        row:SetPoint("TOPLEFT", subtableFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", subtableFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })
    
subtableFrame.rows = rows2
