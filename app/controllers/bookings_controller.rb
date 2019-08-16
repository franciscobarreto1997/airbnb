class BookingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  before_action :set_flat, only: [:show, :destroy]

  def show
    
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to flats_path
    else
      puts @booking.errors.messages
    end
  end

  def destroy
    if @booking.destroy
      redirect_to bookings_path, notice: "Booking was sucessfulyl destroyed"
    else
      puts @booking.errors.messages
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

