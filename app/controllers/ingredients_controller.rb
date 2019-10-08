class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.ingredients.create(ingredient_params)
    redirect_to edit_recipe_path(@recipe)
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :unit_of_measure, :quantity)
  end

end
