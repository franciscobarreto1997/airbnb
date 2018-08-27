class CategoriesController < ApplicationController
  def index

  end

  def show
    if params[:query].present?
      @categories = Category.where(name: params[:query])
    else
      @categories = Category.all
    end
  end
end
