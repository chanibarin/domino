class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale ||= params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    #return { locale: "" } unless params[:locale]
    { locale: I18n.locale }.merge options
  end
end
