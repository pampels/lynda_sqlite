class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :invoice_number
      t.integer :customer_id
      t.timestamps
    end
    add_index :orders, :customer_id
  end
end
