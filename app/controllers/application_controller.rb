class ApplicationController < ActionController::Base
	rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
private

  def after_sign_in_path_for(resource_or_scope)
  	
    user_pages_path
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  
end
