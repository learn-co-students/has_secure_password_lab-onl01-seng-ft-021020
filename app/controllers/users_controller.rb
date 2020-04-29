class UsersController < ApplicationController

    def new 
    end 

    def create
        if User.create(user_params).valid?
            session[:user_id] = User.last.id
            redirect_to '/'
        else 
            redirect_to '/signup'
        end 
    end
    
    def welcome 
    end 

      private
     
      def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end

end
