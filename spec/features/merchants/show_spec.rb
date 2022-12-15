require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
    it 'can show a single merchant' do
        merchant_1 = Merchant.create!(name: 'Bike Shop')
        merchant_2 = Merchant.create!(name: 'Jewelry Shop')
    
        visit "/merchants/#{merchant_1.id}"
        
        expect(page).to have_content(merchant_1.name)
        expect(page).to_not have_content(merchant_2.name)
    end

    it 'lists all items associated with that merchant' do
        merchant_1 = Merchant.create!(name: 'Bike Shop')
        merchant_2 = Merchant.create!(name: 'Jewelry Shop')
        item_1 = merchant_1.items.create!(name: 'Tire', description: 'I am a tire', unit_price: 100)
        item_2 = merchant_1.items.create!(name: 'Seat', description: 'I am a seat', unit_price: 200)
        item_3 = merchant_2.items.create!(name: 'Ring', description: 'I am a ring', unit_price: 300)
    
        visit "/merchants/#{merchant_1.id}"
    
        expect(page).to have_content(item_1.name)
        expect(page).to have_content(item_2.name)
        expect(page).to_not have_content(item_3.name)
    end
end

