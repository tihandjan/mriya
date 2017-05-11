class GamesController < ApplicationController
    before_action :set_game, only: [:show]
    def index
        @games = Game.order(created_at: :desc)
    end
    def show
    end

    private
    def set_game
        @game = Game.friendly.find(params[:id])
        @games = Game.order(created_at: :desc)        
    end
end