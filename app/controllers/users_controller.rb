class UsersController < ApplicationController
  
  def new
    #signup form
  end
  
  def create
    #post to create new user
   # @user = User.create(user_params)
    

    if user_params[:password] != user_params[:password_confirmation]
      redirect_to users_new_path
    else
      @user = User.create(user_params)
      session[:user_id] = @user.id
    end

    #redirect_to 
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end