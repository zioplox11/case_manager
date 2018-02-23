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

FactoryBot.define do
  factory :redaction do
    h 1
    w 1
    axis "MyString"
  end
end
