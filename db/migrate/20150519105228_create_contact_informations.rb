class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.string :line_1
      t.string :line_2
      t.string :pincode
      t.string :city
      t.string :state
      t.string :contact_number
      t.string :email
      t.belongs_to :worker
      t.timestamps null: false
    end
  end
end
