class Request < ActiveRecord::Base
    validates :email, :presence=>true
end
