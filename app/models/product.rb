class Product < ActiveRecord::Base
  has_many :reviews
  attr_accessible :description, :name, :price_in_cents

  validates :name, :description, :price_in_cents, :presence => true
  validates :price_in_cents, :numericality => {:greater_than_or_equal_to => 0}

end
