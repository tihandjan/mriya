# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#  photo      :string
#
# Indexes
#
#  index_teams_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe TeamsController, type: :controller do

    describe 'GET #show' do
        let(:team) { FactoryGirl.create(:team) }
        it 'renders show template' do
            get :show, id: team

            expect(response).to render_template(:show) 
        end
        it 'assigns team to team var' do
            get :show, id: team

            expect(assigns(:team)).to eq(team)
        end
    end

end
