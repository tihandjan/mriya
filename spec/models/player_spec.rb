# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
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

require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:birthday) }
  it { should validate_presence_of(:photo) }
  it { should belong_to(:team) }
end
