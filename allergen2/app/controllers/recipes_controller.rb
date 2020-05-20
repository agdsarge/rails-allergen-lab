class RecipesController < ApplicationController

    before_action :recipe_instance, only: [:show, :edit, :update, :destroy]

    def index
        @recipes = Recipe.all.sort {|a, b| b.ingredients.count <=> a.ingredients.count}
    end

    def show

    end

    def new
        @recipe = Recipe.new

    end

    def create
        @recipe = Recipe.new(recipe_params(:name, :user_id))
        if @recipe.valid?
            @recipe.save
            params[:recipe][:ingredient_ids].each do |ing|
            unless ing.empty?
                RecipeIngredient.find_or_create_by(recipe_id: @recipe.id, ingredient_id: ing)
            end
            end
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
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
