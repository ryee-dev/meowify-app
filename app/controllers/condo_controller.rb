class CondoController < ApplicationController
  def index
    @user = current_user
    # redirect_to user_condo_index_path(@user)
    @condo.user_id = @user
    render :index
    # @cats = @user.cats
  end

  def new

  end

  def edit
    # @condos = Condo.all
    @condo = Condo.new
    @condo.user_id = current_user.id
  end

  def show
    @user = current_user
    @condo.user_id = current_user.id
    render :show
  end
end