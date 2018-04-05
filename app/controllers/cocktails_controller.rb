class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new

  end

  def create
  end

  private
  def cocktail_params
    params.require(:cocktails).permit(:name)
  end
end
