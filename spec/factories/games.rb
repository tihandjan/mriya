# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  season     :string           default("Турнирная таблица Первенства Украины 2017/2018")
#  body       :text
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_games_on_slug  (slug)
#

FactoryGirl.define do
  factory :game do
    season "MyString"
    body "MyText"
  end
end
