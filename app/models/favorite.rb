class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :art

  # validates :art_id, uniqueness: {scope: :user_id, message: "Already favorited"}

end
