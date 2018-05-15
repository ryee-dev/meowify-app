class MeowloungeController < ApplicationController
  def index
    # @cat = Cat.find(params[:id])

    @users = User.all
    @cats = Cat.all

  end
end