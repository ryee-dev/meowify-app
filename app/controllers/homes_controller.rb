class HomesController < ApplicationController
  def index
    # @user = User.find(params[:user_id])
  end

  def show

    redirect_to :index
  end
end