class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  private
    def recipe_params
      params.require(:user).permit(:name, :ingredient1, :ingredient2, :ingredient3,
      :ingredient4, :ingredient5, :ingredient6, :ingredient7, :ingredient8, :ingredient9,
      :ingredient10)
    end

end
