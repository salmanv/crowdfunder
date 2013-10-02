class UsersController < ApplicationController
  	# def index
  	# 		@users = User.all 
  	# 	end

#   		def show 
#   			@user = User.find(params[:user])
# end
  	def new
  		@user = User.new 
  	end

  	def create
  		@user = User.new(params[:user])

  		if @user.save 
  			auto_login(@user)
  			redirect_to root_path, :notice => "Account created"
  		else 
  			# redirect_to new_user_path
  			render :new
  			#, :alert => "Try again"
  		end
	end


end

