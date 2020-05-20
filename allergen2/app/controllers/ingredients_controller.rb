class IngredientsController < ApplicationController

    before_action :ingredient_instance, only: [:show, :edit, :update, :destroy]


    def index

    end

    def show

    end

    def new
        @ingredient = Ingredient.new
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

    def ingredient_params(*args)
        params.require(:ingredient).permit(*args)
    end

    def ingredient_instance
        @ingredient = Ingredient.find(params[:id])
    end

end
