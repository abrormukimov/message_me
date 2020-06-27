class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "You have successfully created an account"
			redirect_to users_path(@user)
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])	
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update(user_params)
			flash[:success] = "You have successfully updated your account!"
			redirect_to messages_path
		else
			render 'edit'
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password_digest)
		
	end
end
