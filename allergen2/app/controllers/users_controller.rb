class UsersController < ApplicationController

    before_action :user_instance, only: [:show, :edit, :update, :destroy]


    def index

    end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update


    end

    def destroy

    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end

    def user_instance
        @user = User.find(params[:id])
    end


end
