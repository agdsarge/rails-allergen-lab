class IngredientsController < ApplicationController

    before_action :ingredient_instance, only: [:show, :edit, :update, :destroy]


    def index
        @ingredients = Ingredient.all.sort {|a, b| b.users.length <=> a.users.length}
    end

    def show

    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        ing = Ingredient.create(ingredient_params(:name))
        redirect_to ingredient_path(ing)
    end

    def edit

    end

    def update


    end

    def destroy
        @ingredient.destroy
        redirect_to ingredients_path
    end

    private

    def ingredient_params(*args)
        params.require(:ingredient).permit(*args)
    end

    def ingredient_instance
        @ingredient = Ingredient.find(params[:id])
    end

end
