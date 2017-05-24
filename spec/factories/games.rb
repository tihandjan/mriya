# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#
# Indexes
#
#  index_games_on_slug  (slug)
#

FactoryGirl.define do
  factory :game do
    season "MyString"
    body "MyText"
    category "MyText"
  end
end
