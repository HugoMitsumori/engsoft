class CreateWatchings < ActiveRecord::Migration[5.0]
  def change
    create_table :watchings do |t|
    	t.references :watcher
    	t.references :show
    	t.string :status    	
    	t.timestamps null: false 
    end
  end
end
