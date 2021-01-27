class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :video_id, :content

  belongs_to :video
end
