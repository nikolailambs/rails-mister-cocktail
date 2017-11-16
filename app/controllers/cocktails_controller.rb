class CocktailsController < ApplicationController


  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params["id"])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to @cocktail
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end