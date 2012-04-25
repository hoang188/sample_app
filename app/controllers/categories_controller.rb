class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = "Category was saved sucessful"
      redirect_to @category
    else
      flash[:success] = "An error occurred";
      render 'new'
    end
  end
  
  def show
    @category = Category.find(params[:id])
  end
end
