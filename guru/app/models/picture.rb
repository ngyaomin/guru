class Picture < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader
end
