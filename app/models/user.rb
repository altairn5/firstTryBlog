class User < ActiveRecord::Base

	# has_many :
	# has_many :

	

	# validates :email, uniqueness: true, presence: true
	# validates :password_digest ,presence: true

	 # has_secure_password does not give us `::confirm`
	

  has_secure_password

  def self.confirm(params)
    user = User.find_by_email(params[:email])
    # user.try(:authenticate, params[:password])
  end
end