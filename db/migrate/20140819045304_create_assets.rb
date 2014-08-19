class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :assetValue
      t.string :assetType

      t.timestamps
    end
  end
end
