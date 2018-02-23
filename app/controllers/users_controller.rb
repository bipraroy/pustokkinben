class UsersController < ApplicationController
	def loggin
		@users = User.all
		puts @users.inspect
		@user = User.find_by(username: params[:username])
		if @user.present?
			redirect_to dashboard_index_path
		else
			render 'new_loggin'
		end		
	end
	def new_loggin
		#New login form
		@user = User.new
	end
	def new_admin
		@user = User.new
	end
	def create_admin
		@user = User.new(user_param)
		if @user.save
			render 'new_loggin'
		else
			render 'new_admin'
		end
	end
	private
	def user_param
		params.require(:user).permit(:username,:password)
	end
end
