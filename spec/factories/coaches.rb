# == Schema Information
#
# Table name: coaches
#
#  id              :integer          not null, primary key
#  name            :string
#  photo           :string
#  coaching_groups :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :coach do
    name "MyString"
    photo "MyString"
    coaching_groups "MyString"
  end
end
