# == Schema Information
# Schema version: 20110101015511
#
# Table name: requests
#
#  id                           :integer         not null, primary key
#  current_customer             :string(255)
#  company_name                 :string(255)
#  customer_name                :string(255)
#  job_title                    :string(255)
#  phone_number                 :string(255)
#  email                        :string(255)
#  city                         :string(255)
#  province_or_state            :string(255)
#  quote_details                :text
#  estimated_quantity_per_order :text
#  estimated_quantity_per_annum :text
#  created_at                   :datetime
#  updated_at                   :datetime
#

class Request < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :company_name, :customer_name, :phone_number, :quote_details, :presence=>true
  validates :email, :presence=>true, :format => {:with=> email_regex}
end
