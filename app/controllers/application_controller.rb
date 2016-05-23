require "application_responder"

class ApplicationController < ActionController::Base

	after_filter :cors_set_access_control_headers

	def cors_set_access_control_headers
	  headers['Access-Control-Allow-Origin'] = '*'
	  headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
	  headers['Access-Control-Allow-Headers'] = '*'
	  headers['Access-Control-Request-Method'] = '*'
	  headers['Access-Control-Max-Age'] = "1728000"
	end

	  self.responder = ApplicationResponder
	  respond_to :html

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
	protect_from_forgery with: :null_session
	# protect_from_forgery
	skip_before_action :verify_authenticity_token, only: [:create]

end