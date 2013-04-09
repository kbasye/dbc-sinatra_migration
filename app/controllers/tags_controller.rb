class  TagsController < ApplicationController

  def index
    @tag = Tag.all
  end

  def new
     @tag = Tag.new
  end

  def create
    @tag = Tag.new params[:tag]
    if @tag.save
      redirect_to @tag
    else
      render 'new'
    end
  end

  def show
    # raise params.inspect
    @tag = Tag.find_by_name(params[:name])
  end

end
