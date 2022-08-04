local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

function AtlasLoot_MapOnShow()
    if AtlasLootDefaultFrame_Map:IsVisible() then
        AtlasLootDefaultFrame_Map:Hide();
        AtlasLootDefaultFrame_LootBackground:Show();
        AtlasLoot_BackButton_OnClick();
        AtlasLoot_BossName:Show();
    else
        local map =  AtlasLootItemsFrame.refresh[2][AtlasLootItemsFrame.refresh[1]].Map;
        if map then
            AtlasLoot_BossName:Hide();
            --Ditch the Quicklook selector
            AtlasLoot_QuickLooks:Hide();
            AtlasLootQuickLooksButton:Hide();
            -- Hide the Filter Check-Box
	        AtlasLootFilterCheck:Hide();
            --Hide navigation buttons by default, only show what we need
            getglobal("AtlasLootItemsFrame_BACK"):Hide();
            getglobal("AtlasLootItemsFrame_NEXT"):Hide();
            getglobal("AtlasLootItemsFrame_PREV"):Hide();
            AtlasLootDefaultFrame_LootBackground:Hide();
            --Hide UI objects so that only needed ones are shown
            for i = 1, 30, 1 do
                getglobal("AtlasLootItem_"..i.."_Unsafe"):Hide();
                getglobal("AtlasLootItem_"..i):Hide();
                getglobal("AtlasLootItem_"..i).itemID = 0;
                getglobal("AtlasLootItem_"..i).spellitemID = 0;
            end
                AtlasLootDefaultFrame_Map:SetBackdrop({bgFile = "Interface\\AddOns\\Atlas\\Images\\Maps\\"..map});   
                AtlasLootDefaultFrame_Map:Show();
        end
    end
end