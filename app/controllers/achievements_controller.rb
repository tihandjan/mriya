class AchievementsController < ApplicationController
    before_action :set_achievement, only: [:show]
    def index
        @achievements = Achievement.order(created_at: :desc)
    end

    def show
    end

    private
    def set_achievement
        @achievement = Achievement.friendly.find(params[:id])
    end
end