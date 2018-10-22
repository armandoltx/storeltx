class Order < ApplicationRecord
  has_many :line_items
  belongs_to :user

  validates :unit_number, :street_number, :street_name :post_code, :suburb, :state
  validates :total, numericality: true 
end
