class AddProductRefToTaggings < ActiveRecord::Migration[5.1]
  def change
    add_reference :taggings, :product, foreign_key: true
  end
end
