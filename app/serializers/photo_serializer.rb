class PhotoSerializer < ActiveModel::Serializer
  attributes :photo, :id, :like, :user
  belongs_to :user
end
