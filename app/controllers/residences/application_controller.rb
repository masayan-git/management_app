class Residences::ApplicationController < ActionController::Base
  layout 'residences/application'
  before_action :authenticate_residence!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :room_num, :phone_namber])
  end
end