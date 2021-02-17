local function OnEvent(self, event, ...)
    for bag = 0, 4 do
        local slot_num = GetContainerNumSlots(bag)
        for slot = 1, slot_num do
            icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(bag, slot)
            if (quality == 0 and noValue == false) then
                UseContainerItem(bag, slot)
            end
        end
    end
    
end

local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", OnEvent)
