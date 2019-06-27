class Item < ApplicationRecord
  validates_presence_of :name, :description, :price, :image, :active_status, :inventory, :merchant_id

  belongs_to :merchant
end
