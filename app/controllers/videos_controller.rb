class VideosController < ApplicationController
    before_action :set_video, only: [:show]
    def index   
        @videos = Video.order(created_at: :desc).first(6)
    end

    def show
    end

    def more
        number = params[:count]
        number = number.to_i + 3
        @videos = Video.order(created_at: :desc).first(number)
        respond_to do |f|
            f.js {}
        end
    end

    private
    def set_video
        @video = Video.friendly.find(params[:id])
    end
end