class ProceduresController < ApplicationController

def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.procedures.create(procedure_params)
    redirect_to edit_recipe_path(@recipe)
  end

  private
  def procedure_params
    params.require(:procedure).permit(:step, :description)
  end
end
