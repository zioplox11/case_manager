# == Schema Information
#
# Table name: cases
#
#  id         :integer          not null, primary key
#  status     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Case < ApplicationRecord
  has_many :images
end
