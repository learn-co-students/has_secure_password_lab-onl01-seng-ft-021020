class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user.nil? || @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to homepage_path(@user)
        else
            redirect_to :login
        end
    end

    def destroy
        session.delete :name if !session[:name].nil?
        redirect_to '/login'
      end
end
