class ApplicationController < ActionController::Base
	include Pundit

  protect_from_forgery

	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	def idex
	end

	def user_not_authorized
	    flash[:alert] = "Unauthorized access"
	    redirect_to(request.referrer || root_path)
	end
end
