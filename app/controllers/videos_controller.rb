class VideosController < ApplicationController
    before_action :set_video, only: [:show]
    def index   
        @videos = Video.all
    end

    def show
    end

    private
    def set_video
        @video = Video.friendly.find(params[:id])
    end
end