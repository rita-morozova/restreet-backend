class Listing < ApplicationRecord
  has_one :wall, dependent: :destroy
  belongs_to :owner, class_name: "User", foreign_key: 'user_id'
  has_one :artist, through: :wall
end
