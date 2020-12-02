class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :username

  # has_many :likes
end
