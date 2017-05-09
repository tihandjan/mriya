# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_achievements_on_slug  (slug)
#

FactoryGirl.define do
  factory :achievement do
    title "MyString"
    body "MyText"
  end
end
