Uncharted = CreateFrame('Frame', 'Uncharted')

local WorldMapFrame_OnShow = WorldMapFrame:GetScript('OnShow')
WorldMapFrame:SetScript('OnShow',
    function()
        WorldMapFrame_OnShow()

        this:ClearAllPoints()
        this:SetPoint('CENTER', UIParent, 0, 0)
        this:SetScale(0.75)
        this:SetWidth(WorldMapButton:GetWidth() + 15)
        this:SetHeight(WorldMapButton:GetHeight() + 55)
        this:EnableMouse(true)
        this:EnableKeyboard(false)

        BlackoutWorld:Hide()
    end
)

Uncharted:RegisterEvent('VARIABLES_LOADED')
Uncharted:SetScript('OnEvent',
    function()
        UIPanelWindows['WorldMapFrame'] = { area = 'center', pushable = 0, whileDead = 1 }
    end
)