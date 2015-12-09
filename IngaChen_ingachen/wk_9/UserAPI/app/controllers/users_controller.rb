class UsersController < ApplicationController
	before_action :authenticate

	def index
		render :json => User.all, status: 200
	end

	def create
		user = User.create(user_params)

		if user.valid?
			render :nothing => true, status: 201
		else
			render :nothing => true, status: 400
		end
	end

	def show
		render :json => User.find(params[:id]), status: 200
	end

private

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password)
	end

end
