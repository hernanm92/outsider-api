class RiderSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :sport, :photo_url, :description, :type, :age, :nickname, :location, :comment, :updated_at, :created_at

end