class UsersController < ApplicationController
  def index

  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(params.require(:user).permit([:email, :password_digest, :password_confirmation]))

  end
end
