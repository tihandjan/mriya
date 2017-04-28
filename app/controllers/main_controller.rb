class MainController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @video = Video.last
    @players = Player.where('extract(month from birthday) = ? and extract(day from birthday) = ?', Time.current.month, Time.current.day)
  end

  def search
    @articles = Article.search(params[:search])
    @videos = Video.search(params[:search])
    respond_to do |f|
      f.js
      f.html {redirect_to :back}
    end
  end
end
