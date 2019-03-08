class ApplicationController < ActionController::Base
    # before_action :configure_permitted_parameters, if: devise_controller?
    
    before_action :set_i18n_locale_from_params
    protected

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :email])
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    #     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password])
    # end
    
    def set_i18n_locale_from_params
        if params[:locale]
            if I18n.available_locales.map(&:to_s).include?(params[:locale])
                I18n.locale = params[:locale]
            else
                flash.now[:notice] =
                    "#{params[:locale]} translation not available"
                logger.error flash.now[:notice]
            end
        end
    end

end
