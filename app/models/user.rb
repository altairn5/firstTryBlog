class User < ActiveRecord::Base

	has_secure_password

	validates :email, uniqueness: true, presence: true
	validates :password_digest ,presence: true

	 # has_secure_password does not give us `::confirm`

	 def self.confirm(email_param, password_param)
	 	user = User.find_by_email(email_param)
	 	user.authenticate(password_param)
	 end


end
