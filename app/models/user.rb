# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true, length: { in: 5..15 }
  validates :password, presence: true, length: { in: 5..30 }

  def self.find_by!(params)
    params[:username] = params.delete(:id) if params[:id]
    super params
  end
end
