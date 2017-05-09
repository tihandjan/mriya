# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_achievements_on_slug  (slug)
#

require 'rails_helper'

RSpec.describe AchievementsController, type: :controller do
    describe 'GET #index' do
        before(:each) do
            @achievement = FactoryGirl.create(:achievement)
            get :index
        end
        it 'assigns all records to achievements var' do
            expect(assigns(:achievements)).to match_array(@achievement)
        end
        it 'renders index template' do
            expect(response).to render_template(:index)
        end
    end

    describe 'GET #show' do
        before(:each) do
            @achievement = FactoryGirl.create(:achievement)
            get :show, id: @achievement
        end
        it 'assigns particular record to achievement var' do
            expect(assigns(:achievement)).to eq(@achievement)
        end
        it 'renders show template' do
            expect(response).to render_template(:show)
        end
    end
end
