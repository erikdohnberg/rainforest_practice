class UsersController < ApplicationController
  # GET /users/new
	def new
		@user = User.new
	end

  # POST /users
	def create
		@user = User.new(params[:user])
		if @user.valid?
			@user.save!
			redirect_to products_path, notice: "User created successfully"
		else
			render action: :new
		end
	end
end
