class DosesController < ApplicationController


  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params["id"])
  end

  def new
    @cocktail = Cocktail.find(params["cocktail_id"])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params["cocktail_id"])
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.find(params["id"])
    @dose.delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
