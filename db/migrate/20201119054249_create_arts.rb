class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :artist
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end
