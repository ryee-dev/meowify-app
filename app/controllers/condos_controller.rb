class CondosController < ApplicationController
  def index
    @user = current_user
    @condo.user_id = @user
    render :index
  end

  def new

  end

  def edit
    # @condo = Condo.new
    # @condo.user_id = current_user.id
  end

  def show
    @user = current_user
    @condo.user_id = current_user.id
    render :show
  end
end