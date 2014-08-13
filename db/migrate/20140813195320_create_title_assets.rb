class CreateTitleAssets < ActiveRecord::Migration
  def change
    create_table :title_assets do |t|
      t.integer :asset_id
      t.integer :title_id

      t.timestamps
    end
  end
end
