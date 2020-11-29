class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :name
      t.string :location
      t.string :bio
      t.string :picture

      t.timestamps
    end
  end
end
