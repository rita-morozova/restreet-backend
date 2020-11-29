class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.float :lat
      t.float :lng
      t.string :address
      t.integer :zipcode
      t.string :description
      t.string :photo
      # t.integer :owner_id
      t.integer :user_id
      t.boolean :adopted

      t.timestamps
    end
  end
end
