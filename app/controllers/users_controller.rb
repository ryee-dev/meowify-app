class UsersController < ApplicationController

  def show
    @user = current_user
    @cats = @user.cats
    render :show
  end

end