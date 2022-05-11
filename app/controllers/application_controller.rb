class ApplicationController < ActionController::Base
  before_action :store_current_location, if: :storable_location?
  before_action :authenticate_user!

  private

  def storable_location?
    !devise_controller?
  end

  def store_current_location
    store_location_for(:user, request.url)
  end

  def after_sign_in_path_for(resource)
    store_location_for(resource) || root_path
  end
end
