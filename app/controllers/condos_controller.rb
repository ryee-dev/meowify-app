class CondosController < ApplicationController
  def index
    @condos = Condo.all

  end

  private
  def condo_params
    params.require(:condo).permit(:name, :capacity)
  end

  def set_condo
    condo.user_id = current_user.id
    @condo = Condo.find(params[condo.user_id])
  end
end
