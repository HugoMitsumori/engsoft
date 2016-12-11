class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
    	t.references :follower
    	t.references :followed
    	t.timestamps null: false  
    end
  end
end
