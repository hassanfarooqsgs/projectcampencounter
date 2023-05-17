class ApplicationController < ActionController::Base


    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :middle_name, :phone_number, :country])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:tos_agreement])
    devise_parameter_sanitizer.permit(:account_update, keys: [:tos_agreement])

  end


end
