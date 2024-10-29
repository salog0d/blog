class ArticlesController < ApplicationController
  def show
    @Article = Article.find(params[:id])
  end

  def index
    @Articles = Article.all
  end
end
