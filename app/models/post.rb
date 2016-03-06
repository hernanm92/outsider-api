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

class Post < ActiveRecord::Base
  def self.find_by!(params)
    params[:id] = params.delete(:id) if params[:id]
    super params
  end
end
