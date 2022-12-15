require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
    it 'can show all merchants' do
        visit '/merchants'
    
        expect(page).to have_content('Schroeder-Jerde')
        expect(page).to have_content('Kozey Group')
    end

    it 'can link to merchant show page' do
        visit '/merchants'
    
        click_link 'Schroeder-Jerde'
    
        expect(current_path).to eq("/merchants/1")
    end
end