class CreateStudiosTitles < ActiveRecord::Migration
  def change
    create_table :studios_titles do |t|
      t.integer :title_id
      t.integer :studio_id

      t.timestamps
    end
  end
end
