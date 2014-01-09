class AddImagePathToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :image_path, :string
  end
end
