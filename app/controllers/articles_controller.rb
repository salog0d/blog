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

<<<<<<< HEAD
  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article created successfully."
=======
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
>>>>>>> 5915444d24d21c59441e553da45559fc717f22f0
      redirect_to @article
    else
      render :new
    end
  end
<<<<<<< HEAD

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render "edit"
    end
  end
=======
>>>>>>> 5915444d24d21c59441e553da45559fc717f22f0
end
