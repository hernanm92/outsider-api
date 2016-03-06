# == Schema Information
#
# Table name: photos
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  url          :string
#  sport        :string
#  date         :datetime
#  other_spot   :string
#  spot_id      :integer
#  other_riders :text             default([]), is an Array
#  rider_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Photo < ActiveRecord::Base
  def self.find_by!(params)
    params[:id] = params.delete(:id) if params[:id]
    super params
  end
end
