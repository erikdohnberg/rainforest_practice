class FixColumnName < ActiveRecord::Migration
	def change
		rename_column :reviews, :user, :user_id
	end
end
