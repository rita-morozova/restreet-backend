class ListingSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :address, :zipcode, :description, :photo, :user_id, :adopted

  has_one :wall, dependent: :destroy
  belongs_to :owner, class_name: "User", foreign_key: 'user_id'
  belongs_to :artist, class_name: "User", foreign_key: 'user_id'

end
