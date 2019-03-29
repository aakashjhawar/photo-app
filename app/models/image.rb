class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader 
  validate :picture_size
  # use carrier_wave to associate the image with Image model
  # mount_uploader is method to use
  # PictureUploader is uploader generated
  #  :picture is attribute name of string type for Image model

  private

  def picture_size
  	if picture.size > 5.megabytes
  		errors.add(:picture, "should be less than 5MB")
  	end
  end
  
end
