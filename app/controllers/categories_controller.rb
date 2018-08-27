class CategoriesController < ApplicationController
  def index

  end

  def show
    if params[:query].present?
      @categories = Category.where(name: params[:query])
      @flats = Flat.where(category_id: @categories.ids)
    else
      @categories = Category.all
    end
  end
end
