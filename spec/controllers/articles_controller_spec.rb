# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#
# Indexes
#
#  index_articles_on_slug  (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
    describe 'GET #index' do
        before do
            @articles = FactoryGirl.create_list(:article, 3)
            get :index
        end
        it 'renders index template' do
            expect(response).to render_template(:index)
        end

        it 'assigns articles to articles var' do
            expect(assigns(:articles)).to match_array(@articles)
        end
    end

    describe 'GET #show' do
        let(:article) { FactoryGirl.create(:article) }
        it 'renders show template' do
            get :show, id: article

            expect(response).to render_template(:show)
        end

        it 'assigns article to article var' do
            get :show, id: article
            expect(assigns(:article)).to eq(article)
        end
    end
end
