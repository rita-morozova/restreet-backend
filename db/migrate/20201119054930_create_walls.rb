class CreateWalls < ActiveRecord::Migration[6.0]
  def change
    create_table :walls do |t|
      t.integer :listing_id
      # t.integer :artist_id
      t.integer :user_id


      t.timestamps
    end
  end
end
