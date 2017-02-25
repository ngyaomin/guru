class Picture < ApplicationRecord
    mount_uploader :picture_image, PictureImageUploader
    belongs_to :user
end
