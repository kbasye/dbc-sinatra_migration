class ArticlesController < ApplicationController



  def index
    @category = Category.find_by_title(params[:category_id])
  end

  def new
     @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    unless @article = Article.find_by_url(params[:id])
      @article = Article.find_by_url(params[:title])
    end

    # @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
  end


end
