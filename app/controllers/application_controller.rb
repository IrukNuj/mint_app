class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [ :username, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image])
  end

end

#before_filter :configure_permitted_parameters, if: :devise_controller?

#protected

#def configure_permitted_parameters
  #strong parametersを設定し、usernameを許可
#  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation) }
#end

#  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
