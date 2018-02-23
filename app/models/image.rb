# == Schema Information
#
# Table name: images
#
#  id           :integer          not null, primary key
#  status       :string(255)
#  image_url    :string(255)
#  redacted_url :string(255)
#  case_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Image < ApplicationRecord
  has_many :redactions
  belongs_to :case, optional: true
end
