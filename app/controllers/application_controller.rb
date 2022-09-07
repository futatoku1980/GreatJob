class ApplicationController < ActionController::Base

  #skip_before_action :authenticate_user!, only: %i[new], if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
 

  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:subdomain, :enployee_code, :password, :password_confirmation) }
    #devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:subdomain, :enployee_code, :password, :remember_me) }
  end

end

