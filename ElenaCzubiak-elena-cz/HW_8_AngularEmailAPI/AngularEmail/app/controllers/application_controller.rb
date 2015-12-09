class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :null_session

private

    def authenticate
        authenticate_or_request_with_http_token do |token, options|
            @auth_user = User.find_by(auth_token: token)
        end
    end  
  
  
end
