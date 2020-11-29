class CreateFavvideos < ActiveRecord::Migration[6.0]
  def change
    create_table :favvideos do |t|
      t.references :video, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
