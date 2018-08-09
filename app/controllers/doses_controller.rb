class DosesController < ApplicationController
  # def index
  #   @doses = Dose.all
  # end

  # def show
  #   @dose = Dose.find(params[:id])
  # end

  def new   # GET "cocktails/42/doses/new"
    @dose = Dose.new
    #get cocktail id from params
    @cocktail = Cocktail.find(params[:cocktail_id])
    #get ingredients and send them as instance variable
    @ingredients = Ingredient.all

  end

  def create  #POST "cocktails/42/doses"
    #to create a new dose these are what i need:
    #i need an ingredient_id from db
    #i need a cocktail_id from params
    #i need a description from the user
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
