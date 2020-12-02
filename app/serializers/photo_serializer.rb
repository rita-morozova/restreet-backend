class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :username, :count

  # has_many :likes
end
