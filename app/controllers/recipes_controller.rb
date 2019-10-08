class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
     @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid?
      redirect_to edit_recipe_path(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
     @recipe = Recipe.find(params[:id])
     @ingredient = Ingredient.new
     @procedure = Procedure.new
  end

  def add_ingredient

  end

  private   
  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
