class UsersController < ApplicationController

before_action :logged_in_user, only: [:edit, :update]
before_action :correct_user, only: [:edit, :update]
before_action :logged_in_user, only: [:index, :edit, :update]
before_action :admin_user,only: :destroy

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


  def logged_in_user
    unless logged_in?   #if the user is logged in, they are allowed to proceed
      flash[:danger] = "Please log in"  #otherwise, redirect them to the login 
      redirect_to login_url      #page and ask them to log in
    end
  end

  def correct_user
    @user = User.find(params[:id])  #retrieve the id of the user
    redirect_to(root_url) unless @user == current_user  #if it is the id of the #current_user, let them in, otherwise, redirect them to the root url
  end

  def index
    @users = User.all
  end


  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.reads.all
    @read = Read.new #Add Read
    @fact = randomFunFact()
    @arr = [0, 1, 2, 3] #Number of options for stats
  end

  def destroy     
    User.find(params[:id]).destroy     
    flash[:success] = "User deleted"     
    redirect_to users_url   
  end

  def recommend
    bookGenre
    bookAuthor
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      flash.now[:danger] = 'Please try again…'
      render 'edit'
    end
  end


  def create
    @user = User.new(user_params)
    if @user.save
       flash[:success] = "Welcome to the Sample App!"
       log_in @user 
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
