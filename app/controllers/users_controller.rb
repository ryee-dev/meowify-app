class UsersController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @user = current_user
    @cats = Cat.all
    #     # @cats = @user.cats
    #     #
    #     # @user = current_user
    render :show
  end

end