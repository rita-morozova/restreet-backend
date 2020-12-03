class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :username, :user_id

  # has_many :likes
end
