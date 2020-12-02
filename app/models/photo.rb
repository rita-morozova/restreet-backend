class Photo < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def liked?(user)
    !!self.likes.find{|like| like.user_id === user.id}
  end 
 
  
end
