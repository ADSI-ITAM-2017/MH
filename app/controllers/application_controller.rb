class ApplicationController < ActionController::Base
#Cambié lo de arriba por
#class ApplicationController < ActionController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include SessionsHelper
end
