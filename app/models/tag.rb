# == Schema Information
# Schema version: 20110101015511
#
# Table name: tags
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  display_name :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Tag < ActiveRecord::Base
has_many :relationships
has_many :products, :through=>:relationships

end
