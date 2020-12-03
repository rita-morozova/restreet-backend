class Photo < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
 

  # def liked?(user)
  #   !!self.likes.find{|like| like.user_id === user.id}
  # end 
 
  
end
