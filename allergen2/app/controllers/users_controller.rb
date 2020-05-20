class UsersController < ApplicationController

    before_action :user_instance, only: [:show, :edit, :update, :destroy]


    def index
        @users = User.all
    end

    def show

    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params(:name))
        redirect_to user_path(user)
    end

    def edit

    end

    def update


    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

    def user_instance
        @user = User.find(params[:id])
    end


end
