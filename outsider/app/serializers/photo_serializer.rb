class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :sport, :rider
end
