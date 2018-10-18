class AddMoreFielsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :unit, :string
    add_column :users, :street_number, :string
    add_column :users, :street_name, :string
    add_column :users, :suburb, :string
    add_column :users, :state, :string
    add_column :users, :post_code, :string
    add_column :users, :mobile, :string
  end
end
