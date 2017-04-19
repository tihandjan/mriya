# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe League, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should have_many(:tables) }
    it { should have_many(:league_teams) }
  end
end
