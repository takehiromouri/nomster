class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.text :caption
        t.timestamps
        t.integer :place_id
        t.integer :user_id
    end

    add_index :photos, [:user_id, :place_id]
    add_index :caption, :place_id
  end
end
