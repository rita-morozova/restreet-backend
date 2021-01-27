class WallSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id
end
