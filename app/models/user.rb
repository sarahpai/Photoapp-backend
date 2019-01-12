class User < ApplicationRecord
	# has_many :users_template
	# has_many :template :through :users_template
	has_secure_password
	validates :username, uniqueness: { case_sensitive: false }
end