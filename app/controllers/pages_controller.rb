class PagesController < ApplicationController
  def home
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def request_quote
    @title = "Request a Quote"
  end

end
