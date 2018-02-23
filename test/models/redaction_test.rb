# == Schema Information
#
# Table name: redactions
#
#  id         :integer          not null, primary key
#  h          :integer
#  w          :integer
#  axis       :string(255)
#  image_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RedactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
