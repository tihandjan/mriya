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

require 'rails_helper'

RSpec.describe LeagueTeam, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:team_name) }
    it { should belong_to(:league) }
  end
end
