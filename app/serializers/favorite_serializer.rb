class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :art_id
end
