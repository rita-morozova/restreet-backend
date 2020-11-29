class Note < ApplicationRecord
  belongs_to :video

  validates :content, length: {maximum: 500}
end
