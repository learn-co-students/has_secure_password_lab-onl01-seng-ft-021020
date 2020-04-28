class UsersController < ApplicationController

    def new
        @user = User.new
    end
    
    def create
       #byebug
       @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            #byebug
            redirect_to homepage_path(@user)
        else
            redirect_to new_user_path
        end
    end

    def show 
        @user = User.find_by(id: session[:user_id])
        redirect_to new_user_path unless @user 
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
