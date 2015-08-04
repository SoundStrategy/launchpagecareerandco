class UsersController < ApplicationController
 protect_from_forgery 
 
  def index
  end
   
   
    def show
   
    end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      puts "user saved", @user
      flash[:success] = "Welcome to the Sample App!"
     
    else
      render 'new'
    end
  end
  
  

    def user_params
      params.require(:user).permit(:fname, :lname, :email, :role)
    end
    
end
