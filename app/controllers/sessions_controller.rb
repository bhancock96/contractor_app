class SessionsController < ApplicationController
	def new
	end

	def create
		contractor = Contractor.find_by_email(params[:email])
  	if contractor && contractor.authenticate(params[:password])
    	session[:contractor_id] = contractor.id
    	redirect_to contractor_url(contractor)
  	else
    	flash[:notice] = "Invalid username or password."
    	render new_session_url
  	end
	end

	def destroy
		reset_session
    redirect_to new_session_url, :notice => "You've successfully logged out"
	end
end