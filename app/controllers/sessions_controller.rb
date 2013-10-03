class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:email], params[:password], params[:remember_me])
  	if user
    	redirect_back_or_to root_url, :notice => "Logged in!"
  	else
  	  flash.now.alert = "Email or password was Invalid"
 	   render :new	
  	end
  end
# user = User.find_by(email: params[:session][:email].downcase)
#     if user && user.authenticate(params[:session][:password])
#       # Sign the user in and redirect to the user's show page.
#     else
#       flash[:error] = 'Invalid email/password combination' # Not quite right!
#       render 'new'
#     end
#   end

  # def create
  #   respond_to do |format|
  #     if @user = login(params[:email],params[:password])
  #       format.html { redirect_back_or_to(projects_path, :notice => 'Login successful.') }
  #     else
  #       format.html { flash.now[:alert] = "Login failed. Shit's Invalid"; render :action => "new" }
  #     end
  #   end
  # end



  def destroy
  	logout
  	redirect_to root_path, :notice => "Bye Logged out!"
  end
end
