# == Schema Information
# Schema version: 20110208045004
#
# Table name: relationships
#
#  id         :integer         not null, primary key
#  product_id :integer
#  tag_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Relationship < ActiveRecord::Base
  belongs_to :product, :class_name=>"Product" #each relationship has a single product associated with it #relationship.product
  belongs_to :tag,     :class_name=>"Tag"      #each relationship also has a single tag associated with it. (just look at the table) #relationship.tags.tag

  validates :product_id, :presence => true
  validates :tag_id, :presence=>true
end
