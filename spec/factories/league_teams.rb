# == Schema Information
#
# Table name: league_teams
#
#  id         :integer          not null, primary key
#  team_name  :string
#  league_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_league_teams_on_league_id  (league_id)
#

FactoryGirl.define do
  factory :league_team do
    team_name "MyString"
    league nil
  end
end
