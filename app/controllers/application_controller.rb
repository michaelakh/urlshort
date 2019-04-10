class ApplicationController < ActionController::Base
  before_action :track_promo
  protect_from_forgery with: :exception
  
  protected
  
  def track_promo
    @promotion = 'test'
  end
end
