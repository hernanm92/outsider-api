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

class Photo < ActiveRecord::Base
  def self.find_by!(params)
    params[:id] = params.delete(:id) if params[:id]
    super params
  end
end
