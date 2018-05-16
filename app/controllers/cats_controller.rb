class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @user = User.find(params[:user_id])
    @cat = @user.cats.new
    # @user = User.find(params[:id])
    # @user.cats
    # @cat = Cat.new
    render :new
  end
end