class Product < ActiveRecord::Base
  attr_accessible :discription, :name, :price_in_cents
end
