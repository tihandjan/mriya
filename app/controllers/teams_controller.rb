class TeamsController < ApplicationController
    before_action :set_team, only: [:show]
    def show
    end

    private
    def set_team
        @team = Team.friendly.find(params[:id])
    end
end