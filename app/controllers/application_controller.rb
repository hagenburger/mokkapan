class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale, :except => [:detect_locale]

  def detect_locale
    locale = env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    locale = :de unless %(en de).include? locale
    locale = :de # TEMP
    redirect_to "/#{locale}"
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    # logger.debug "default_url_options is passed options: #{options.inspect}\n" 
    { :locale => I18n.locale }
  end
end
