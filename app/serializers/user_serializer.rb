class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :full_name
  # pass the id if we want to do nested routing post request
  # has_many :photobooth_session
end
