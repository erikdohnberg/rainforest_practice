class SessionsController < ApplicationController
  # GET us the login form
  def new
  end

  # POST a new session
	def create
		user = User.find_by_email(params[:email])
		if user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to products_path, :notice => "Logged In"
		else
			flash.now.alert = "Invalid email or password"
			render "new"
		end
	end

  # DELETE to end session
	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Logged Out"
	end
end
