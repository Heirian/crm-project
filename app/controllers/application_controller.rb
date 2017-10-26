# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :default_url_options
  layout :layout_by_resource

  private

  def set_locale
    I18n.locale = params[:locale] || current_user.try(:locale) || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  protected

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
