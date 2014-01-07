class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :biography
      t.date :birthdate

      t.timestamps
    end
  end
end
