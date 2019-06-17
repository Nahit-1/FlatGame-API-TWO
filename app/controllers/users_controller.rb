class UsersController < ApplicationController

    def index 
        @user = User.all
        render json: User.all
    end 

    def show 
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else 
            render json: {error: 'User not found.'}, status: 404 
        end 
    end 
end