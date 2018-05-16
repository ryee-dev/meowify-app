class UsersController < ApplicationController

  def index

  end

  def show
    # @user = current_user
    # @cats = @user.cats
    #
    # @user = current_user
    render :show
  end

end