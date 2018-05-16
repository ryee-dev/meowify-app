class KittycreatorController < ApplicationController
  def index
    # @user = User.find(params[:id])
    # @cat = @user.cats.new(cat_params)
    # if @cat.save
    #   redirect_to user_path(@cat.user)
    # end
  end

  def create
    # @cat = Cat.new(cat_params)
    # if @cat.save
    #   redirect_to user_path(@cat.user)
    # end
    redirect_to kittycreator_index_path
  end

  # private
  # def cat_params
  #   params.require(:cat).permit(:name, :caption, :breed, :expression, :pose)
  # end
end