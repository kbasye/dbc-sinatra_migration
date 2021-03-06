class CategoriesController < ApplicationController




  def index
    @categories = Category.all
  end

  def new
     @category = Category.new
  end

  def create
    @category = Category.new params[:category]
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def show
    @category = Category.find_by_title(params[:title])
  end

end
