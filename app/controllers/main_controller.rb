class MainController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @video = Video.last
    @players = Player.where('extract(month from birthday) = ?', Time.current.month).order("extract(day from birthday) ASC")
  end

  def search
    @articles = Article.search(params[:search])
    @videos = Video.search(params[:search])
    @players = Player.search(params[:search])
    respond_to do |f|
      f.js
      f.html {redirect_to :back}
    end
  end
end
