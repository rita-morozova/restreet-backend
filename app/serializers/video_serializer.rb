class VideoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url

  has_many :notes
end
