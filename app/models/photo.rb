class Photo < ActiveRecord::Base

	belongs_to :place 


	mount_uploader :picture, PictureUploader
end

# Belongs to user???