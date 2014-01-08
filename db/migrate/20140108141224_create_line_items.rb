class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
    	t.integer :order_id
      t.integer :album_id
      t.integer :quantity
      t.decimal :price, precision: 8, scale:2

      t.timestamps
    end
    add_index :line_items, :order_id
    add_index :line_items, :album_id
  end
end
