# == Schema Information
# Schema version: 20110101015511
#
# Table name: products
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  image_url   :string(255)
#  sku         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class Product < ActiveRecord::Base
  validates :name, :presence=>true
  validates :description, :presence=>true
  validates :sku, :presence=>true
  validates :image_url, :presence=>true
  #added so that it's ordered in
  default_scope :order => 'products.sku DESC'

end
