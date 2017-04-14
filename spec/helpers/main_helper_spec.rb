require 'rails_helper'

RSpec.describe MainHelper, type: :helper do
    describe 'set_teams method' do
        it 'returns teams' do
            teams = FactoryGirl.create(:team)
            
            expect(set_teams).to match_array(teams)
        end
    end
end
