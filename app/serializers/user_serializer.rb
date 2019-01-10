class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :full_name
end
