class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@users = User.new
	end
	
	def create
		user = User.where(email_address: params[:session][:email_address])
		#where returns an array

		if user.first
			# does the user exist at all?
			if user.first.authenticate(params[:session][:password])
				#Successfully authenticated!
			else
				flash[:error] = "Incorrect password"
			end
		else
			flash[:error] = "No user found!"
			redirect_to :new_session
		end
	end
	
private

	def user_params
		params.require(:user).permit(:name, :email_address, :password)
	end

end