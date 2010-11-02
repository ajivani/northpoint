class Product < ActiveRecord::Base
  validates :name, :presence=>true
  validates :description, :presence=>true
  validates :sku, :presence=>true
  validates :image_url, :presence=>true
end
