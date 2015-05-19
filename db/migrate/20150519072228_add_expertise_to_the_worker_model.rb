class AddExpertiseToTheWorkerModel < ActiveRecord::Migration
  def change
    add_column :workers, :expertise, :string
  end
end
