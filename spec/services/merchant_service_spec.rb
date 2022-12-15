require 'rails_helper'

RSpec.describe 'Merchant Service' do
    it 'connects to the merchants api' do
        parsed_json = MerchantService.merchants

        expect(parsed_json).to be_a(Array)
        expect(parsed_json.first[:attributes]).to have_key(:name)
    end

    it 'connects to the merchant api' do
        parsed_json = MerchantService.merchant(1)

        expect(parsed_json).to be_a(Hash)
        expect(parsed_json[:attributes]).to have_key(:name)
    end

    it 'connects to the merchant items api' do
        parsed_json = MerchantService.merchant_items(1)

        expect(parsed_json).to be_a(Array)
        expect(parsed_json.first[:attributes]).to have_key(:name)
    end
end