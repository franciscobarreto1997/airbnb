class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = policy_scope(Flat)
    if params[:query].present?
      @flats = Flat.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end

  def show
    @user = @flat.user
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user_id = current_user.id
    authorize @flat
    if @flat.save
      redirect_to flat_path(@flat), notice: "Flat was successfully created"
    else
      render :new
      puts @flat.errors.messages
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      puts @flat.errors.messages
    end
  end

  def destroy
    if @flat.destroy
      redirect_to flats_path, notice: "Flat was successfully destroyed"
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
    authorize @flat
  end
end
