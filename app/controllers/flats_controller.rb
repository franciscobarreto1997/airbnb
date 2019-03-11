class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
    @category = Category.where(id: @flat.category_id).first
    @user = @flat.user
  end

  def new
    @flat = Flat.new
  end

def create
    @flat = Flat.new(flat_params)
    @flat.user_id = current_user.id
    if flat_params[:home_type_id] == "Apartment"
      @flat.home_type_id = 5
    else
      @flat.home_type_id = 6
    end
    if flat_params[:room_type_id] == "Entire Home"
      @flat.room_type_id = 7
    elsif flat_params[:room_type_id] == "Private Room"
      @flat.room_type_id = 8
    else
      @flat.room_type_id = 9
    end
    if flat_params[:category_id] == "Modern"
      @flat.category_id = 24
    else
      puts "There is only 1 category how is this possible?!"
    end
    if @flat.save
      redirect_to flat_path(@flat)
    else
      puts @flat.errors.messages
    end
  end

  def edit
  end

  def update
    if flat_params[:home_type_id] == "Apartment"
      @flat.home_type_id = 5
    else
      @flat.home_type_id = 6
    end
    if flat_params[:room_type_id] == "Entire Home"
      @flat.room_type_id = 7
    elsif flat_params[:room_type_id] == "Private Room"
      @flat.room_type_id = 8
    else
      @flat.room_type_id = 9
    end
    if flat_params[:category_id] == "Modern"
      @flat.category_id = 24
    else
      puts "There is only 1 category how is this possible?!"
    end
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      puts @flat.errors.messages
      raise
    end
  end

  def destroy
    if @flat.destroy
      redirect_to flats_path
    else
      puts @flat.errors.messages
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price, :address,
    :acommodates, :home_type_id, :room_type_id, :category_id, :photo)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  # This method transforms the strings that we get in the form params into the integers (id's) that we
  # actually want
  # def make_those_forms_work(params)
  #   if params[:home_type_id] == "Apartment"
  #     @flat.home_type_id = 5
  #   else
  #     @flat.home_type_id = 6
  #   end
  #   if params[:room_type_id] == "Entire Home"
  #     @flat.home_type_id = 7
  #   elsif params[:room_type_id] == "Private Room"
  #     @flat.room_type_id = 8
  #   else
  #     @flat.room_type_id = 9
  #   end
  #   if params[:category_id] == "Modern"
  #     @flat.category_id = 24
  #   else
  #     puts "There is only 1 category how is this possible?!"
  #   end
  # end
end
