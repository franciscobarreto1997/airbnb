class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
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
      @flat.home_type_id = 7
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
    @flat = Flat.find(params[:id])

    # redirect_to flat_path(@flat)
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price, :address,
    :acommodates, :home_type_id, :room_type_id, :category_id, :photo)
  end
end
