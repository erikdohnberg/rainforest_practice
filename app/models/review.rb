class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  attr_accessible :comment

  validates :comment, :presence => true
end
