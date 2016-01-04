class VideoSerializer < ActiveModel::Serializer
  attributes :id, :sport, :owner, :title, :points, :views, :description, :difficulty, :url, :updated_at, :created_at

end