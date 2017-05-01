class TournamentsController < ApplicationController
    before_action :set_tournament, only: [:show]

    def show
    end
    def summer
        @data = Tournament.where(kind: 'летний').order(created_at: :desc)
    end

    def winter
        @data = Tournament.where(kind: 'зимний').order(created_at: :desc)
    end

    def spring
        @data = Tournament.where(kind: 'весенний').order(created_at: :desc)
    end

    private
    def set_tournament
        @tournament = Tournament.friendly.find(params[:id])
    end
end