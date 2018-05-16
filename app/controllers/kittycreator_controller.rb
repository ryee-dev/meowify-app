class KittycreatorController < ApplicationController
  def index
    @cats = Cat.all
    @cat = Cat.new

    @cat.user_id = current_user.id
    render :index
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new
    if @cat.save
      redirect_to root_path
    end
    # current_user.cats.push(@cat)
    # if @cat.save!
    #   flash[:notice] = "Success"
    #   redirect_to user_path(current_user.id)
    # else
    #   render :new
    # end

    # @cat = Cat.new
  end

  def show
    @cats = Cat.all
    @cat = Cat.find(params[:id])
  end

end