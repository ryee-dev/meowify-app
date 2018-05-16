class KittycreatorController < ApplicationController
  def index
    @cats = Cat.all
    @cat = Cat.new

    @cat.user_id = current_user.id
    render :index
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new
    if @cat.save
      redirect_to root_path
    end
  end

  def show
    @cats = Cat.all
    @cat = Cat.find(params[:id])
  end

end