class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :username, :count, :liked

  has_many :likes
end
