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

class Redaction < ApplicationRecord
  belongs_to :image, optional: true
end
