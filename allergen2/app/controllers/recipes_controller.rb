class RecipesController < ApplicationController

    before_action :recipe_instance, only: [:show, :edit, :update, :destroy]

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

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end

    def recipe_instance
        @recipe = Recipe.find(params[:id])
    end

end
