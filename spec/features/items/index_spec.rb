require 'rails_helper'

RSpec.describe "Items Index" do
  describe "As a Visitor" do
    describe "When I visit the items index page" do
      it "I see the each item in the system with their attributes" do

        merchant = Merchant.create!(name: "She Sells Seashells", address: "1234 Market St", city: "Denver", state: "CO", zipcode: "80220")
        item = Item.create!(name: "Necklace", description: "Shell on chain", price: 30, image: "file_path", active_status: true, inventory: 3, merchant_id: merchant.id)

        visit "/items"

        expect(page).to have_content(item.name)
        expect(page).to have_content(item.description)
        expect(page).to have_content(item.price)
        expect(page).to have_content(item.active_status)
        expect(page).to have_content(item.inventory)
        expect(page).to have_content(item.merchant.name)
      end
    end
  end
end
