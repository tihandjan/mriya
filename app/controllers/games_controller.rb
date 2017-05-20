class GamesController < ApplicationController
    before_action :set_game, only: [:show]
    before_action :set_games, only: [:duflu, :kharkiv]

    def show
    end

    def duflu
        
    end

    def kharkiv
        
    end

    private
    def set_game
        @game = Game.friendly.find(params[:id])
        @games = Game.where(category: @game.category).order(created_at: :desc)        
    end

    def set_games
        if params[:action] == 'duflu'
            @games = Game.where(category: 'перевенство ДЮФЛ').order(created_at: :desc)        
            respond_to do |format|
                format.html {render 'index'}
            end
        else
            @games = Game.where(category: 'первенство харьковской обл.').order(created_at: :desc)        
            respond_to do |format|
                format.html {render 'index'}
            end
        end
    end
end