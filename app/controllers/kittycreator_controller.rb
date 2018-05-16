class KittycreatorController < ApplicationController
  def index
    @cats = Cat.all
    @cat = Cat.new

    @cat.user_id = current_user.id
    # render :index
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    # @cat = Cat.new(cat_params)
    # @cat.user_id = current_user.id
    # if @cat.save!
    #   redirect_to user_path(@cat.user_id)
    # else
    #   render :new
    # end
    @cat = Cat.new
  end

  def show
    @cats = Cat.all
    @cat = Cat.find(params[:id])
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :caption, :breed, :expression, :pose)
  end

end