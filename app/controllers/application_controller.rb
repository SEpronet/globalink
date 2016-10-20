class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected 
  def configure_permitted_parameters

<<<<<<< HEAD

  devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :avatar, :title, :education])
=======
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :avatar])
>>>>>>> akshat_dev

  end

  
end
