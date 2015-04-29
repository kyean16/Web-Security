module SessionsHelper

	def log_in(user)
   		session[:user_id] = user.id
   	end

   	def current_user
		@current_user ||=User.find_by(id:session[:user_id])
	end

	def logged_in?
		!current_user.nil?  #returns true if the current_user is not nil and false #otherwise
	end

	def log_out
   		session.delete(:user_id)
  		@current_user = nil
	end

end
