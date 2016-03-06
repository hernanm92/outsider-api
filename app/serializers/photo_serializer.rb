# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  url         :string
#  sport       :string
#  date        :datetime
#  spot        :jsonb            default({})
#  riders      :jsonb            default([])
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :sport, :date, :spot, :riders
end
