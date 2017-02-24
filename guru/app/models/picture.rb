class Picture < ApplicationRecord
    mount_uploader :picture_image, PictureImageUploader
end
