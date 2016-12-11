class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.integer :code
      t.string :title
      t.string :description
      t.date :release

      t.timestamps
    end
  end
end
