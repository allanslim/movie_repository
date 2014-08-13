class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :fax

      t.timestamps
    end
  end
end
