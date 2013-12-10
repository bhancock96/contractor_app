class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_contractor
  
  def current_contractor
  	@current_contractor || Contractor.find(session[:contractor_id])
  end
end
