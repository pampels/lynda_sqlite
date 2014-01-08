class CreateFeaturesAssignments < ActiveRecord::Migration
  def change
    create_table :features_assignments do |t|
    	t.integer :album_id
    	t.integer :feature_id
    end
    add_index :features_assignments, :album_id
    add_index :features_assignments, :feature_id
  end
end
