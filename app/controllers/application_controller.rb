class ApplicationController < ActionController::Base
  protect_from_forgery
  #include SessionsHelper
  USERNAME="200120482"
  PASSWORD="29156"
  
  if RAILS_ENV['production']
    before_filter :authenticate_test, :only=>[:create,:destroy,:edit,:new]
  end
  
  private

  def authenticate_test
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name==USERNAME && password=PASSWORD
    end
  end

end
