class ApplicationController < ActionController::Base
  before_action :set_locale
  helper_method :new_locale # Ceci rend la méthode accessible dans les vues comme un helper

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end

  def switch_language
    session[:locale] = session[:locale] == 'fr' ? 'en' : 'fr'
    redirect_to request.referer || root_url
  end

  def new_locale
    I18n.locale == :fr ? 'en' : 'fr'
  end

  helper_method :welcomepage?

  def welcomepage?
    controller_name == 'pages' && action_name == 'welcome'
  end
end
