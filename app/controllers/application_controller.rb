class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :authenticate_user!, except: [ :index, :show ]

  before_filter :miniprofiler

private

	def miniprofiler
	  Rack::MiniProfiler.authorize_request 
	end
end
