class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
  before_action :set_new_cocktail, only: [:index, :new]

  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new; end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      @cocktails = Cocktail.all
      render :index
    end
  end

  def edit; end

  def update
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end

  def set_new_cocktail
    @cocktail = Cocktail.new
  end
end
