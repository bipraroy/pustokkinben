class UsersController < ApplicationController
	def loggin
		@user = User.new		
	end
	def new_loggin
		#New login form
		@user = User.new
	end
end
