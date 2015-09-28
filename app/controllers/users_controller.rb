class UsersController < ApplicationController
  def index

  end


  def new
  	@user = User.new
  end

  def create
  	@user = User.create(params.require(:user).permit([:email, :password_digest, :password_confirmation]))
  	redirect_to user_path(@user)
  end

  def show
  	@user =User.find(params[:id])
  	# binding.pry
  	
  end
end
