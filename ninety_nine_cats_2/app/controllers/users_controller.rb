class UsersController < ApplicationController
    def new
        render :new
    end

    def create 
        @user = User.new(user_params)
        if user.save
            session[:session_token] = @user.session_token
    end

    def user_params
        params.require(:user).permit(:user_name, :password)
    end


end