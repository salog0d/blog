class ArticlesController < ApplicationController
  def show
    @Article = Article.find(params[:id])
  end
end
