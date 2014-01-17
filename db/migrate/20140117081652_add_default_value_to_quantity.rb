class AddDefaultValueToQuantity < ActiveRecord::Migration
  def change
  	change_column :line_items, :quantity, default: 1
  end
end
