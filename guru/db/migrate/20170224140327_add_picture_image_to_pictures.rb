class AddPictureImageToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :picture_image, :string
  end
end
