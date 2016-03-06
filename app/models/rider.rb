# == Schema Information
#
# Table name: riders
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  alias       :string           not null
#  sport       :string           not null
#  photo_url   :string           not null
#  birthdate   :datetime
#  description :text
#  nickname    :string
#  procedence  :string
#  residence   :string
#  stance      :string
#  quote       :text
#  facebook    :string
#  instagram   :string
#  twitter     :string
#  other_spots :text             default([]), is an Array
#  spot_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Rider < ActiveRecord::Base

  def self.find_by!(params)
    params[:alias] = params.delete(:id) if params[:id]
    super params
  end
end
