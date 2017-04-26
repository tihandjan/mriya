class AlbumsController < ApplicationController
    before_action :set_album, only: [:show]
    def index
        @albums = Album.order(created_at: :desc)
    end

    def show
    end

    private
    def set_album
        @album = Album.find(params[:id])
    end
end