# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  russian    :text
#  ukrainian  :text
#  english    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :contact do
    russian "MyText"
    ukrainian "MyText"
    english "MyText"
  end
end
