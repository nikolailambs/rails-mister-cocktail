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
   @cocktail = Cocktail.find(params["id"])
   @cocktail.destroy
   redirect_to cocktails_path
 end

 private

 def cocktail_params
  params.require(:cocktail).permit(:name, :photo, :photo_cache, doses_attributes: [:description, :ingredient_id])
end

end
