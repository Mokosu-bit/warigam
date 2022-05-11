class ApplicationController < ActionController::Base
  before_action :store_current_location, unless::devise_controller?
  before_action :authenticate_user!


  def after_sign_in_path_for(resource)
    
  end

  private

  def store_current_location
    store_location_for(:user, request.url)
  end
end
