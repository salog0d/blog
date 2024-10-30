class ArticlesController < ApplicationController
  def show
    @Article = Article.find(params[:id])
  end

  def index
    @Articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
end
