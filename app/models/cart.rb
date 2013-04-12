class Cart < ActiveRecord::Base
  attr_accessible :cart_token, :product_id
  has_many :cart_records
end
