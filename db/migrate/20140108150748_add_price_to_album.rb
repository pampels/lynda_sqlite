class AddPriceToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :price, :decimal, precision: 8, scale: 2, default: 9.99
  end
end
