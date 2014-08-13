class CreateTitleActors < ActiveRecord::Migration
  def change
    create_table :title_actors do |t|
      t.integer :title_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
