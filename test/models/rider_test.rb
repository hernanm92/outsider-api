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
#  spots       :jsonb            default([])
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RiderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
