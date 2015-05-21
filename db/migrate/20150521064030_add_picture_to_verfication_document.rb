class AddPictureToVerficationDocument < ActiveRecord::Migration
  def change
    add_attachment :verification_documents, :document_picture
  end
end
