# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#
# Indexes
#
#  index_games_on_slug  (slug)
#

require 'rails_helper'

RSpec.describe GamesController, type: :controller do
    describe 'GET #duflu' do
        let!(:games) { FactoryGirl.create(:game, category: 'перевенство ДЮФЛ') }
        it 'renders index template' do
            get :duflu

            expect(response).to render_template(:index)
        end
        it 'assigns all records to games var' do
            get :duflu

            expect(assigns(:games)).to match_array(games)
        end
    end
    describe 'GET #kharkiv' do
        let!(:games) { FactoryGirl.create(:game, category: 'первенство харьковской обл.') }
        it 'renders index template' do
            get :kharkiv

            expect(response).to render_template(:index)
        end
        it 'assigns all records to games var' do
            get :kharkiv

            expect(assigns(:games)).to match_array(games)
        end
    end
    describe 'GET #show' do
        let!(:game) { FactoryGirl.create(:game, category: 'первенство харьковской обл.') }
        it 'renders index template' do
            get :show, id: game

            expect(response).to render_template(:show)
        end
        it 'assigns all records to games var' do
            get :show, id: game

            expect(assigns(:game)).to eq(game)
            expect(assigns(:games)).to match_array(game)
        end
    end
end
