class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :username, :user_id, :created_at

  # has_many :likes
end
