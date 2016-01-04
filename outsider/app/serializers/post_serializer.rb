class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :sport, :description, :url, :type, :updated_at, :created_at

  def type
    object.post_type
  end
end