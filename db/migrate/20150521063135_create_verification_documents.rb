class CreateVerificationDocuments < ActiveRecord::Migration
  def change
    create_table :verification_documents do |t|
      t.string :document_type
      t.belongs_to :worker, index: true
      t.timestamps null: false
    end
  end
end
