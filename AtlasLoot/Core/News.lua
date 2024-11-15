local addonName = "AtlasLoot"
local addon = _G[addonName]
local version = GetAddOnMetadata(addonName, "Version")

local news
--[[
addon:NewsInitialize()
Used for version checking to see if the frame needs to be shown
Send this function the db where you want the settings and
table with patch notes formate like
patchnotes = {
    {version number, data}
    note 1
    {version number, data}
    note 1
    note 2 etc
}
]]
function addon:NewsInitialize(db, newsTable)
    db.AutoShowNews = db.AutoShowNews or db.AutoShowNews and db.AutoShowNews ~= false and true
    if not db.NewsVersion or db.NewsVersion ~= version then
        DEFAULT_CHAT_FRAME:AddMessage("AtlasLoot has been updated")
        if db.AutoShowNews then
            Timer.After(5, function() self:OpenNewsFrame(db) end)
        end
    end
    db.NewsVersion = version
    news = newsTable
end

local function copyToClipboard(text)
	Internal_CopyToClipboard(text)
	SendSystemMessage(S_COPIED_TO_CLIPBOARD:format(text:gsub("X%-", "")))
end


function addon:OpenNewsFrame(db)
    addon:CreateNewsFrame(db)
    _G[addonName.."NewsFrame"]:Show()
end

-- Creates News Frame
local frameCreated
function addon:CreateNewsFrame(db)
    if frameCreated then return end
    local mainframe = CreateFrame("FRAME", addonName.."NewsFrame", UIParent,"UIPanelDialogTemplate")
    mainframe:SetSize(500,600)
    mainframe:SetPoint("CENTER",0,0)
    mainframe:EnableMouse(true)
    mainframe:SetMovable(true)
    mainframe:RegisterForDrag("LeftButton")
    mainframe:SetScript("OnDragStart", function() mainframe:StartMoving() end)
    mainframe:SetScript("OnDragStop", function() mainframe:StopMovingOrSizing() end)
    mainframe.TitleText = mainframe:CreateFontString()
    mainframe.TitleText:SetFont("Fonts\\FRIZQT__.TTF", 12)
    mainframe.TitleText:SetFontObject(GameFontNormal)
    mainframe.TitleText:SetText(addonName.." Version: "..version)
    mainframe.TitleText:SetPoint("TOP", 0, -9)
    mainframe.TitleText:SetShadowOffset(1,-1)
    mainframe:SetScript("OnShow", function()
        addon:NewsScrollFrameUpdate()
        mainframe.AutoShowNews:SetChecked(db.AutoShowNews)
        end)
    mainframe:Hide()
    mainframe.AutoShowNews = CreateFrame("CheckButton", addonName.."NewsFrameAutoShow", mainframe, "OptionsCheckButtonTemplate")
    mainframe.AutoShowNews:SetPoint("BOTTOMLEFT", 20, 15)
    mainframe.AutoShowNews.Text:SetText("Auto Open on New Changes" )
    mainframe.AutoShowNews:SetScript("OnClick", function() db.AutoShowNews = not db.AutoShowNews end)
    mainframe.DiscordLink = CreateFrame("Button", addonName.."NewsFrameDiscordCopyButton", mainframe)
    mainframe.DiscordLink:RegisterForClicks("AnyDown")
    mainframe.DiscordLink:SetScript("OnEnter", function(self)
        GameTooltip:ClearLines()
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -(self:GetWidth() / 2), 5)
        GameTooltip:AddLine("Click to copy link to clipboard")
        GameTooltip:Show()
    end)
    mainframe.DiscordLink:SetScript("OnLeave", function() GameTooltip:Hide() end)
    mainframe.DiscordLink:SetPoint("LEFT", mainframe.AutoShowNews, 200, 0)
    mainframe.DiscordLink:SetSize(300, 30)
    local discord = GetAddOnMetadata(addonName, "X-Discord")
    mainframe.DiscordLink:SetScript("OnClick", function() copyToClipboard(discord) end)
    mainframe.DiscordLink.Text = mainframe.DiscordLink:CreateFontString(mainframe.DiscordLink,"OVERLAY","GameFontNormal")
    mainframe.DiscordLink.Text:SetText("|cff1eff00"..discord)
    mainframe.DiscordLink.Text:SetPoint("CENTER", 0, 0)

    tinsert(UISpecialFrames, addonName.."NewsFrame")
    --ScrollFrame
    local ROW_HEIGHT = 25   -- How tall is each row?
    local MAX_ROWS = 20      -- How many rows can be shown at once?

    local scrollFrame = CreateFrame("Frame", addonName.."NewsScrollFrame", mainframe)
        scrollFrame:EnableMouse(true)
        scrollFrame:SetSize(mainframe:GetWidth()-40, ROW_HEIGHT * MAX_ROWS + 16)
        scrollFrame:SetPoint("TOP",0,-42)
        scrollFrame:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
            insets = { left = 4, right = 4, top = 4, bottom = 4 },
        })
    -- scrollframe update function
    function addon:NewsScrollFrameUpdate()
        local maxValue = #news
        FauxScrollFrame_Update(scrollFrame.scrollBar, maxValue, MAX_ROWS, ROW_HEIGHT)
        local offset = FauxScrollFrame_GetOffset(scrollFrame.scrollBar)
        for i = 1, MAX_ROWS do
            local value = i + offset
            if value <= maxValue then
                local row = scrollFrame.rows[i]
                if type(news[value]) == "table" then
                    row:SetText("|cFFFFFF00" .. news[value][1] .. " (|cFFFF8800" .. news[value][2] .. "|r)")
                else
                    row:SetText("|cffFFFFFF- " .. news[value])
                end
                row:Show()
            else
                scrollFrame.rows[i]:Hide()
            end
        end
    end

    local scrollSlider = CreateFrame("ScrollFrame",addonName.."NewsFrameScroll",scrollFrame,"FauxScrollFrameTemplate")
    scrollSlider:SetPoint("TOPLEFT", 0, -8)
    scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    scrollSlider:SetScript("OnVerticalScroll", function(self, offset)
        self.offset = math.floor(offset / ROW_HEIGHT + 0.5)
        addon:NewsScrollFrameUpdate()
    end)

    scrollFrame.scrollBar = scrollSlider

    local rows = setmetatable({}, { __index = function(t, i)
        local row = scrollFrame:CreateFontString("$parentRow"..i,"OVERLAY","GameFontNormal")
        row:SetSize(440, 25)
        row:SetJustifyH("LEFT")
        if i == 1 then
            row:SetPoint("TOPLEFT", scrollFrame, 10, -8)
        else
            row:SetPoint("TOPLEFT", scrollFrame.rows[i-1], "BOTTOMLEFT")
        end
        rawset(t, i, row)
        return row
    end })

    scrollFrame.rows = rows
    frameCreated = true
end