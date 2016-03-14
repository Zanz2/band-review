class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include PublicActivity::StoreController 
  protect_from_forgery with: :exception
  hide_action :current_user
  
  def after_sign_in_path_for(resource_or_scope)
    Log.create(:user => current_user.email, :action => "Login")
    root_path
  end
  
  def after_sign_up_path_for(resource_or_scope)
    Log.create(:user => current_user.email, :action => "Register")
    root_path
  end
  
  
end

