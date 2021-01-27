class Wall < ApplicationRecord
  belongs_to :listing
  belongs_to :artist, class_name: "User", foreign_key: 'user_id', optional: :true
  
end
