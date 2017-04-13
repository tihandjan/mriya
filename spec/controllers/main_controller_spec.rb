require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns articles to articles var" do
      articles = FactoryGirl.create(:article)
      video = FactoryGirl.create(:video)
      get :index

      expect(assigns(:articles)).to match_array([articles])
      expect(assigns(:video)).to eq(video)     
    end
  end

end
