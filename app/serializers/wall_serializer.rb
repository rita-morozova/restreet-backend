class WallSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id

  # belongs_to :user 
  # belongs_to :listing
end
