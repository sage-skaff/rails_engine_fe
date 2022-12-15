require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
    it 'can show a single merchant' do
        visit "/merchants/1"
        
        expect(page).to have_content('Schroeder-Jerde')
        expect(page).to_not have_content('Kozey Group')
    end

    it 'lists all items associated with that merchant' do
        visit "/merchants/1"
        
        expect(page).to have_content('Nemo Facere')
        expect(page).to have_content('Expedita Aliquam')
        expect(page).to_not have_content('Quo Soluta')
    end
end

