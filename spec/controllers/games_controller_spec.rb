require 'rails_helper'

RSpec.describe GamesController, type: :controller do
    describe 'GET #index' do
        let!(:games) { FactoryGirl.create_list(:game, 2) }
        it 'renders index template' do
            get :index

            expect(response).to render_template(:index)
        end
        it 'assigns all records to games var' do
            get :index

            expect(assigns(:games)).to match_array(games)
        end
    end
    describe 'GET #show' do
        let!(:game) { FactoryGirl.create(:game) }
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