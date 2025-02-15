require 'rails_helper'

RSpec.describe 'New Merchant' do
  describe 'As a visitor' do
    describe 'When I visit the new merchant form' do
      it 'I can create a new merchant' do

        visit '/merchants'

        click_link 'New Merchant'

        expect(current_path).to eq('/merchants/new')

        fill_in 'Name', with: 'Jeffrey'
        fill_in 'Address', with: "1235"
        fill_in 'City', with: "Denver"
        fill_in 'State', with: "Colorado"
        fill_in 'Zipcode', with: "80021"

        click_on 'Create Merchant'

        expect(current_path).to eq("/merchants")
        expect(page).to have_content('Jeffrey')
      end
    end
  end
end
