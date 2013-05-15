class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_number
      t.string :username
      t.string :address
      t.string :phone_number
      t.string :email
      t.integer :idPuesto
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end
end
