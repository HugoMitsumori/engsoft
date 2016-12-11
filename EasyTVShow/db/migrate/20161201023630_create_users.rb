class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.string :cpf
      t.integer :age
      t.string :profession
      t.string :password_digest
      t.string :remember_digest
      t.timestamps
    end
  end
end
