class UsersController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    # @user_condo_id = current_user.condo_id
    @user_condo_id = user_condo
    @user_name = current_user.username
    render :show
  end

end