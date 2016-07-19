class User < ActiveRecord::Base

	has_secure_password   # is a rails convention, works with the password_digest column. which will ..
						  # .. need to be created in our user table

  	validates :username, presence: true
 	validates :email, presence: true, uniqueness: true

 	after_initialize :set_default_role, if: :new_record? # calls new_record? on instance that is initialized

 	def set_default_role
 		unless self.set_default_role
 			self.role = :user  # sets all new users as users, unless specified as an admin
 		end
 	end

 	


end
