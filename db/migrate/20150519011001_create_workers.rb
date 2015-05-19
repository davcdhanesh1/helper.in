class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :firstname
      t.string :sirname
      t.integer :age
      t.string :educational_background 
      t.string :work_background
      t.string :native_city
      t.timestamps null: false
    end
  end
end
