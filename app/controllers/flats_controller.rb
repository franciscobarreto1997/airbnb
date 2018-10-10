class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @category = Category.where(id: @flat.category_id).first
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def flats_params
    params.require(:flat).permit(:title, :description, :price, :category_id)
  end
end
