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

class LeagueTeam < ApplicationRecord
  belongs_to :league
  validates :team_name, presence: true
end
