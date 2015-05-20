class AddProfilePictureToWorker < ActiveRecord::Migration
  def change
    add_attachment :workers, :profile_picture
  end
end
