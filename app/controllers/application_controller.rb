class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? 
  protect_from_forgery with: :exception 

	def after_sign_in_path_for(resource)
    case resource
    when User
      root_path
    when Admin
      admintop_path
    end
  end
  def after_sign_up_path_for(resource)
    case resource
    when User
    	root_path
    when Admin
    	admintop_path
    end

  end
    protected 
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name]) 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name])
  end 
end

