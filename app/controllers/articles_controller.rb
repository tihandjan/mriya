class ArticlesController < ApplicationController
    before_action :set_article, only: [:show]
    def index
        @articles = Article.order(created_at: :desc).first(6)
    end

    def show
    end

    def more
        number = params[:count]
        number = number.to_i + 3
        @articles = Article.order(created_at: :desc).first(number)
        respond_to do |f|
            f.js {}
        end
    end

    private
    def set_article
        @article = Article.friendly.find(params[:id])
    end
end
