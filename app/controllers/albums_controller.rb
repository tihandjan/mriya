class AlbumsController < ApplicationController
    before_action :set_album, only: [:show]
    after_action :view, only: [:show]
    def index
        @albums = Album.order(created_at: :desc)
    end

    def show
    end

    private
    def set_album
        @album = Album.friendly.find(params[:id])
    end

    def view
        @album.view.blank? ? View.create!(views: 1, viewable: @album) : @album.view.update(views: @album.view.views + 1)
    end
end