class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:landing, :random, :index, :show]

  def landing
  end

  def random
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.doses
    # take doses and associated to cocktail
    if @cocktail.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def destroy
   @cocktail.destroy
   redirect_to cocktails_path
 end

 private

 def set_cocktail
   @cocktail = Cocktail.find(params["id"])
 end

 def cocktail_params
  params.require(:cocktail).permit(:name, :photo, :photo_cache, doses_attributes: [:description, :ingredient_id])
end

end
