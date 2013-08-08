class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :password_hash
      t.string :password_salt
      t.string :email
      t.string :username
      t.text :bio
      t.string :url
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
