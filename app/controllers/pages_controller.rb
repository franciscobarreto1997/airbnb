class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  helper ContentHelper
  def home
    @flats = Flat.all
  end
end
