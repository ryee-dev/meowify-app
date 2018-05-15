class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @cats = @user.cats

    # @user = current_user
    render :show
  end

end