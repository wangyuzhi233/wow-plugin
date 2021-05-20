local function OnEvent(self, event, ...)
    if (CanMerchantRepair() == true) then
        RepairAllItems()
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", OnEvent)

