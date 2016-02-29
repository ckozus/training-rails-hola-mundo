class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :email
      t.text :notes

      t.timestamps null: false
    end
  end
end
