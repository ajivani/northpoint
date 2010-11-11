class Product < ActiveRecord::Base
  validates :name, :presence=>true
  validates :description, :presence=>true
  validates :sku, :presence=>true
  validates :image_url, :presence=>true
  #added so that it's ordered in
  default_scope :order => 'products.sku DESC'

end
