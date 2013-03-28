class Review < ActiveRecord::Base
  belongs_to :product
  attr_accessible :comment

  validates :comment, :presence => true
end
