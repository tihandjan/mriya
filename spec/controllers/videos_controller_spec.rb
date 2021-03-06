# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  video_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_videos_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe VideosController, type: :controller do

    describe 'GET #index' do
        before(:each) { @videos = FactoryGirl.create_list(:video, 3) }
        it 'renders index template' do
            get :index

            expect(response).to render_template(:index)
        end
        it 'assigns videos to videos var' do
            get :index
            expect(assigns(:videos)).to match_array(@videos)
        end
    end

    describe 'GET #show' do
        let(:video) { FactoryGirl.create(:video) }
        it 'renders #show template' do
            get :show, id: video

            expect(response).to render_template(:show)
        end
        it 'assigns video to video var' do
            get :show, id: video

            expect(assigns(:video)).to eq(video)
        end
    end

end
