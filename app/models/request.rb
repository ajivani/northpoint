class Request < ActiveRecord::Base
    validates :email, :company_name, :customer_name, :phone_number, :quote_details, :presence=>true
end
