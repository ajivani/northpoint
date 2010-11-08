class Request < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :company_name, :customer_name, :phone_number, :quote_details, :presence=>true
  validates :email, :presence=>true, :format => {:with=> email_regex}
end
