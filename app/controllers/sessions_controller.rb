class SessionsController < ApplicationController
  def new
  	@user = User.new
  	#it is going by default to the session new.html.erb
  end

  def create

	@user = User.confirm(params[:user])
	

	 if @user
			login(@user)

			redirect_to "/users/#{@user.id}"
		else
			redirect_to login
	end 
end
  
	 
	
	
  def destroy
  	session[:user_id] = nil
  	redirect_to login_path
  end

end





