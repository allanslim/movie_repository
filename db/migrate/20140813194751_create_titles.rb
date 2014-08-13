class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.text :description
      t.string :length
      t.string :rating

      t.timestamps
    end
  end
end
