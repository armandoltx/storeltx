class Product < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :images
  
  belongs_to :subcategory
  belongs_to :line_item

  validates :name, :brand, :model, :size
  validates :price, numericality: true
end
