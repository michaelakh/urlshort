class ApplicationController < ActionController::Base
  before_action :set_meta
  protect_from_forgery with: :exception
  
  protected
  
  def set_meta
    @meta = {}
    @meta[:stripe_pk] = Rails.application.secrets.stripe_public_key
  end
end
