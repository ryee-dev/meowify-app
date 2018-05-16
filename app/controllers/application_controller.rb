class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  

  # def after_sign_in_path_for(resource)
  #   request.env['omniauth.origin'] || stored_location_for(resource) || user_path
  # end

  # def after_sign_in_path_for(user)
  #   origin_path = session[:origin_path]
  #   clear_origin_path
  #   if origin_path.present?
  #     origin_path
  #   else
  #     params[:target].presence || user_path
  #   end
  # end
  #
  # private
  #
  # def authenticate_user!
  #   store_origin_path
  #   super
  # end
  #
  # def store_origin_path
  #   session[:origin_path] = request.fullpath
  # end
  #
  # def clear_origin_path
  #   session[:origin_path] = nil
  # end
end
