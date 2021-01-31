class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name, :location, :bio

  has_many :favorites
  has_many :arts, through: :favorites

  has_many :listings
  has_many :walls, through: :listings

  has_many :videos
  has_many :favvideos, through: :videos 

  has_many :notes

  has_many :photos
  has_many :likes

end
