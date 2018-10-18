class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.string :model
      t.decimal :price
      t.string :size
      t.string :colour
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
