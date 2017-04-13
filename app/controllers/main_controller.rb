class MainController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @video = Video.last
  end
end
