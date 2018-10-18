class AddLineItemRefToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :line_item, foreign_key: true
  end
end
