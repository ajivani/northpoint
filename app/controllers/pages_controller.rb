class PagesController < ApplicationController
  def home
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  #need things for the 
  def request_quote
    @title = "Request a Quote"
  end

end
