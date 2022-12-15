class MerchantFacade
    def self.find_merchant_by_id(id)
        json = MerchantService.merchant(id)
        Merchant.new(json)
    end

    def self.find_merchants
        json = MerchantService.merchants
        json.map do |merchant|
            Merchant.new(merchant)
        end
    end

    def self.find_merchant_items(id)
        json = MerchantService.merchant_items(id)
        json.map do |item|
            Item.new(item)
        end
    end
end