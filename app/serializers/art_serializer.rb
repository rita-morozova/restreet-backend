class ArtSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :year, :image_url
end
