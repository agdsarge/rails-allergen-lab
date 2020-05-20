class RecipesController < ApplicationController

    before_action :recipe_instance, only: [:show, :edit, :update, :destroy]

    def index
        @recipes = Recipe.all
    end

    def show

    end

    def new
        @recipe = Recipe.new
        
    end

    def create
        recipe = Recipe.create(recipe_params(:name, :user_id))
        redirect_to recipe_path(recipe)
    end

    def edit

    end

    def update


    end

    def destroy

    end

    private

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end

    def recipe_instance
        @recipe = Recipe.find(params[:id])
    end

end
