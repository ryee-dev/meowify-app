class CatsController < ApplicationController
  # before_action :set_cat

  def index
    @cats = Cat.all
  end

  def new
    @cats = Cat.all
    @cat = Cat.new
    @user_condo_id = user_condo.id


    render :new
  end

  def create
    @cat = @condo.cats.build(cat_params)
    @cat.condo_id = current_condo.id
    if @cat.save
      flash[:success] = "Cat created"
      redirect_to :back
    else
      flash[:alert] = "Something went wrong"
      render root_path
    end
  end

  def show
    @user = current_user
    render :show
  end

  def destroy
    @cat = @condo.cats.find(params[:id])
    @cat.destroy
    flash[:success] = "Cat removed"
    redirect_to root_path
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :caption, :breed, :expression, :pose)
  end

  def set_condo
    @condo = Condo.find(params[:condo_id])
  end
end
