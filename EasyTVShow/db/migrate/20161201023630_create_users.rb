class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.date :birthdate
      t.string :password_digest
      t.string :remember_digest
      t.timestamps
    end
  end
end
