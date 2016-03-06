# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  sport       :string
#  url         :string
#  post_type   :string
#  date        :datetime
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :sport, :description, :url, :type, :updated_at, :created_at

  def type
    object.post_type
  end
end
