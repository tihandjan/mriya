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
#
# Indexes
#
#  index_players_on_team_id  (team_id)
#

require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:surname) }
  it { should validate_presence_of(:birthday) }
end
