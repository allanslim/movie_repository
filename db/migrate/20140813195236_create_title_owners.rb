class CreateTitleOwners < ActiveRecord::Migration
  def change
    create_table :title_owners do |t|
      t.integer :title_id
      t.integer :studio_id

      t.timestamps
    end
  end
end
