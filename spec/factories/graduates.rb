# == Schema Information
#
# Table name: graduates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :graduate do
    body "MyText"
  end
end
