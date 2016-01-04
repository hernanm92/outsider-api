class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :private, :alias, :followers, :following, :updated_at, :created_at

end