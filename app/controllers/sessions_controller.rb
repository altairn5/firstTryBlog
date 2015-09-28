class SessionsController < ApplicationController
  def new
  	#it is going by default to the session new.html.erb
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user.authenticate(params[:password])

  		#login user
  		session[:user_id] = user.user_id

  		redirect_to user_path(user.user_id)
  	else
  		redirect_to new_user
  	end
  end

  def destroy

  	session[:user_id] = nil
  	redirect_to "login"

  end
end
