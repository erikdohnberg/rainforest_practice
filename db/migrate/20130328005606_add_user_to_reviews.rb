class AddUserToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :user, :integer
  end
end
