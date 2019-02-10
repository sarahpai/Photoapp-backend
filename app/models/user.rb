class User < ApplicationRecord
	has_secure_password
	validates :username, uniqueness: { case_sensitive: false }
	has_many :photos
	# mount_uploader :photo, AvatarUploader


	

end
