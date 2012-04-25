class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "Article was saved successful"
      redirect_to @article
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:success] = "Article was saved successful"
      redirect_to @article
    else
      render 'edit'
    end
  end
end
