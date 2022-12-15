require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
    it 'can show all merchants' do
        merchant_1 = Merchant.create(name: 'Bike Shop')
        merchant_2 = Merchant.create(name: 'Jewelry Shop')
    
        visit '/merchants'
    
        expect(page).to have_content(merchant_1.name)
        expect(page).to have_content(merchant_2.name)
    end

    it 'can link to merchant show page' do
        merchant_1 = Merchant.create(name: 'Bike Shop')
        merchant_2 = Merchant.create(name: 'Jewelry Shop')
    
        visit '/merchants'
    
        click_link merchant_1.name
    
        expect(current_path).to eq("/merchants/#{merchant_1.id}")
    end
end