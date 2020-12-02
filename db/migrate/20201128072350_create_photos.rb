class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :username
      t.string :image
      t.integer :count, default: 0
      
     
     
      

      t.timestamps
    end
  end
end
