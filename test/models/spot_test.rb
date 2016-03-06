# == Schema Information
#
# Table name: spots
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  alias       :string           not null
#  address     :string           not null
#  latitude    :decimal(, )
#  longuitude  :decimal(, )
#  url         :string           not null
#  description :text
#  sports      :text             default([]), is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
