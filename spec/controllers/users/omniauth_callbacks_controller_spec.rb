require 'rails_helper'

RSpec.describe Users::OmniauthCallbacksController, type: :controller do

  describe "GET #facebook" do
    it "returns http success" do
      get :facebook
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #google" do
    it "returns http success" do
      get :google
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #vk" do
    it "returns http success" do
      get :vk
      expect(response).to have_http_status(:success)
    end
  end

end
