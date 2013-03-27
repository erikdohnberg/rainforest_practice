class Review < ActiveRecord::Base
  attr_accessible :comment

  validates :comment, :presence => true
end
