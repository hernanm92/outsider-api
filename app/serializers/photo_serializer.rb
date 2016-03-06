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

class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :sport, :rider
end
