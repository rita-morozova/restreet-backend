class Favvideo < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :video_id, uniqueness: {scope: :user_id, message: "Already in your list"}
end
