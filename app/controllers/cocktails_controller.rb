class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :update]
    def index
      @cocktails = Cocktail.all
    end

    def create
      @cocktail = Cocktail.new(cocktail_params)
       if @cocktail.save
        redirect_to cocktail_path(@cocktail)
       else
        render :new
      end
    end

    def new
      @cocktail = Cocktail.new
    end

    def show
    end

    def update
      if @cocktail.update(cocktail_params)
        redirect_to cocktail_path(@cocktail)
       else
        render :new
      end
    end

    private

    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
      params.require(:cocktail).permit(:id, :name, :photo, :photo_cache)
    end
end
