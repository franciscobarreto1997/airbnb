class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @category = policy_scope(Category).where(name: params[:query])
      @flats = Flat.where(category_id: @category.ids)

      @markers = @flats.map do |flat|
        {
          lng: flat.longitude,
          lat: flat.latitude
        }
      end
    else
      @categories = Category.all
      @flats = Flat.all

      @markers = @flats.map do |flat|
        {
          lng: flat.longitude,
          lat: flat.latitude
        }
      end
    end
  end

  def show
  end
end
