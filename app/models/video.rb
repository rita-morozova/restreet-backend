class Video < ApplicationRecord
  has_many :notes
  
  has_many :users, through: :favvideos
  has_many :favvideos
end
