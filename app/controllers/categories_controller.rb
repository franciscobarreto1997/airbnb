class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @categories = Category.where(name: params[:query])
      @flats = Flat.where(category_id: @categories.ids)
    else
      @categories = Category.all
      @flats = Flat.all
    end
  end

  def show
  end
end
