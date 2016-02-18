class UserSessionsController < ApplicationController
	def new
	end
	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(users_path, notice: 'Logged in succesfully :)')
		else
			flash.now.alert = "login failed."
			render action: :new
		end
	end
	def destroy
		logout
		redirect_to(:pages, notice: 'Goodbye!')
	end
end
