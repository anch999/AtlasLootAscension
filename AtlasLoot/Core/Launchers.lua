
local icon = LibStub('LibDBIcon-1.0')
local minimap = LibStub:GetLibrary('LibDataBroker-1.1'):NewDataObject("AtlasLoot", {
    type = 'data source',
    text = "AtlasLoot",
    icon = "Interface\\Icons\\INV_Box_01",
  })

function minimap.OnClick(frame, button)
    GameTooltip:Hide()
	if IsShiftKeyDown() then
        AtlasLoot:OptionsToggle();
    else
        if AtlasLootDefaultFrame:IsVisible() then
            AtlasLootDefaultFrame:Hide();
        else
            AtlasLootDefaultFrame:Show();
        end
    end
end

function minimap.OnLeave()
    GameTooltip:Hide()
end

-- handle minimap tooltip
local function GetTipAnchor(frame)
    local x, y = frame:GetCenter()
    if not x or not y then return 'TOPLEFT', 'BOTTOMLEFT' end
    local hhalf = (x > UIParent:GetWidth() * 2 / 3) and 'RIGHT' or (x < UIParent:GetWidth() / 3) and 'LEFT' or ''
    local vhalf = (y > UIParent:GetHeight() / 2) and 'TOP' or 'BOTTOM'
    return vhalf .. hhalf, frame, (vhalf == 'TOP' and 'BOTTOM' or 'TOP') .. hhalf
end

function minimap.OnEnter(frame)
    GameTooltip:SetOwner(frame, 'ANCHOR_NONE')
    GameTooltip:SetPoint(GetTipAnchor(frame))
    GameTooltip:ClearLines()
    GameTooltip:AddLine("AtlasLoot")
    GameTooltip:AddLine("|cff1eff00Left-Click|r Browse Loot Tables")
    GameTooltip:AddLine("|cffff0000Shift-Click|r View Options")
    GameTooltip:AddLine("|cffccccccLeft-Click + Drag|r Move Minimap Button")
    GameTooltip:Show()
end

function AtlasLoot:MinimapIconSetup()
	if not self.db.profile.minimap then
		self.db.profile.minimap = {hide = false}
	end

	if icon then
		icon:Register('AtlasLoot', minimap, self.db.profile.minimap)
	end
end

-- show/hide minimap icon
function AtlasLoot:ToggleMinimap()
    local hide = not self.db.profile.minimap.hide
    self.db.profile.minimap.hide = hide
    if hide then
      icon:Hide("AtlasLoot")
    else
      icon:Show("AtlasLoot")
    end
end