class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    respond_to do |format|
      format.html
      format.json { render :json => @articles }
    end
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      respond_to do | format |
        format.html do
          flash[:success] = "Article was saved successful"
          redirect_to @article  
        end
        format.json { render :json => {'succes' => true, 'id' => @article.id, 'des' => @article.description }}  
      end
      
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    respond_to do | format |
      format.html
      format.json { render :json => @article }
    end
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
