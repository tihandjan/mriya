# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string
#  surname    :string
#  birthday   :date
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#
# Indexes
#
#  index_players_on_team_id  (team_id)
#

FactoryGirl.define do
  factory :player do
    name "MyString"
    surname "MyString"
    birthday "2017-04-14"
    team nil
  end
end
