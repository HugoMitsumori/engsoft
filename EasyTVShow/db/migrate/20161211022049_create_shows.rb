class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.date :release
      t.string :description
      t.timestamps
    end
  end
end
