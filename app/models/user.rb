class User < ApplicationRecord
  has_secure_password 
 
  has_many :favorites
  has_many :arts, through: :favorites, dependent: :destroy


  #user can be either a wall owner or an artist
  has_many :listings
  has_many :walls
  has_many :walls_for_art, through: :walls, source: :listings, foreign_key: 'artist_id'

  has_many :notes

  has_many :likes
  has_many :photos, through: :likes, dependent: :destroy
  has_many :photos
 
  has_many :favvideos
  has_many :videos, through: :favvideos, dependent: :destroy

  validates :email, uniqueness: true, on: :create
  validates :username, uniqueness: true, on: :create
 
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  
end
