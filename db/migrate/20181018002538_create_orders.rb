class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.references :user, foreign_key: true
      t.boolean :order_finalised
      t.string :unit_type
      t.string :unit_number
      t.string :unit_level
      t.text :address
      t.integer :post_code
      t.string :state
      t.string :suburb
      t.string :street_name
      t.string :street_number
      t.string :string

      t.timestamps
    end
  end
end
