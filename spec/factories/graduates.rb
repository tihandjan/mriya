# == Schema Information
#
# Table name: graduates
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :graduate do
    body "MyText"
  end
end
