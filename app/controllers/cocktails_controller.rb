class CocktailsController < ApplicationController
 
  def index
    @cocktails = Cocktail.all.order(created_at: :desc)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :picture, :upload)
  end

end
