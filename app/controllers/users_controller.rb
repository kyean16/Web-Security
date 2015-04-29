class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
       flash[:success] = "Welcome to the Sample App!"
       redirect_to @user
    else
       flash[:danger] = "Failure to sign up, please try again"
       render 'new'
       end
   end

  	private
	   def user_params
     		params.require(:user).permit(:name, :email, :password, :password_confirmation)
#this method only permits the name, email, password and password confirmation #attributes to pass. It raises an error if the :user attribute is missing.
   		end
end
