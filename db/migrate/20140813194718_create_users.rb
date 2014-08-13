class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :firstname
      t.string :string
      t.string :lastname
      t.integer :role

      t.timestamps
    end
  end
end
