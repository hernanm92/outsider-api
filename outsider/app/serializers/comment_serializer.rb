class CommentSerializer < ActiveModel::Serializer
  attributes :id, :video, :owner, :description, :points, :updated_at, :created_at

end