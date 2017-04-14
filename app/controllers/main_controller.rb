class MainController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
    @video = Video.last
    @players = Player.where('extract(month from birthday) = ? and extract(day from birthday) = ?', Time.current.month, Time.current.day)
  end
end
