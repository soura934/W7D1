class UsersController < ApplicationController
    def new
        render :new
    end

    def create 
        @user = User.new(user_params).

    end
end