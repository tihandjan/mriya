# == Schema Information
#
# Table name: merits
#
#  id         :integer          not null, primary key
#  merit      :string
#  coach_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_merits_on_coach_id  (coach_id)
#

FactoryGirl.define do
  factory :merit do
    merit "MyString"
    coach nil
  end
end
