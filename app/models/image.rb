class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader # use carrier_wave to associate the image with Image model
  # mount_uploader is method to use
  # PictureUploader is uploader generated
  #  :picture is attribute name of string type for Image model
end
