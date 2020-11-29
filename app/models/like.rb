class Like < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  # validates_presence_of  :user, :photo
  # validates :user_id, uniqueness: {scope: [:photo_id]}
end
