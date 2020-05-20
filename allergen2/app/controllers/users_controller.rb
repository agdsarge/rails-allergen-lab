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
        @user = User.new(user_params(:name))
        if @user.valid?
            @user.save
            params[:user][:ingredient_ids].each do |ing|
                if !ing.empty?
                    UserIngredient.find_or_create_by(user_id: @user.id, ingredient_id: ing)
                end
            end
            redirect_to user_path(@user)
        else 
            render :new
        end
        
    end

    def edit

    end

    def update
        @user.update(user_params(:name))
        params[:user][:ingredient_ids].each do |ing|
            if !ing.empty?
                UserIngredient.find_or_create_by(user_id: @user.id, ingredient_id: ing)
            end
        end

        redirect_to user_path(@user)

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
