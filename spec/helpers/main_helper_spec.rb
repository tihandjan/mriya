require 'rails_helper'

RSpec.describe MainHelper, type: :helper do
    describe 'set_teams method' do
        it 'returns teams' do
            teams = FactoryGirl.create(:team)
            
            expect(set_teams).to match_array(teams)
        end
    end

    describe 'set_leagues method' do
        it 'returns leagues' do
            leagues = FactoryGirl.create(:league)

            expect(set_leagues).to match_array(leagues)
        end
    end

    describe 'set_coaches method' do
        it 'returns coaches' do
            coaches = FactoryGirl.create(:coach)

            expect(set_coaches).to match_array(coaches)
        end
    end
end
