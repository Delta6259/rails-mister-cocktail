class DosesController < ApplicationController
  def index
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy
    redirect_to cocktail_path(dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
