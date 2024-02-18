class ApplicationController < ActionController::Base
    before_action :set_locale

    def set_locale
      I18n.locale = session[:locale] || I18n.default_locale
    end

    def switch_language
      session[:locale] = session[:locale] == 'fr' ? 'en' : 'fr'
      redirect_to request.referer || root_url
    end
end
