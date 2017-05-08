# == Schema Information
#
# Table name: fixtures
#
#  id         :integer          not null, primary key
#  home_team  :string
#  away_team  :string
#  category   :string
#  score      :string           default("---")
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :fixture do
    home_team "MyString"
    away_team "MyString"
    category "MyString"
    score "MyString"
    date "2017-05-08 14:44:10"
  end
end
